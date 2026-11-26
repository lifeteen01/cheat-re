#ifndef RE_FREESTANDING_VECTOR_H
#define RE_FREESTANDING_VECTOR_H

/*  Freestanding dynamic array, fixed array, and span — replaces
 *  std::vector, std::array, and std::span.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"
#include "re_mem.h"

namespace re {

/* ================================================================
   ReVector<T>  —  owning dynamic array
   ================================================================ */
template<typename T>
class ReVector {
    T*      data_;
    ReUSize size_;
    ReUSize cap_;

    void destroy_range(T* first, ReUSize count) {
        if constexpr (!re_is_trivially_destructible_v<T>) {
            for (ReUSize i = 0; i < count; ++i)
                first[i].~T();
        }
    }

    void default_construct_range(T* first, ReUSize count) {
        if constexpr (re_is_trivially_copyable_v<T>) {
            re_memset(first, 0, count * sizeof(T));
        } else {
            for (ReUSize i = 0; i < count; ++i)
                new (first + i) T();
        }
    }

    void copy_construct_range(T* dst, const T* src, ReUSize count) {
        if constexpr (re_is_trivially_copyable_v<T>) {
            re_memcpy(dst, src, count * sizeof(T));
        } else {
            for (ReUSize i = 0; i < count; ++i)
                new (dst + i) T(src[i]);
        }
    }

    void move_construct_range(T* dst, T* src, ReUSize count) {
        if constexpr (re_is_trivially_copyable_v<T>) {
            re_memcpy(dst, src, count * sizeof(T));
        } else {
            for (ReUSize i = 0; i < count; ++i)
                new (dst + i) T(re_move(src[i]));
        }
    }

    void grow(ReUSize min_cap) {
        ReUSize new_cap = cap_ < 8 ? 8 : cap_ * 2;
        if (new_cap < min_cap) new_cap = min_cap;

        if constexpr (re_is_trivially_copyable_v<T>) {
            T* p = static_cast<T*>(mem_realloc(data_, cap_ * sizeof(T),
                                                new_cap * sizeof(T)));
            if (!p) return; /* OOM: keep existing data, caller may overrun */
            data_ = p;
        } else {
            T* p = static_cast<T*>(mem_alloc(new_cap * sizeof(T)));
            if (!p) return; /* OOM: keep existing data */
            move_construct_range(p, data_, size_);
            destroy_range(data_, size_);
            if (data_) mem_free(data_);
            data_ = p;
        }
        cap_ = new_cap;
    }

public:
    /* -- Constructors -- */
    ReVector() : data_(nullptr), size_(0), cap_(0) {}

    explicit ReVector(ReUSize count)
        : data_(nullptr), size_(0), cap_(0)
    {
        if (count) {
            data_ = static_cast<T*>(mem_alloc(count * sizeof(T)));
            cap_  = count;
            default_construct_range(data_, count);
            size_ = count;
        }
    }

    ReVector(ReUSize count, const T& value)
        : data_(nullptr), size_(0), cap_(0)
    {
        if (count) {
            data_ = static_cast<T*>(mem_alloc(count * sizeof(T)));
            cap_  = count;
            for (ReUSize i = 0; i < count; ++i)
                new (data_ + i) T(value);
            size_ = count;
        }
    }

    ReVector(const ReVector& o)
        : data_(nullptr), size_(0), cap_(0)
    {
        if (o.size_) {
            data_ = static_cast<T*>(mem_alloc(o.size_ * sizeof(T)));
            cap_  = o.size_;
            copy_construct_range(data_, o.data_, o.size_);
            size_ = o.size_;
        }
    }

    ReVector(ReVector&& o) noexcept
        : data_(o.data_), size_(o.size_), cap_(o.cap_)
    {
        o.data_ = nullptr;
        o.size_ = 0;
        o.cap_  = 0;
    }

    ReVector(std::initializer_list<T> init)
        : data_(nullptr), size_(0), cap_(0)
    {
        if (init.size()) {
            data_ = static_cast<T*>(mem_alloc(init.size() * sizeof(T)));
            cap_  = init.size();
            const T* src = init.begin();
            for (ReUSize i = 0; i < init.size(); ++i)
                new (data_ + i) T(src[i]);
            size_ = init.size();
        }
    }

    /* Range constructor: construct from iterator pair.
       SFINAE guard excludes integral types so ReVector(5, val) goes to the count ctor. */
    template<typename It, typename = re_enable_if_t<!re_is_integral_v<It>>>
    ReVector(It first, It last)
        : data_(nullptr), size_(0), cap_(0)
    {
        for (It it = first; it != last; ++it)
            push_back(*it);
    }

    /* -- Assignment -- */
    ReVector& operator=(const ReVector& o) {
        if (this != &o) {
            destroy_range(data_, size_);
            if (o.size_ > cap_) {
                if (data_) mem_free(data_);
                data_ = static_cast<T*>(mem_alloc(o.size_ * sizeof(T)));
                cap_  = o.size_;
            }
            copy_construct_range(data_, o.data_, o.size_);
            size_ = o.size_;
        }
        return *this;
    }

    ReVector& operator=(ReVector&& o) noexcept {
        if (this != &o) {
            destroy_range(data_, size_);
            if (data_) mem_free(data_);
            data_   = o.data_;
            size_   = o.size_;
            cap_    = o.cap_;
            o.data_ = nullptr;
            o.size_ = 0;
            o.cap_  = 0;
        }
        return *this;
    }

    /* -- Destructor -- */
    ~ReVector() {
        destroy_range(data_, size_);
        if (data_) mem_free(data_);
    }

    /* -- Access -- */
    T*       data()       { return data_; }
    const T* data() const { return data_; }
    ReUSize  size()     const { return size_; }
    ReUSize  capacity() const { return cap_; }
    bool     empty()    const { return size_ == 0; }

    T&       operator[](ReUSize i)       { return data_[i]; }
    const T& operator[](ReUSize i) const { return data_[i]; }

    T& at(ReUSize i) {
        if (i >= size_) __builtin_trap();
        return data_[i];
    }
    const T& at(ReUSize i) const {
        if (i >= size_) __builtin_trap();
        return data_[i];
    }

    T&       front()       { return data_[0]; }
    T&       back()        { return data_[size_ - 1]; }
    const T& front() const { return data_[0]; }
    const T& back()  const { return data_[size_ - 1]; }

    /* -- Capacity -- */
    void reserve(ReUSize new_cap) {
        if (new_cap > cap_) grow(new_cap);
    }

    void resize(ReUSize new_size) {
        if (new_size > size_) {
            reserve(new_size);
            default_construct_range(data_ + size_, new_size - size_);
        } else if (new_size < size_) {
            destroy_range(data_ + new_size, size_ - new_size);
        }
        size_ = new_size;
    }

    void resize(ReUSize new_size, const T& value) {
        if (new_size > size_) {
            reserve(new_size);
            for (ReUSize i = size_; i < new_size; ++i)
                new (data_ + i) T(value);
        } else if (new_size < size_) {
            destroy_range(data_ + new_size, size_ - new_size);
        }
        size_ = new_size;
    }

    void clear() {
        destroy_range(data_, size_);
        size_ = 0;
    }

    /* -- Assign -- */
    void assign(ReUSize count, const T& value) {
        clear();
        if (count > cap_) {
            if (data_) mem_free(data_);
            data_ = static_cast<T*>(mem_alloc(count * sizeof(T)));
            cap_ = count;
        }
        for (ReUSize i = 0; i < count; ++i)
            new (data_ + i) T(value);
        size_ = count;
    }

    void assign(const T* first, const T* last) {
        ReUSize count = static_cast<ReUSize>(last - first);
        clear();
        if (count > cap_) {
            if (data_) mem_free(data_);
            data_ = static_cast<T*>(mem_alloc(count * sizeof(T)));
            cap_ = count;
        }
        copy_construct_range(data_, first, count);
        size_ = count;
    }

    /* -- Modifiers -- */
    void push_back(const T& value) {
        if (size_ >= cap_) grow(size_ + 1);
        new (data_ + size_) T(value);
        ++size_;
    }

    void push_back(T&& value) {
        if (size_ >= cap_) grow(size_ + 1);
        new (data_ + size_) T(re_move(value));
        ++size_;
    }

    template<typename... Args>
    T& emplace_back(Args&&... args) {
        if (size_ >= cap_) grow(size_ + 1);
        T* p = new (data_ + size_) T(re_forward<Args>(args)...);
        ++size_;
        return *p;
    }

    void pop_back() {
        if (size_ == 0) return;
        --size_;
        if constexpr (!re_is_trivially_destructible_v<T>)
            data_[size_].~T();
    }

    void erase(const T* pos) {
        ReUSize idx = static_cast<ReUSize>(pos - data_);
        if (idx >= size_) return;

        if constexpr (re_is_trivially_copyable_v<T>) {
            if (idx + 1 < size_)
                re_memmove(data_ + idx, data_ + idx + 1,
                           (size_ - idx - 1) * sizeof(T));
        } else {
            data_[idx].~T();
            for (ReUSize i = idx; i + 1 < size_; ++i) {
                new (data_ + i) T(re_move(data_[i + 1]));
                data_[i + 1].~T();
            }
        }
        --size_;
    }

    void insert(const T* pos, const T& value) {
        ReUSize idx = static_cast<ReUSize>(pos - data_);
        if (idx > size_) idx = size_;

        if (size_ >= cap_) {
            /* Reallocate — pos is invalidated, copy value first. */
            ReUSize new_cap = cap_ < 8 ? 8 : cap_ * 2;
            if (new_cap < size_ + 1) new_cap = size_ + 1;

            T* p = static_cast<T*>(mem_alloc(new_cap * sizeof(T)));

            if constexpr (re_is_trivially_copyable_v<T>) {
                if (idx) re_memcpy(p, data_, idx * sizeof(T));
                p[idx] = value;
                if (idx < size_)
                    re_memcpy(p + idx + 1, data_ + idx,
                              (size_ - idx) * sizeof(T));
            } else {
                for (ReUSize i = 0; i < idx; ++i) {
                    new (p + i) T(re_move(data_[i]));
                    data_[i].~T();
                }
                new (p + idx) T(value);
                for (ReUSize i = idx; i < size_; ++i) {
                    new (p + i + 1) T(re_move(data_[i]));
                    data_[i].~T();
                }
            }

            if (data_) mem_free(data_);
            data_ = p;
            cap_  = new_cap;
        } else {
            /* No reallocation needed */
            if constexpr (re_is_trivially_copyable_v<T>) {
                if (idx < size_)
                    re_memmove(data_ + idx + 1, data_ + idx,
                               (size_ - idx) * sizeof(T));
                data_[idx] = value;
            } else {
                if (idx == size_) {
                    new (data_ + size_) T(value);
                } else {
                    /* Construct new tail element from last */
                    new (data_ + size_) T(re_move(data_[size_ - 1]));
                    /* Shift backwards */
                    for (ReUSize i = size_ - 1; i > idx; --i)
                        data_[i] = re_move(data_[i - 1]);
                    data_[idx] = value;
                }
            }
        }
        ++size_;
    }

    /* -- Insert initializer list before pos -- */
    void insert(T* pos, std::initializer_list<T> init) {
        if (init.size() == 0) return;
        insert(pos, init.begin(), init.end());
    }

    /* -- Range insert: insert [first, last) before pos -- */
    void insert(T* pos, const T* first, const T* last) {
        if (first == last) return;
        ReUSize idx = static_cast<ReUSize>(pos - data_);
        ReUSize count = static_cast<ReUSize>(last - first);

        /* Copy input range to handle possible overlap with our buffer. */
        T* tmp = static_cast<T*>(mem_alloc(count * sizeof(T)));
        for (ReUSize i = 0; i < count; ++i)
            new (tmp + i) T(first[i]);

        reserve(size_ + count);
        /* Shift existing tail right by count. */
        if constexpr (re_is_trivially_copyable_v<T>) {
            if (idx < size_)
                re_memmove(data_ + idx + count, data_ + idx,
                           (size_ - idx) * sizeof(T));
            re_memcpy(data_ + idx, tmp, count * sizeof(T));
        } else {
            /* Move-construct elements from end to make room. */
            for (ReUSize i = size_ + count; i > idx + count; ) {
                --i;
                ReUSize src_i = i - count;
                if (i >= size_)
                    new (data_ + i) T(re_move(data_[src_i]));
                else
                    data_[i] = re_move(data_[src_i]);
            }
            for (ReUSize i = 0; i < count; ++i) {
                if (idx + i >= size_)
                    new (data_ + idx + i) T(re_move(tmp[i]));
                else
                    data_[idx + i] = re_move(tmp[i]);
            }
        }
        /* Clean up tmp buffer. */
        if constexpr (!re_is_trivially_destructible_v<T>)
            for (ReUSize i = 0; i < count; ++i)
                tmp[i].~T();
        mem_free(tmp);
        size_ += count;
    }

    /* -- Range erase: erase [first, last) -- */
    void erase(const T* first, const T* last) {
        ReUSize start = static_cast<ReUSize>(first - data_);
        ReUSize end_idx = static_cast<ReUSize>(last - data_);
        if (start >= end_idx || start >= size_) return;
        if (end_idx > size_) end_idx = size_;
        ReUSize count = end_idx - start;

        if constexpr (re_is_trivially_copyable_v<T>) {
            if (end_idx < size_)
                re_memmove(data_ + start, data_ + end_idx,
                           (size_ - end_idx) * sizeof(T));
        } else {
            for (ReUSize i = start; i < end_idx; ++i)
                data_[i].~T();
            for (ReUSize i = 0; i + end_idx < size_; ++i) {
                new (data_ + start + i) T(re_move(data_[end_idx + i]));
                data_[end_idx + i].~T();
            }
        }
        size_ -= count;
    }

    /* -- Swap -- */
    void swap(ReVector& other) noexcept {
        re_swap(data_, other.data_);
        re_swap(size_, other.size_);
        re_swap(cap_, other.cap_);
    }

    /* -- Iteration -- */
    T*       begin()       { return data_; }
    T*       end()         { return data_ + size_; }
    const T* begin() const { return data_; }
    const T* end()   const { return data_ + size_; }

    /* -- Comparison -- */
    bool operator==(const ReVector& other) const {
        if (size_ != other.size_) return false;
        for (ReUSize i = 0; i < size_; ++i)
            if (!(data_[i] == other.data_[i])) return false;
        return true;
    }
    bool operator!=(const ReVector& other) const { return !(*this == other); }
};


/* ================================================================
   ReArray<T,N>  —  fixed-size array (replaces std::array)
   ================================================================ */
template<typename T, ReUSize N>
struct ReArray {
    T elems[N];

    constexpr T&       operator[](ReUSize i)       { return elems[i]; }
    constexpr const T& operator[](ReUSize i) const { return elems[i]; }
    constexpr ReUSize  size()  const { return N; }
    constexpr bool     empty() const { return N == 0; }
    constexpr T*       data()        { return elems; }
    constexpr const T* data()  const { return elems; }

    constexpr T*       begin()       { return elems; }
    constexpr T*       end()         { return elems + N; }
    constexpr const T* begin() const { return elems; }
    constexpr const T* end()   const { return elems + N; }

    constexpr T&       front()       { return elems[0]; }
    constexpr T&       back()        { return elems[N - 1]; }
    constexpr const T& front() const { return elems[0]; }
    constexpr const T& back()  const { return elems[N - 1]; }

    constexpr void fill(const T& v) {
        for (ReUSize i = 0; i < N; ++i) elems[i] = v;
    }

    constexpr bool operator==(const ReArray& other) const {
        for (ReUSize i = 0; i < N; ++i)
            if (!(elems[i] == other.elems[i])) return false;
        return true;
    }
    constexpr bool operator!=(const ReArray& other) const { return !(*this == other); }
};


/* ================================================================
   ReSpan<T>  —  non-owning contiguous view (replaces std::span)
   ================================================================ */
template<typename T>
class ReSpan {
    T*      data_;
    ReUSize size_;
public:
    constexpr ReSpan() : data_(nullptr), size_(0) {}
    constexpr ReSpan(T* d, ReUSize s) : data_(d), size_(s) {}

    template<ReUSize N>
    constexpr ReSpan(T (&arr)[N]) : data_(arr), size_(N) {}

    template<ReUSize N>
    constexpr ReSpan(ReArray<T, N>& arr) : data_(arr.data()), size_(N) {}

    template<ReUSize N>
    constexpr ReSpan(const ReArray<T, N>& arr) : data_(const_cast<T*>(arr.data())), size_(N) {}

    /* Const span from non-const array: e.g., ReSpan<const int> from ReArray<int, N> */
    template<typename U, ReUSize N,
             typename = re_enable_if_t<re_is_same_v<T, const U>>>
    constexpr ReSpan(ReArray<U, N>& arr) : data_(arr.data()), size_(N) {}

    template<typename U, ReUSize N,
             typename = re_enable_if_t<re_is_same_v<T, const U>>>
    constexpr ReSpan(const ReArray<U, N>& arr) : data_(arr.data()), size_(N) {}

    /* Construct from ReVector (non-const) */
    ReSpan(ReVector<T>& v) : data_(v.data()), size_(v.size()) {}

    /* Construct from ReVector (const — for ReSpan<const T>) */
    template<typename U = T>
    ReSpan(const ReVector<U>& v) : data_(v.data()), size_(v.size()) {}

    /* Implicit const-qualifying conversion: ReSpan<U> -> ReSpan<const U> */
    template<typename U, typename = re_enable_if_t<
        re_is_same_v<T, const U> && !re_is_same_v<T, U>>>
    constexpr ReSpan(ReSpan<U> other) : data_(other.data()), size_(other.size()) {}

    constexpr T*       data()  const { return data_; }
    constexpr ReUSize  size()  const { return size_; }
    constexpr bool     empty() const { return size_ == 0; }
    constexpr T&       operator[](ReUSize i) const { return data_[i]; }

    constexpr T*       begin() const { return data_; }
    constexpr T*       end()   const { return data_ + size_; }

    constexpr T&       front() const { return data_[0]; }
    constexpr T&       back()  const { return data_[size_ - 1]; }

    constexpr ReSpan subspan(ReUSize offset, ReUSize count = ~ReUSize(0)) const {
        if (offset > size_) offset = size_;
        ReUSize avail = size_ - offset;
        if (count > avail) count = avail;
        return ReSpan(data_ + offset, count);
    }
};

} /* namespace re */

#endif /* RE_FREESTANDING_VECTOR_H */
