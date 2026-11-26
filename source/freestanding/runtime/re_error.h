#ifndef RE_FREESTANDING_ERROR_H
#define RE_FREESTANDING_ERROR_H

/* Error handling without exceptions.
 * No standard library headers. Only re_types.h. */

#include "re_types.h"

namespace re {

/* ---- Status codes replacing exceptions ---- */
enum class ReStatus : ReU32 {
    ok = 0,
    out_of_memory,
    out_of_range,
    invalid_argument,
    not_found,
    overflow,
    underflow,
    uninitialized,
    already_exists,
    permission_denied,
    io_error,
    format_error,
    capacity_exceeded,
    null_pointer,
    alignment_error,
    not_implemented
};

/* ---- ReResult: value or error status ---- */
template<typename T>
class ReResult {
    union Storage {
        T value;
        ReByte empty;
        constexpr Storage() : empty{} {}
        ~Storage() {}
    };
    Storage   storage_;
    ReStatus  status_;
    ReBool    has_value_;

public:
    /* Construct with a value (success). */
    ReResult(const T& val) : status_(ReStatus::ok), has_value_(RE_TRUE) {
        new (re_addressof(storage_.value)) T(val);
    }
    ReResult(T&& val) : status_(ReStatus::ok), has_value_(RE_TRUE) {
        new (re_addressof(storage_.value)) T(re_move(val));
    }

    /* Construct with an error status. */
    ReResult(ReStatus s) : status_(s), has_value_(RE_FALSE) {}

    /* Copy. */
    ReResult(const ReResult& other) : status_(other.status_), has_value_(other.has_value_) {
        if (has_value_) new (re_addressof(storage_.value)) T(other.storage_.value);
    }

    /* Move. */
    ReResult(ReResult&& other) : status_(other.status_), has_value_(other.has_value_) {
        if (has_value_) new (re_addressof(storage_.value)) T(re_move(other.storage_.value));
    }

    ~ReResult() { destroy(); }

    ReResult& operator=(const ReResult& other) {
        if (this != re_addressof(other)) {
            destroy();
            status_ = other.status_;
            has_value_ = other.has_value_;
            if (has_value_) new (re_addressof(storage_.value)) T(other.storage_.value);
        }
        return *this;
    }

    ReResult& operator=(ReResult&& other) {
        if (this != re_addressof(other)) {
            destroy();
            status_ = other.status_;
            has_value_ = other.has_value_;
            if (has_value_) new (re_addressof(storage_.value)) T(re_move(other.storage_.value));
        }
        return *this;
    }

    explicit operator bool() const { return has_value_; }
    ReBool   has_value()     const { return has_value_; }
    ReStatus status()        const { return status_; }

    T&       value()       { return storage_.value; }
    const T& value() const { return storage_.value; }

    T&       operator*()       { return storage_.value; }
    const T& operator*() const { return storage_.value; }

    T*       operator->()       { return re_addressof(storage_.value); }
    const T* operator->() const { return re_addressof(storage_.value); }

    /* Return value if present, or a default. */
    T value_or(const T& fallback) const {
        return has_value_ ? storage_.value : fallback;
    }

private:
    void destroy() {
        if (has_value_) {
            storage_.value.~T();
            has_value_ = RE_FALSE;
        }
    }
};

/* ---- Specialization for void (status-only result) ---- */
template<>
class ReResult<void> {
    ReStatus status_;

public:
    ReResult() : status_(ReStatus::ok) {}
    ReResult(ReStatus s) : status_(s) {}

    explicit operator bool() const { return status_ == ReStatus::ok; }
    ReBool   has_value()     const { return status_ == ReStatus::ok ? RE_TRUE : RE_FALSE; }
    ReStatus status()        const { return status_; }
};

/* ---- ReOptional: present or absent, no error code ---- */
template<typename T>
class ReOptional {
    union Storage {
        T value;
        ReByte empty;
        constexpr Storage() : empty{} {}
        ~Storage() {}
    };
    Storage storage_;
    ReBool  has_value_;

public:
    /* Empty construction. */
    constexpr ReOptional() : has_value_(RE_FALSE) {}
    constexpr ReOptional(ReNullOpt) : has_value_(RE_FALSE) {}

    /* Value construction. */
    ReOptional(const T& val) : has_value_(RE_TRUE) {
        new (re_addressof(storage_.value)) T(val);
    }
    ReOptional(T&& val) : has_value_(RE_TRUE) {
        new (re_addressof(storage_.value)) T(re_move(val));
    }

    /* Converting constructor: accepts any U from which T can be constructed.
       Enables e.g. ReOptional<ReVariant<A,B,...>> from a bare A or B value,
       and ReOptional<ReStringView> from const char*. */
    template<typename U,
             typename = re_enable_if_t<!re_is_same_v<re_decay_t<U>, ReOptional> &&
                                       !re_is_same_v<re_decay_t<U>, ReNullOpt> &&
                                       !re_is_same_v<re_decay_t<U>, T>>>
    ReOptional(U&& val) : has_value_(RE_TRUE) {
        new (re_addressof(storage_.value)) T(re_forward<U>(val));
    }

    /* Copy. */
    ReOptional(const ReOptional& other) : has_value_(other.has_value_) {
        if (has_value_) new (re_addressof(storage_.value)) T(other.storage_.value);
    }

    /* Move. */
    ReOptional(ReOptional&& other) : has_value_(other.has_value_) {
        if (has_value_) new (re_addressof(storage_.value)) T(re_move(other.storage_.value));
    }

    ~ReOptional() { destroy(); }

    ReOptional& operator=(ReNullOpt) {
        destroy();
        return *this;
    }

    ReOptional& operator=(const ReOptional& other) {
        if (this != re_addressof(other)) {
            destroy();
            has_value_ = other.has_value_;
            if (has_value_) new (re_addressof(storage_.value)) T(other.storage_.value);
        }
        return *this;
    }

    ReOptional& operator=(ReOptional&& other) {
        if (this != re_addressof(other)) {
            destroy();
            has_value_ = other.has_value_;
            if (has_value_) new (re_addressof(storage_.value)) T(re_move(other.storage_.value));
        }
        return *this;
    }

    ReOptional& operator=(const T& val) {
        destroy();
        new (re_addressof(storage_.value)) T(val);
        has_value_ = RE_TRUE;
        return *this;
    }

    ReOptional& operator=(T&& val) {
        destroy();
        new (re_addressof(storage_.value)) T(re_move(val));
        has_value_ = RE_TRUE;
        return *this;
    }

    /* Converting assignment: accepts any U from which T can be constructed.
       Enables e.g. ReOptional<ReVariant<A,B,...>> = someA without ambiguity. */
    template<typename U,
             typename = re_enable_if_t<!re_is_same_v<re_decay_t<U>, ReOptional> &&
                                       !re_is_same_v<re_decay_t<U>, ReNullOpt> &&
                                       !re_is_same_v<re_decay_t<U>, T>>>
    ReOptional& operator=(U&& val) {
        destroy();
        new (re_addressof(storage_.value)) T(re_forward<U>(val));
        has_value_ = RE_TRUE;
        return *this;
    }

    explicit operator bool() const { return has_value_; }
    ReBool has_value()       const { return has_value_; }

    T&       value()       { return storage_.value; }
    const T& value() const { return storage_.value; }

    T&       operator*()       { return storage_.value; }
    const T& operator*() const { return storage_.value; }

    T*       operator->()       { return re_addressof(storage_.value); }
    const T* operator->() const { return re_addressof(storage_.value); }

    T value_or(const T& fallback) const {
        return has_value_ ? storage_.value : fallback;
    }

    /* Construct value in-place. */
    template<typename... Args>
    T& emplace(Args&&... args) {
        destroy();
        new (re_addressof(storage_.value)) T(re_forward<Args>(args)...);
        has_value_ = RE_TRUE;
        return storage_.value;
    }

    void reset() { destroy(); }

    /* -- Comparison -- */
    bool operator==(const T& val) const {
        return has_value_ && storage_.value == val;
    }
    bool operator!=(const T& val) const {
        return !(*this == val);
    }
    bool operator==(const ReOptional& other) const {
        if (has_value_ != other.has_value_) return false;
        if (!has_value_) return true;
        return storage_.value == other.storage_.value;
    }
    bool operator!=(const ReOptional& other) const {
        return !(*this == other);
    }

    /* Converting comparison: for types T can compare with. */
    template<typename U,
             typename = re_enable_if_t<!re_is_same_v<re_decay_t<U>, ReOptional> &&
                                       !re_is_same_v<re_decay_t<U>, T>>>
    bool operator==(const U& val) const {
        return has_value_ && storage_.value == val;
    }
    template<typename U,
             typename = re_enable_if_t<!re_is_same_v<re_decay_t<U>, ReOptional> &&
                                       !re_is_same_v<re_decay_t<U>, T>>>
    bool operator!=(const U& val) const {
        return !(*this == val);
    }

private:
    void destroy() {
        if (has_value_) {
            storage_.value.~T();
            has_value_ = RE_FALSE;
        }
    }
};

/* ---- Specialization for trivially copyable types (no union dance) ---- */
/* Kept as the general template above for simplicity; the compiler will
   optimize trivially copyable types through dead-code elimination. */

} // namespace re

#endif /* RE_FREESTANDING_ERROR_H */
