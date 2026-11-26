#ifndef RE_FREESTANDING_UTILITY_H
#define RE_FREESTANDING_UTILITY_H

/*  Pair, tuple, unique_ptr, initializer_list — no <utility>/<memory>/<tuple>.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20
 *
 *  std::initializer_list is defined in namespace std because the compiler
 *  hardcodes that name.  This is the standard freestanding trick; the layout
 *  matches what GCC 11+ expects (pointer, then length). */

#include "re_types.h"
#include "re_mem.h"

namespace re {

/* ================================================================
   detail — type helpers
   ================================================================ */
namespace detail {

template<typename T> struct RemoveCV                { using type = T; };
template<typename T> struct RemoveCV<const T>       { using type = T; };
template<typename T> struct RemoveCV<volatile T>    { using type = T; };
template<typename T> struct RemoveCV<const volatile T> { using type = T; };

/* Minimal decay: strip references and cv-qualifiers. */
template<typename T>
using DecayT = typename RemoveCV<typename RemoveReference<T>::type>::type;

} /* namespace detail */


/* ================================================================
   RePair<T1,T2>  —  replaces std::pair
   ================================================================ */
template<typename T1, typename T2>
struct RePair {
    T1 first;
    T2 second;

    constexpr RePair() = default;

    constexpr RePair(const T1& a, const T2& b)
        : first(a), second(b) {}

    template<typename U1, typename U2>
    constexpr RePair(U1&& a, U2&& b)
        : first(re_forward<U1>(a)), second(re_forward<U2>(b)) {}

    constexpr bool operator==(const RePair& o) const {
        return first == o.first && second == o.second;
    }

    constexpr bool operator<(const RePair& o) const {
        return first < o.first || (!(o.first < first) && second < o.second);
    }
};

template<typename T1, typename T2>
constexpr RePair<detail::DecayT<T1>, detail::DecayT<T2>>
re_make_pair(T1&& a, T2&& b) {
    return RePair<detail::DecayT<T1>, detail::DecayT<T2>>(
        re_forward<T1>(a), re_forward<T2>(b));
}


/* ================================================================
   ReTuple<Ts...>  —  variadic tuple (recursive inheritance)
   ================================================================ */

/* Forward declaration. */
template<typename... Ts>
struct ReTuple;

/* Base case — empty tuple. */
template<>
struct ReTuple<> {
    constexpr ReTuple() = default;
};

/* Recursive case — head value + tail tuple as base class.
 *
 * Memory layout (base-to-derived):
 *   ReTuple<>  (empty)
 *   ReTuple<Last>        : value = last element
 *   ...
 *   ReTuple<Head, Tail...> : value = first element
 *
 * The requires-clause on the forwarding constructor prevents it from
 * hijacking copy/move when the single argument is a ReTuple of the
 * same type. */
template<typename Head, typename... Tail>
struct ReTuple<Head, Tail...> : ReTuple<Tail...> {
    Head value;

    constexpr ReTuple() = default;

    constexpr ReTuple(const Head& h, const Tail&... t)
        : ReTuple<Tail...>(t...), value(h) {}

    template<typename H, typename... Ts>
        requires (sizeof...(Ts) == sizeof...(Tail) &&
                  (sizeof...(Tail) > 0 ||
                   !re_is_same_v<typename detail::RemoveReference<H>::type,
                                 ReTuple<Head, Tail...>>))
    constexpr ReTuple(H&& h, Ts&&... ts)
        : ReTuple<Tail...>(re_forward<Ts>(ts)...),
          value(re_forward<H>(h)) {}
};


/* ---- Index-based access ---- */
namespace detail {

template<ReUSize I, typename Tuple>
struct TupleGetter;

template<typename Head, typename... Tail>
struct TupleGetter<0, ReTuple<Head, Tail...>> {
    using type = Head;
    static constexpr Head& get(ReTuple<Head, Tail...>& t) { return t.value; }
    static constexpr const Head& get(const ReTuple<Head, Tail...>& t) { return t.value; }
};

template<ReUSize I, typename Head, typename... Tail>
struct TupleGetter<I, ReTuple<Head, Tail...>> {
    using type = typename TupleGetter<I - 1, ReTuple<Tail...>>::type;

    static constexpr type& get(ReTuple<Head, Tail...>& t) {
        return TupleGetter<I - 1, ReTuple<Tail...>>::get(
            static_cast<ReTuple<Tail...>&>(t));
    }
    static constexpr const type& get(const ReTuple<Head, Tail...>& t) {
        return TupleGetter<I - 1, ReTuple<Tail...>>::get(
            static_cast<const ReTuple<Tail...>&>(t));
    }
};

} /* namespace detail */

template<ReUSize I, typename... Ts>
constexpr auto& re_get(ReTuple<Ts...>& t) {
    return detail::TupleGetter<I, ReTuple<Ts...>>::get(t);
}

template<ReUSize I, typename... Ts>
constexpr const auto& re_get(const ReTuple<Ts...>& t) {
    return detail::TupleGetter<I, ReTuple<Ts...>>::get(t);
}

/* ---- re_make_tuple ---- */
template<typename... Ts>
constexpr ReTuple<detail::DecayT<Ts>...> re_make_tuple(Ts&&... args) {
    return ReTuple<detail::DecayT<Ts>...>(re_forward<Ts>(args)...);
}


/* ================================================================
   ReTupleSize<T>  —  number of elements in a ReTuple
   ================================================================ */
template<typename T>
struct ReTupleSize;

template<typename... Ts>
struct ReTupleSize<ReTuple<Ts...>> {
    static constexpr ReUSize value = sizeof...(Ts);
};

template<typename T>
inline constexpr ReUSize re_tuple_size_v = ReTupleSize<T>::value;


/* ================================================================
   ReUniquePtr<T>  —  non-copyable owning pointer (uses mem_free)
   ================================================================ */
template<typename T>
class ReUniquePtr {
    T* ptr_;
public:
    constexpr ReUniquePtr() noexcept : ptr_(nullptr) {}
    explicit constexpr ReUniquePtr(T* p) noexcept : ptr_(p) {}

    ReUniquePtr(const ReUniquePtr&) = delete;
    ReUniquePtr& operator=(const ReUniquePtr&) = delete;

    ReUniquePtr(ReUniquePtr&& o) noexcept : ptr_(o.ptr_) { o.ptr_ = nullptr; }

    ReUniquePtr& operator=(ReUniquePtr&& o) noexcept {
        if (this != &o) {
            reset();
            ptr_ = o.ptr_;
            o.ptr_ = nullptr;
        }
        return *this;
    }

    ~ReUniquePtr() { reset(); }

    T*   get()       const noexcept { return ptr_; }
    T&   operator*() const          { return *ptr_; }
    T*   operator->()const noexcept { return ptr_; }
    explicit operator bool() const noexcept { return ptr_ != nullptr; }

    T* release() noexcept {
        T* p = ptr_;
        ptr_ = nullptr;
        return p;
    }

    void reset(T* p = nullptr) {
        if (ptr_) {
            ptr_->~T();
            mem_free(ptr_);
        }
        ptr_ = p;
    }

    bool operator==(const ReUniquePtr& other) const noexcept { return ptr_ == other.ptr_; }
    bool operator!=(const ReUniquePtr& other) const noexcept { return ptr_ != other.ptr_; }
    bool operator==(decltype(nullptr)) const noexcept { return ptr_ == nullptr; }
    bool operator!=(decltype(nullptr)) const noexcept { return ptr_ != nullptr; }
};

template<typename T, typename... Args>
ReUniquePtr<T> re_make_unique(Args&&... args) {
    void* mem = mem_alloc(sizeof(T));
    return ReUniquePtr<T>(new(mem) T(re_forward<Args>(args)...));
}

} /* namespace re */


/* ================================================================
   std::initializer_list  —  compiler-magic type (must live in std)

   GCC constructs this by directly writing to the two members
   (pointer first, then length).  The layout below matches GCC 11+.
   We define it here so that brace-init-list syntax works without
   #include <initializer_list>.
   Now guarded so the copy in re_types.h (needed by re_vector.h,
   which is included earlier) does not conflict.
   ================================================================ */
#if !defined(__STDC_HOSTED__) || !__STDC_HOSTED__
#ifndef RE_INITIALIZER_LIST_DEFINED
#define RE_INITIALIZER_LIST_DEFINED
namespace std {

template<typename T>
class initializer_list {
    const T*            array_;
    decltype(sizeof(0)) len_;

    /* Called by the compiler — never by user code. */
    constexpr initializer_list(const T* a, decltype(sizeof(0)) l)
        : array_(a), len_(l) {}
public:
    constexpr initializer_list() : array_(nullptr), len_(0) {}
    constexpr decltype(sizeof(0)) size()  const { return len_; }
    constexpr const T*            begin() const { return array_; }
    constexpr const T*            end()   const { return array_ + len_; }
};

} /* namespace std */
#endif /* RE_INITIALIZER_LIST_DEFINED */
#endif /* !__STDC_HOSTED__ */


#endif /* RE_FREESTANDING_UTILITY_H */
