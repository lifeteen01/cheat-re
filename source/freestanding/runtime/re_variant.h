#ifndef RE_FREESTANDING_VARIANT_H
#define RE_FREESTANDING_VARIANT_H

/*  Freestanding discriminated union — replaces std::variant.
 *  Copyable, movable.  Visitor dispatch via re_visit.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"

namespace re {

/* ================================================================
   ReMonostate — empty alternative (replaces std::monostate)
   ================================================================ */
struct ReMonostate {};
constexpr bool operator==(ReMonostate, ReMonostate) noexcept { return true; }
constexpr bool operator!=(ReMonostate, ReMonostate) noexcept { return false; }
constexpr bool operator<(ReMonostate, ReMonostate)  noexcept { return false; }
constexpr bool operator>(ReMonostate, ReMonostate)  noexcept { return false; }
constexpr bool operator<=(ReMonostate, ReMonostate) noexcept { return true; }
constexpr bool operator>=(ReMonostate, ReMonostate) noexcept { return true; }

/* ---- Sentinel for "no such type" ---- */
inline constexpr ReUSize variant_npos = ~ReUSize(0);

/* ================================================================
   Template metaprogramming helpers (no <type_traits>)
   ================================================================ */
namespace detail {

/* ---- Shared helpers (guarded for multi-header include) ---- */
#ifndef RE_DETAIL_REMOVE_CONST_DEFINED
#define RE_DETAIL_REMOVE_CONST_DEFINED
template<typename T> struct RemoveConst          { using type = T; };
template<typename T> struct RemoveConst<const T> { using type = T; };
#endif

#ifndef RE_DETAIL_REMOVE_CV_REF_DEFINED
#define RE_DETAIL_REMOVE_CV_REF_DEFINED
template<typename T>
using RemoveCvRef = typename RemoveConst<
    typename RemoveReference<T>::type>::type;
#endif

/* ---- Index of type T in pack Ts... ---- */
template<typename T, typename... Ts>
struct TypeIndex;

template<typename T, typename First, typename... Rest>
struct TypeIndex<T, First, Rest...> {
    static constexpr ReUSize value =
        re_is_same_v<T, First> ? 0 : 1 + TypeIndex<T, Rest...>::value;
};

template<typename T>
struct TypeIndex<T> {
    static constexpr ReUSize value = variant_npos;
};

/* ---- Type at index I in pack ---- */
template<ReUSize I, typename... Ts>
struct TypeAt;

template<typename First, typename... Rest>
struct TypeAt<0, First, Rest...> { using type = First; };

template<ReUSize I, typename First, typename... Rest>
struct TypeAt<I, First, Rest...> {
    using type = typename TypeAt<I - 1, Rest...>::type;
};

template<ReUSize I, typename... Ts>
using TypeAt_t = typename TypeAt<I, Ts...>::type;

/* ---- Compile-time max of two values ---- */
template<ReUSize A, ReUSize B>
inline constexpr ReUSize MaxVal = (A > B) ? A : B;

/* ---- Max sizeof across a pack ---- */
template<typename... Ts>
struct MaxSize;

template<typename T>
struct MaxSize<T> { static constexpr ReUSize value = sizeof(T); };

template<typename T, typename... Rest>
struct MaxSize<T, Rest...> {
    static constexpr ReUSize value = MaxVal<sizeof(T), MaxSize<Rest...>::value>;
};

/* ---- Max alignof across a pack ---- */
template<typename... Ts>
struct MaxAlign;

template<typename T>
struct MaxAlign<T> { static constexpr ReUSize value = alignof(T); };

template<typename T, typename... Rest>
struct MaxAlign<T, Rest...> {
    static constexpr ReUSize value = MaxVal<alignof(T), MaxAlign<Rest...>::value>;
};

/* ---- Visit dispatch (recursive if-constexpr) ---- */

template<ReUSize I, ReUSize N, typename Visitor, typename Variant>
decltype(auto) visit_dispatch(Visitor& vis, Variant& v) {
    if constexpr (I == N - 1) {
        /* Last alternative — must be this one (variant is never valueless). */
        return vis(v.template get_by_index<I>());
    } else {
        if (v.index() == I)
            return vis(v.template get_by_index<I>());
        return visit_dispatch<I + 1, N>(vis, v);
    }
}

} // namespace detail

/* ================================================================
   ReVariant<Ts...> — tagged union of types
   ================================================================ */
template<typename... Ts>
class ReVariant {
    static_assert(sizeof...(Ts) > 0,
                  "ReVariant requires at least one alternative");

    static constexpr ReUSize storage_size  = detail::MaxSize<Ts...>::value;
    static constexpr ReUSize storage_align = detail::MaxAlign<Ts...>::value;
    static constexpr ReUSize type_count    = sizeof...(Ts);

    alignas(storage_align) ReByte storage_[storage_size];
    ReUSize index_;

    /* ---- Per-alternative dispatch tables ---- */

    using DestroyFn  = void (*)(void*);
    using CopyFn     = void (*)(void* dst, const void* src);
    using MoveFn     = void (*)(void* dst, void* src);

    template<typename T>
    static void destroy_one(void* p) {
        if constexpr (!re_is_trivially_destructible_v<T>)
            static_cast<T*>(p)->~T();
    }

    template<typename T>
    static void copy_one(void* dst, const void* src) {
        if constexpr (re_is_trivially_copyable_v<T>)
            re_memcpy(dst, src, sizeof(T));
        else
            new (dst) T(*static_cast<const T*>(src));
    }

    template<typename T>
    static void move_one(void* dst, void* src) {
        if constexpr (re_is_trivially_copyable_v<T>)
            re_memcpy(dst, src, sizeof(T));
        else
            new (dst) T(re_move(*static_cast<T*>(src)));
    }

    static constexpr DestroyFn destroy_table[] = { &destroy_one<Ts>... };
    static constexpr CopyFn    copy_table[]    = { &copy_one<Ts>... };
    static constexpr MoveFn    move_table[]    = { &move_one<Ts>... };

    void destroy_current() {
        if (index_ != variant_npos)
            destroy_table[index_](storage_);
    }

public:
    /* ---- Default: value-initialise the first alternative ---- */
    ReVariant() : index_(0) {
        using First = detail::TypeAt_t<0, Ts...>;
        if constexpr (re_is_trivially_copyable_v<First>)
            re_memset(storage_, 0, sizeof(First));
        else
            new (storage_) First();
    }

    /* ---- Construct from a value whose type is in the alternative list ---- */
    template<typename T, typename = re_enable_if_t<
        !re_is_same_v<detail::RemoveCvRef<T>, ReVariant> &&
        (detail::TypeIndex<detail::RemoveCvRef<T>, Ts...>::value != variant_npos)>>
    ReVariant(T&& value) {
        using Stored = detail::RemoveCvRef<T>;
        constexpr ReUSize idx = detail::TypeIndex<Stored, Ts...>::value;
        new (storage_) Stored(re_forward<T>(value));
        index_ = idx;
    }

    /* ---- Copy ---- */
    ReVariant(const ReVariant& other) : index_(other.index_) {
        if (index_ != variant_npos)
            copy_table[index_](storage_, other.storage_);
    }

    ReVariant& operator=(const ReVariant& other) {
        if (this != &other) {
            destroy_current();
            index_ = other.index_;
            if (index_ != variant_npos)
                copy_table[index_](storage_, other.storage_);
        }
        return *this;
    }

    /* ---- Move ---- */
    ReVariant(ReVariant&& other) noexcept : index_(other.index_) {
        if (index_ != variant_npos)
            move_table[index_](storage_, other.storage_);
        /* Moved-from variant retains its index (holds a valid,
           moved-from value) — matches std::variant behaviour. */
    }

    ReVariant& operator=(ReVariant&& other) noexcept {
        if (this != &other) {
            destroy_current();
            index_ = other.index_;
            if (index_ != variant_npos)
                move_table[index_](storage_, other.storage_);
        }
        return *this;
    }

    /* ---- Assign from a value ---- */
    template<typename T, typename = re_enable_if_t<
        !re_is_same_v<detail::RemoveCvRef<T>, ReVariant> &&
        (detail::TypeIndex<detail::RemoveCvRef<T>, Ts...>::value != variant_npos)>>
    ReVariant& operator=(T&& value) {
        using Stored = detail::RemoveCvRef<T>;
        constexpr ReUSize idx = detail::TypeIndex<Stored, Ts...>::value;
        destroy_current();
        new (storage_) Stored(re_forward<T>(value));
        index_ = idx;
        return *this;
    }

    ~ReVariant() { destroy_current(); }

    /* ---- Observers ---- */

    ReUSize index() const noexcept { return index_; }

    /* Always false — without exceptions the variant can never
       become valueless. */
    bool valueless_by_exception() const noexcept { return false; }

    /* ---- Index-based access (used internally and by re_visit) ---- */

    template<ReUSize I>
    detail::TypeAt_t<I, Ts...>& get_by_index() {
        using T = detail::TypeAt_t<I, Ts...>;
        return *static_cast<T*>(static_cast<void*>(storage_));
    }

    template<ReUSize I>
    const detail::TypeAt_t<I, Ts...>& get_by_index() const {
        using T = detail::TypeAt_t<I, Ts...>;
        return *static_cast<const T*>(static_cast<const void*>(storage_));
    }

    /* ---- Type-based access (UB if the wrong type is active) ---- */

    template<typename T>
    T& get() {
        return *static_cast<T*>(static_cast<void*>(storage_));
    }

    template<typename T>
    const T& get() const {
        return *static_cast<const T*>(static_cast<const void*>(storage_));
    }

    /* ---- In-place construction (emplace) ---- */

    template<typename T, typename... CtorArgs>
    T& emplace(CtorArgs&&... args) {
        constexpr ReUSize idx = detail::TypeIndex<T, Ts...>::value;
        static_assert(idx != variant_npos,
                      "emplace type is not a variant alternative");
        destroy_current();
        auto* p = new (storage_) T(re_forward<CtorArgs>(args)...);
        index_ = idx;
        return *p;
    }
};

/* ================================================================
   Free-function accessors
   ================================================================ */

/* ---- re_holds_alternative ---- */
template<typename T, typename... Ts>
bool re_holds_alternative(const ReVariant<Ts...>& v) noexcept {
    constexpr ReUSize idx = detail::TypeIndex<T, Ts...>::value;
    static_assert(idx != variant_npos,
                  "re_holds_alternative: type is not a variant alternative");
    return v.index() == idx;
}

/* ---- re_get (by type) ---- */
template<typename T, typename... Ts>
T& re_get(ReVariant<Ts...>& v) {
    return v.template get<T>();
}

template<typename T, typename... Ts>
const T& re_get(const ReVariant<Ts...>& v) {
    return v.template get<T>();
}

/* ---- re_get_if (safe access, returns nullptr on mismatch) ---- */
template<typename T, typename... Ts>
T* re_get_if(ReVariant<Ts...>* v) noexcept {
    if (!v) return nullptr;
    constexpr ReUSize idx = detail::TypeIndex<T, Ts...>::value;
    static_assert(idx != variant_npos,
                  "re_get_if: type is not a variant alternative");
    if (v->index() != idx) return nullptr;
    return &v->template get<T>();
}

template<typename T, typename... Ts>
const T* re_get_if(const ReVariant<Ts...>* v) noexcept {
    if (!v) return nullptr;
    constexpr ReUSize idx = detail::TypeIndex<T, Ts...>::value;
    static_assert(idx != variant_npos,
                  "re_get_if: type is not a variant alternative");
    if (v->index() != idx) return nullptr;
    return &v->template get<T>();
}

/* ---- re_visit (single-variant visitor dispatch) ---- */
template<typename Visitor, typename... Ts>
decltype(auto) re_visit(Visitor&& vis, ReVariant<Ts...>& v) {
    static_assert(sizeof...(Ts) > 0, "re_visit requires a non-empty variant");
    return detail::visit_dispatch<0, sizeof...(Ts)>(vis, v);
}

template<typename Visitor, typename... Ts>
decltype(auto) re_visit(Visitor&& vis, const ReVariant<Ts...>& v) {
    static_assert(sizeof...(Ts) > 0, "re_visit requires a non-empty variant");
    return detail::visit_dispatch<0, sizeof...(Ts)>(vis, v);
}

} // namespace re

#endif /* RE_FREESTANDING_VARIANT_H */
