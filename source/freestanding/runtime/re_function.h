#ifndef RE_FREESTANDING_FUNCTION_H
#define RE_FREESTANDING_FUNCTION_H

/*  Freestanding type-erased callable — replaces std::function.
 *  Move-only. Small-buffer optimization for callables up to 32 bytes.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"
#include "re_mem.h"

namespace re {

/* Primary template (undefined). */
template<typename Sig>
class ReFunction;

namespace detail {

/* ---- Shared metaprogramming helpers (guarded for multi-header include) ---- */

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

/* ---- Function-type detection (for decay) ---- */
template<typename T> struct IsFunction : re_false_type {};
template<typename R, typename... A>
struct IsFunction<R(A...)> : re_true_type {};

/* ---- Decay: strip ref/cv, then function-type to function-pointer ---- */
template<typename T, bool = IsFunction<T>::value>
struct MaybeAddPointer { using type = T; };
template<typename T>
struct MaybeAddPointer<T, true> { using type = T*; };

template<typename T>
using Decay = typename MaybeAddPointer<RemoveCvRef<T>>::type;

} // namespace detail

/* ================================================================
   ReFunction<R(Args...)> — move-only type-erased callable
   ================================================================ */
template<typename R, typename... Args>
class ReFunction<R(Args...)> {

    /* ---- Small-buffer optimization parameters ---- */
    static constexpr ReUSize SBO_SIZE  = 32;
    static constexpr ReUSize SBO_ALIGN = 16;

    /* ---- Type-erased vtable ---- */
    struct Vtable {
        R    (*invoke)(void*, Args...);
        void (*destroy)(void*);
        void (*relocate)(void* src, void* dst);  /* move + destroy src */
        void (*copy_to)(const void* src, void* dst);  /* copy construct */
        ReUSize size;   /* sizeof(Stored) for heap copy */
        ReUSize align;  /* alignof(Stored) */
    };

    /* Storage is mutable so that const operator() can invoke through
       a non-const pointer — matches std::function semantics where the
       wrapper's constness does not propagate to the stored callable. */
    alignas(SBO_ALIGN) mutable ReByte storage_[SBO_SIZE];
    const Vtable* vtable_ = nullptr;
    void* heap_ = nullptr;

    /* Pointer to the live callable, whether SBO or heap. */
    void* target() const {
        return heap_ ? heap_ : static_cast<void*>(storage_);
    }

    /* ---- Per-type vtable operations ---- */

    template<typename F>
    static R do_invoke(void* p, Args... args) {
        return (*static_cast<F*>(p))(re_forward<Args>(args)...);
    }

    template<typename F>
    static void do_destroy(void* p) {
        static_cast<F*>(p)->~F();
    }

    template<typename F>
    static void do_relocate(void* src, void* dst) {
        new (dst) F(re_move(*static_cast<F*>(src)));
        static_cast<F*>(src)->~F();
    }

    template<typename F>
    static void do_copy_to(const void* src, void* dst) {
        new (dst) F(*static_cast<const F*>(src));
    }

    /* One vtable instance per stored type, in .rodata. */
    template<typename F>
    static constexpr Vtable vt = {
        &do_invoke<F>,
        &do_destroy<F>,
        &do_relocate<F>,
        &do_copy_to<F>,
        sizeof(F),
        alignof(F)
    };

    /* Destroy the current callable and free heap if needed. */
    void clear() noexcept {
        if (vtable_) {
            vtable_->destroy(target());
            if (heap_) {
                mem_free(heap_);
                heap_ = nullptr;
            }
            vtable_ = nullptr;
        }
    }

public:
    /* ---- Construction ---- */

    ReFunction() noexcept = default;
    ReFunction(decltype(nullptr)) noexcept {}

    /* From callable (lambda, functor).  SFINAE excludes ReFunction
       itself so the move constructor is selected instead. */
    template<typename F, typename = re_enable_if_t<
        !re_is_same_v<detail::Decay<F>, ReFunction>>>
    ReFunction(F&& f) {
        using Stored = detail::Decay<F>;
        if constexpr (sizeof(Stored) <= SBO_SIZE &&
                      alignof(Stored) <= SBO_ALIGN) {
            new (storage_) Stored(re_forward<F>(f));
        } else {
            heap_ = mem_alloc(sizeof(Stored));
            new (heap_) Stored(re_forward<F>(f));
        }
        vtable_ = &vt<Stored>;
    }

    /* Dedicated function-pointer overload: null pointers give an
       empty ReFunction rather than a callable that crashes. */
    ReFunction(R (*fn)(Args...)) noexcept {
        if (fn) {
            using P = R(*)(Args...);
            new (storage_) P(fn);
            vtable_ = &vt<P>;
        }
    }

    /* ---- Copy ---- */

    ReFunction(const ReFunction& o)
        : vtable_(o.vtable_), heap_(nullptr)
    {
        if (vtable_) {
            if (o.heap_) {
                heap_ = mem_alloc(vtable_->size);
                vtable_->copy_to(o.heap_, heap_);
            } else {
                vtable_->copy_to(o.storage_, storage_);
            }
        }
    }

    ReFunction& operator=(const ReFunction& o) {
        if (this != &o) {
            clear();
            vtable_ = o.vtable_;
            if (vtable_) {
                if (o.heap_) {
                    heap_ = mem_alloc(vtable_->size);
                    vtable_->copy_to(o.heap_, heap_);
                } else {
                    vtable_->copy_to(o.storage_, storage_);
                }
            }
        }
        return *this;
    }

    /* ---- Move ---- */

    ReFunction(ReFunction&& o) noexcept
        : vtable_(o.vtable_), heap_(o.heap_)
    {
        if (vtable_ && !heap_)
            vtable_->relocate(o.storage_, storage_);
        o.vtable_ = nullptr;
        o.heap_   = nullptr;
    }

    ReFunction& operator=(ReFunction&& o) noexcept {
        if (this != &o) {
            clear();
            vtable_ = o.vtable_;
            heap_   = o.heap_;
            if (vtable_ && !heap_)
                vtable_->relocate(o.storage_, storage_);
            o.vtable_ = nullptr;
            o.heap_   = nullptr;
        }
        return *this;
    }

    ReFunction& operator=(decltype(nullptr)) noexcept {
        clear();
        return *this;
    }

    ~ReFunction() { clear(); }

    /* ---- Invocation ---- */

    R operator()(Args... args) const {
        /* UB if empty (no exceptions to throw bad_function_call). */
        return vtable_->invoke(target(), re_forward<Args>(args)...);
    }

    /* ---- State queries ---- */

    explicit operator bool() const noexcept { return vtable_ != nullptr; }
    bool empty() const noexcept { return vtable_ == nullptr; }
};

} // namespace re

#endif /* RE_FREESTANDING_FUNCTION_H */
