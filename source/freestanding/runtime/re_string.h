#ifndef RE_FREESTANDING_STRING_H
#define RE_FREESTANDING_STRING_H

/*  Freestanding string types — replaces std::string and std::string_view.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"
#include "re_mem.h"

namespace re {

/* ---- Helper: CRT-free strlen ---- */
inline constexpr ReUSize re_strlen(const char* s) {
    ReUSize n = 0;
    if (s) { while (s[n]) ++n; }
    return n;
}

/* ================================================================
   ReStringView  —  non-owning, immutable string view
   ================================================================ */
class ReStringView {
    const char* data_;
    ReUSize     size_;
public:
    static constexpr ReUSize npos = ~ReUSize(0);

    /* -- Construction -- */
    constexpr ReStringView() : data_(nullptr), size_(0) {}
    constexpr ReStringView(const char* s) : data_(s), size_(s ? re_strlen(s) : 0) {}
    constexpr ReStringView(const char* s, ReUSize len) : data_(s), size_(len) {}

    /* -- Access -- */
    constexpr const char* data()  const { return data_; }
    constexpr ReUSize     size()  const { return size_; }
    constexpr bool        empty() const { return size_ == 0; }
    constexpr char operator[](ReUSize i) const { return data_[i]; }

    /* -- Sub-views -- */
    constexpr ReStringView substr(ReUSize pos, ReUSize count = npos) const {
        if (pos > size_) pos = size_;
        ReUSize avail = size_ - pos;
        if (count > avail) count = avail;
        return ReStringView(data_ + pos, count);
    }

    constexpr void remove_prefix(ReUSize n) {
        if (n > size_) n = size_;
        data_ += n;
        size_ -= n;
    }

    /* -- Comparison -- */
    constexpr bool operator==(ReStringView o) const {
        if (size_ != o.size_) return false;
        for (ReUSize i = 0; i < size_; ++i)
            if (data_[i] != o.data_[i]) return false;
        return true;
    }
    constexpr bool operator!=(ReStringView o) const { return !(*this == o); }

    constexpr int compare(ReStringView o) const {
        ReUSize m = size_ < o.size_ ? size_ : o.size_;
        for (ReUSize i = 0; i < m; ++i) {
            int d = static_cast<int>(static_cast<unsigned char>(data_[i]))
                  - static_cast<int>(static_cast<unsigned char>(o.data_[i]));
            if (d != 0) return d;
        }
        if (size_ < o.size_) return -1;
        if (size_ > o.size_) return  1;
        return 0;
    }

    constexpr bool operator<(ReStringView o)  const { return compare(o) <  0; }
    constexpr bool operator>(ReStringView o)  const { return compare(o) >  0; }
    constexpr bool operator<=(ReStringView o) const { return compare(o) <= 0; }
    constexpr bool operator>=(ReStringView o) const { return compare(o) >= 0; }

    /* -- Search -- */
    constexpr ReUSize find(char c, ReUSize pos = 0) const {
        for (ReUSize i = pos; i < size_; ++i)
            if (data_[i] == c) return i;
        return npos;
    }

    constexpr ReUSize find(ReStringView s, ReUSize pos = 0) const {
        if (s.size_ == 0) return (pos <= size_) ? pos : npos;
        if (s.size_ > size_) return npos;
        ReUSize last = size_ - s.size_;
        for (ReUSize i = pos; i <= last; ++i) {
            bool ok = true;
            for (ReUSize j = 0; j < s.size_; ++j) {
                if (data_[i + j] != s.data_[j]) { ok = false; break; }
            }
            if (ok) return i;
        }
        return npos;
    }

    constexpr ReUSize rfind(char c, ReUSize pos = npos) const {
        if (size_ == 0) return npos;
        ReUSize start = (pos < size_) ? pos : size_ - 1;
        for (ReUSize i = start + 1; i > 0; --i)
            if (data_[i - 1] == c) return i - 1;
        return npos;
    }

    /* -- Element access -- */
    constexpr char front() const { return data_[0]; }

    /* -- Prefix matching -- */
    constexpr bool starts_with(ReStringView sv) const {
        if (sv.size_ > size_) return false;
        for (ReUSize i = 0; i < sv.size_; ++i)
            if (data_[i] != sv.data_[i]) return false;
        return true;
    }

    constexpr bool starts_with(char c) const {
        return size_ > 0 && data_[0] == c;
    }

    /* -- find_last_of -- */
    constexpr ReUSize find_last_of(char c, ReUSize pos = npos) const {
        return rfind(c, pos);
    }

    constexpr ReUSize find_last_of(ReStringView chars, ReUSize pos = npos) const {
        if (size_ == 0 || chars.size() == 0) return npos;
        ReUSize start = (pos < size_) ? pos : size_ - 1;
        for (ReUSize i = start + 1; i > 0; --i) {
            for (ReUSize j = 0; j < chars.size(); ++j)
                if (data_[i - 1] == chars[j]) return i - 1;
        }
        return npos;
    }

    /* -- Iteration (range-for) -- */
    constexpr const char* begin() const { return data_; }
    constexpr const char* end()   const { return data_ + size_; }
};

/* ================================================================
   ReString  —  owning, mutable string with SSO (22 chars inline)
   ================================================================ */
class ReString {
    /* SSO layout: 24 bytes total on x64.
       The last byte (s_[23]) serves as the mode discriminator:
         SSO  mode: s_[23] = SSO_MAX - size  (0..22, bit 7 clear)
         Heap mode: s_[23] = MSB of h_.cap   (bit 7 set via HEAP_FLAG) */
    static constexpr ReUSize SSO_MAX   = 22;
    static constexpr ReUSize HEAP_FLAG = ReUSize(1) << (sizeof(ReUSize) * 8 - 1);

    struct Heap { char* ptr; ReUSize len; ReUSize cap; };

    union {
        Heap h_;
        char s_[sizeof(Heap)];
    };

    static_assert(sizeof(Heap) == sizeof(char*) + sizeof(ReUSize) * 2,
                  "Heap layout must equal SSO buffer size");
    static_assert(sizeof(s_) >= SSO_MAX + 2,
                  "SSO buffer must hold SSO_MAX chars + null + tag");

    /* -- Private helpers -- */
    bool is_heap() const {
        return (static_cast<unsigned char>(s_[sizeof(s_) - 1]) & 0x80) != 0;
    }

    ReUSize sso_len() const {
        return SSO_MAX - static_cast<unsigned char>(s_[sizeof(s_) - 1]);
    }

    void set_sso_len(ReUSize n) {
        s_[sizeof(s_) - 1] = static_cast<char>(SSO_MAX - n);
        s_[n] = '\0';
    }

    void init_empty() {
        re_memset(s_, 0, sizeof(s_));
        s_[sizeof(s_) - 1] = static_cast<char>(SSO_MAX); /* size = 0 */
    }

    void grow_to(ReUSize new_cap) {
        ReUSize old_len  = size();
        const char* old_data = data();

        char* new_ptr;
        if (is_heap()) {
            ReUSize old_alloc = (h_.cap & ~HEAP_FLAG) + 1;
            new_ptr = static_cast<char*>(mem_realloc(h_.ptr, old_alloc, new_cap + 1));
        } else {
            new_ptr = static_cast<char*>(mem_alloc(new_cap + 1));
            re_memcpy(new_ptr, old_data, old_len + 1);
        }

        h_.ptr = new_ptr;
        h_.len = old_len;
        h_.cap = new_cap | HEAP_FLAG;
    }

    void assign_from(const char* src, ReUSize len) {
        if (len <= SSO_MAX) {
            if (len) re_memcpy(s_, src, len);
            set_sso_len(len);
        } else {
            h_.ptr = static_cast<char*>(mem_alloc(len + 1));
            re_memcpy(h_.ptr, src, len);
            h_.ptr[len] = '\0';
            h_.len = len;
            h_.cap = len | HEAP_FLAG;
        }
    }

public:
    /* -- Constructors -- */
    ReString() { init_empty(); }

    ReString(const char* s) {
        ReUSize len = re_strlen(s);
        assign_from(s, len);
    }

    ReString(const char* s, ReUSize len) {
        assign_from(s, len);
    }

    ReString(ReStringView sv) {
        assign_from(sv.data(), sv.size());
    }

    ReString(const ReString& other) {
        assign_from(other.data(), other.size());
    }

    ReString(ReString&& other) noexcept {
        re_memcpy(s_, other.s_, sizeof(s_));
        other.init_empty();
    }

    /* -- Assignment -- */
    ReString& operator=(const ReString& other) {
        if (this != &other) {
            if (is_heap()) mem_free(h_.ptr);
            assign_from(other.data(), other.size());
        }
        return *this;
    }

    ReString& operator=(ReString&& other) noexcept {
        if (this != &other) {
            if (is_heap()) mem_free(h_.ptr);
            re_memcpy(s_, other.s_, sizeof(s_));
            other.init_empty();
        }
        return *this;
    }

    /* -- Destructor -- */
    ~ReString() {
        if (is_heap()) mem_free(h_.ptr);
    }

    /* -- Access -- */
    const char* data()     const { return is_heap() ? h_.ptr : s_; }
    const char* c_str()    const { return data(); }
    ReUSize     size()     const { return is_heap() ? h_.len : sso_len(); }
    ReUSize     capacity() const { return is_heap() ? (h_.cap & ~HEAP_FLAG) : SSO_MAX; }
    bool        empty()    const { return size() == 0; }

    static constexpr ReUSize npos = ~ReUSize(0);

    char  operator[](ReUSize i) const { return data()[i]; }
    char& operator[](ReUSize i)       { return is_heap() ? h_.ptr[i] : s_[i]; }

    /* -- Capacity management -- */
    void reserve(ReUSize cap) {
        if (cap > capacity()) grow_to(cap);
    }

    void resize(ReUSize new_size, char fill = '\0') {
        ReUSize old_size = size();
        if (new_size > old_size) {
            reserve(new_size);
            char* p = is_heap() ? h_.ptr : s_;
            re_memset(p + old_size, fill, new_size - old_size);
        }
        if (is_heap()) {
            h_.len = new_size;
            h_.ptr[new_size] = '\0';
        } else {
            set_sso_len(new_size);
        }
    }

    void clear() {
        if (is_heap()) {
            h_.ptr[0] = '\0';
            h_.len = 0;
        } else {
            s_[0] = '\0';
            s_[sizeof(s_) - 1] = static_cast<char>(SSO_MAX);
        }
    }

    /* -- Mutation -- */
    void push_back(char c) {
        ReUSize len = size();
        if (len >= capacity()) {
            ReUSize new_cap = capacity() < 16 ? 32 : capacity() * 2;
            grow_to(new_cap);
        }
        if (is_heap()) {
            h_.ptr[len] = c;
            h_.ptr[len + 1] = '\0';
            h_.len = len + 1;
        } else {
            s_[len] = c;
            set_sso_len(len + 1);
        }
    }

    ReString& append(const char* s, ReUSize len) {
        if (len == 0) return *this;

        /* Handle possible self-reference (s points into our buffer) */
        const char* my_data = data();
        ReUSize my_size = size();
        bool self = (s >= my_data && s < my_data + my_size);
        ReUSize self_off = self ? static_cast<ReUSize>(s - my_data) : 0;

        ReUSize need = my_size + len;
        if (need > capacity()) {
            ReUSize nc = capacity() * 2;
            if (nc < need) nc = need;
            grow_to(nc);
            if (self) s = data() + self_off; /* buffer moved */
        }

        char* dst = is_heap() ? h_.ptr : s_;
        re_memcpy(dst + my_size, s, len);

        if (is_heap()) {
            h_.len = need;
            h_.ptr[need] = '\0';
        } else {
            set_sso_len(need);
        }
        return *this;
    }

    ReString& append(ReStringView sv)   { return append(sv.data(), sv.size()); }
    ReString& operator+=(ReStringView sv) { return append(sv); }
    ReString& operator+=(char c)         { push_back(c); return *this; }

    /* -- View / conversion -- */
    ReStringView view() const { return ReStringView(data(), size()); }
    operator ReStringView() const { return view(); }

    /* -- Substring and search -- */
    ReString substr(ReUSize pos, ReUSize count = npos) const {
        ReUSize len = size();
        if (pos > len) pos = len;
        ReUSize avail = len - pos;
        if (count > avail) count = avail;
        return ReString(data() + pos, count);
    }

    ReUSize find(char c, ReUSize pos = 0) const {
        return view().find(c, pos);
    }

    ReUSize find(ReStringView sv, ReUSize pos = 0) const {
        return view().find(sv, pos);
    }

    /* -- Element access -- */
    char  back() const  { return data()[size() - 1]; }
    char& back()        { return is_heap() ? h_.ptr[size() - 1] : s_[size() - 1]; }
    char  front() const { return data()[0]; }
    char& front()       { return is_heap() ? h_.ptr[0] : s_[0]; }

    /* -- Additional mutation -- */
    void pop_back() {
        ReUSize len = size();
        if (len == 0) return;
        if (is_heap()) {
            h_.len = len - 1;
            h_.ptr[len - 1] = '\0';
        } else {
            set_sso_len(len - 1);
        }
    }

    ReUSize find_last_of(char c) const {
        return view().rfind(c);
    }

    ReUSize find_last_of(ReStringView chars) const {
        return view().find_last_of(chars);
    }

    bool starts_with(ReStringView sv) const {
        return view().starts_with(sv);
    }

    ReString& replace(ReUSize pos, ReUSize count, ReStringView sv) {
        ReUSize len = size();
        if (pos > len) pos = len;
        if (count > len - pos) count = len - pos;
        ReUSize new_len = len - count + sv.size();
        if (new_len > capacity()) reserve(new_len);
        char* p = is_heap() ? h_.ptr : s_;
        /* Move the tail */
        if (sv.size() != count)
            re_memmove(p + pos + sv.size(), p + pos + count, len - pos - count);
        /* Copy replacement */
        if (sv.size()) re_memcpy(p + pos, sv.data(), sv.size());
        if (is_heap()) {
            h_.len = new_len;
            h_.ptr[new_len] = '\0';
        } else {
            set_sso_len(new_len);
        }
        return *this;
    }

    ReString& replace(ReUSize pos, ReUSize count, const char* s) {
        return replace(pos, count, ReStringView(s));
    }

    /* -- Comparison -- */
    bool operator==(const ReString& o) const { return view() == o.view(); }
    bool operator==(ReStringView sv)   const { return view() == sv; }
    bool operator==(const char* s)     const { return view() == ReStringView(s); }
    bool operator!=(const ReString& o) const { return !(view() == o.view()); }
    bool operator!=(ReStringView sv)   const { return !(view() == sv); }
    bool operator!=(const char* s)     const { return !(view() == ReStringView(s)); }

    bool operator<(const ReString& o) const { return view() < o.view(); }

    /* -- Concatenation (friend operators) -- */
    friend ReString operator+(const ReString& lhs, const ReString& rhs) {
        ReString result;
        result.reserve(lhs.size() + rhs.size());
        result.append(lhs.view());
        result.append(rhs.view());
        return result;
    }

    friend ReString operator+(const ReString& lhs, const char* rhs) {
        ReUSize rlen = re_strlen(rhs);
        ReString result;
        result.reserve(lhs.size() + rlen);
        result.append(lhs.view());
        result.append(rhs, rlen);
        return result;
    }

    friend ReString operator+(const char* lhs, const ReString& rhs) {
        ReUSize llen = re_strlen(lhs);
        ReString result;
        result.reserve(llen + rhs.size());
        result.append(lhs, llen);
        result.append(rhs.view());
        return result;
    }

    /* -- Iteration -- */
    const char* begin() const { return data(); }
    const char* end()   const { return data() + size(); }
};

/* Non-member convenience operators (C++20 rewrites member operator== to handle
   the reversed case, so only provide these for contexts that may still need them) */
inline bool operator==(const char* lhs, const ReString& rhs) { return rhs == lhs; }
inline bool operator!=(const char* lhs, const ReString& rhs) { return rhs != lhs; }

} /* namespace re */

#endif /* RE_FREESTANDING_STRING_H */
