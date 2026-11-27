#pragma once
// SEH compatibility for MSVC vs MinGW.
// MSVC: __try/__except
// MinGW/GCC: VirtualQuery-based safety check (no true SEH in GCC)

#ifdef _WIN32
#include <windows.h>

#ifdef _MSC_VER
// MSVC: use native SEH
#define SEH_TRY __try
#define SEH_EXCEPT __except(EXCEPTION_EXECUTE_HANDLER)

#else
// MinGW/GCC: no __try/__except.
#define SEH_TRY if (true)
#define SEH_EXCEPT else

#endif // _MSC_VER

// Page-level safety checks used by both MSVC and MinGW callers.
namespace seh_compat {

inline bool is_readable(const void* addr, size_t len) {
    if (!addr || len == 0) return false;
    constexpr DWORD readable = PAGE_READONLY | PAGE_READWRITE |
        PAGE_EXECUTE_READ | PAGE_EXECUTE_READWRITE | PAGE_WRITECOPY |
        PAGE_EXECUTE_WRITECOPY;

    auto* cursor = static_cast<const unsigned char*>(addr);
    auto* end = cursor + len;
    while (cursor < end) {
        MEMORY_BASIC_INFORMATION mbi{};
        if (!VirtualQuery(cursor, &mbi, sizeof(mbi))) return false;
        if (mbi.State != MEM_COMMIT) return false;
        if ((mbi.Protect & readable) == 0) return false;
        if (mbi.Protect & PAGE_GUARD) return false;
        auto* region_end = static_cast<const unsigned char*>(mbi.BaseAddress) + mbi.RegionSize;
        if (region_end <= cursor) return false;
        cursor = region_end;
    }
    return true;
}

template <class T>
inline bool safe_read(const void* src, T& out) {
    if (!is_readable(src, sizeof(T))) return false;
#ifdef _MSC_VER
    __try {
        memcpy(&out, src, sizeof(T));
        return true;
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        return false;
    }
#else
    __builtin_memcpy(&out, src, sizeof(T));
    return true;
#endif
}

inline bool safe_memcpy(void* dst, const void* src, size_t len) {
    if (!is_readable(src, len)) return false;
#ifdef _MSC_VER
    __try {
        memcpy(dst, src, len);
        return true;
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        return false;
    }
#else
    __builtin_memcpy(dst, src, len);
    return true;
#endif
}

} // namespace seh_compat

#endif // _WIN32
