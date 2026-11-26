#ifndef RE_WIN32_FREESTANDING_COMPAT_H
#define RE_WIN32_FREESTANDING_COMPAT_H

/* Minimal Windows API declarations for freestanding cross-compilation.
 * Provides types, constants, structures, and function declarations needed
 * by the windows_base DLL source files without any SDK or CRT dependency.
 *
 * On actual Windows/MinGW, replace this with:
 *   <windows.h> <commctrl.h> <bcrypt.h> <psapi.h>
 * This header exists for Linux-hosted freestanding compile tests only. */

#include "../freestanding/runtime/re_core.h"

/* ================================================================
   Calling convention macros (no-op on x64, one calling convention)
   ================================================================ */
#ifndef WINAPI
#define WINAPI
#endif
#ifndef CALLBACK
#define CALLBACK
#endif
#ifndef APIENTRY
#define APIENTRY
#endif
#ifndef DECLSPEC_IMPORT
#define DECLSPEC_IMPORT
#endif

/* ================================================================
   Basic Windows types  (Windows LLP64: long = 32 bit)
   ================================================================ */
typedef int             BOOL;
typedef unsigned char   BYTE;
typedef unsigned short  WORD;
typedef unsigned int    DWORD;
typedef unsigned int    UINT;
typedef int             INT;
typedef int             LONG;
typedef short           SHORT;
typedef unsigned char   UCHAR;
typedef unsigned short  USHORT;
typedef unsigned int    ULONG;  /* 32-bit on Windows LLP64 */
typedef char            CHAR;
typedef wchar_t         WCHAR;

typedef char*           LPSTR;
typedef wchar_t*        LPWSTR;
typedef const char*     LPCSTR;
typedef const wchar_t*  LPCWSTR;
typedef void*           LPVOID;
typedef const void*     LPCVOID;
typedef BYTE*           PBYTE;
typedef UCHAR*          PUCHAR;
typedef DWORD*          LPDWORD;

/* Pointer-sized types (64-bit on x64) */
typedef long long       LONG_PTR;
typedef unsigned long long UINT_PTR;
typedef unsigned long long DWORD_PTR;
typedef unsigned long long ULONG_PTR;
typedef long long       INT_PTR;
typedef unsigned long long WPARAM;
typedef long long       LPARAM;
typedef long long       LRESULT;
typedef ReUSize         SIZE_T;

typedef unsigned short  ATOM;
typedef DWORD           COLORREF;

/* ================================================================
   Handle types (all opaque pointers on x64)
   ================================================================ */
typedef void*           HANDLE;
typedef void*           HWND;
typedef void*           HDC;
typedef void*           HMODULE;
typedef void*           HINSTANCE;
typedef void*           HBRUSH;
typedef void*           HCURSOR;
typedef void*           HMENU;
typedef void*           HFONT;
typedef void*           HGDIOBJ;
typedef void*           HBITMAP;
typedef void*           HICON;
typedef void*           HRGN;

typedef void*           LPOVERLAPPED;
typedef BOOL*           LPBOOL;
typedef int (*FARPROC)();

typedef LRESULT (CALLBACK *SUBCLASSPROC)(HWND, UINT, WPARAM, LPARAM, UINT_PTR, DWORD_PTR);
typedef LRESULT (CALLBACK *WNDPROC)(HWND, UINT, WPARAM, LPARAM);

/* ================================================================
   Fundamental constants
   ================================================================ */
#ifndef TRUE
#define TRUE  1
#endif
#ifndef FALSE
#define FALSE 0
#endif
#ifndef NULL
#ifdef __cplusplus
#define NULL nullptr
#else
#define NULL ((void*)0)
#endif
#endif

#define INVALID_HANDLE_VALUE ((HANDLE)(long long)-1)
#ifndef MAX_PATH
#define MAX_PATH 260
#endif

/* ================================================================
   Utility macros
   ================================================================ */
#define LOWORD(l)    ((WORD)((DWORD_PTR)(l) & 0xffff))
#define HIWORD(l)    ((WORD)(((DWORD_PTR)(l) >> 16) & 0xffff))
#define MAKELONG(a,b) ((LONG)(((WORD)(a)) | ((DWORD)((WORD)(b))) << 16))
#define MAKELPARAM(l,h) ((LPARAM)(DWORD)MAKELONG(l,h))
#define MAKEWPARAM(l,h) ((WPARAM)(DWORD)MAKELONG(l,h))
#define MAKEWORD(a,b) ((WORD)(((BYTE)(a)) | ((WORD)((BYTE)(b))) << 8))

#define RGB(r,g,b)   ((COLORREF)(((BYTE)(r))|((WORD)((BYTE)(g)))<<8)|(((DWORD)(BYTE)(b))<<16)))
#define GetRValue(c)  ((BYTE)(c))
#define GetGValue(c)  ((BYTE)(((WORD)(c)) >> 8))
#define GetBValue(c)  ((BYTE)((c) >> 16))

#define MAKEINTRESOURCEW(i)  ((LPCWSTR)(ULONG_PTR)((WORD)(i)))
#define MAKEINTRESOURCE(i)   MAKEINTRESOURCEW(i)

/* ================================================================
   Structures
   ================================================================ */
typedef struct tagPOINT { LONG x, y; } POINT, *LPPOINT;
typedef struct tagRECT  { LONG left, top, right, bottom; } RECT, *LPRECT;
typedef struct tagSIZE  { LONG cx, cy; } SIZE;
typedef struct tagMSG   { HWND hwnd; UINT message; WPARAM wParam; LPARAM lParam; DWORD time; POINT pt; } MSG;

typedef struct tagBITMAPINFOHEADER {
    DWORD biSize; LONG biWidth; LONG biHeight; WORD biPlanes; WORD biBitCount;
    DWORD biCompression; DWORD biSizeImage; LONG biXPelsPerMeter; LONG biYPelsPerMeter;
    DWORD biClrUsed; DWORD biClrImportant;
} BITMAPINFOHEADER;

typedef struct tagRGBQUAD { BYTE rgbBlue, rgbGreen, rgbRed, rgbReserved; } RGBQUAD;

typedef struct tagBITMAPINFO {
    BITMAPINFOHEADER bmiHeader;
    RGBQUAD bmiColors[1];
} BITMAPINFO;

typedef struct tagBITMAPFILEHEADER {
    WORD bfType; DWORD bfSize; WORD bfReserved1; WORD bfReserved2; DWORD bfOffBits;
} __attribute__((packed)) BITMAPFILEHEADER;

typedef struct tagMINMAXINFO {
    POINT ptReserved, ptMaxSize, ptMaxPosition, ptMinTrackSize, ptMaxTrackSize;
} MINMAXINFO;

typedef struct tagCREATESTRUCTW {
    LPVOID lpCreateParams; HINSTANCE hInstance; HMENU hMenu; HWND hwndParent;
    int cy, cx, y, x; LONG style; LPCWSTR lpszName; LPCWSTR lpszClass; DWORD dwExStyle;
} CREATESTRUCTW;

typedef struct tagNMHDR {
    HWND hwndFrom; UINT_PTR idFrom; UINT code;
} NMHDR;

typedef struct tagWNDCLASSW {
    UINT style; WNDPROC lpfnWndProc; int cbClsExtra, cbWndExtra;
    HINSTANCE hInstance; HICON hIcon; HCURSOR hCursor; HBRUSH hbrBackground;
    LPCWSTR lpszMenuName, lpszClassName;
} WNDCLASSW;

typedef struct tagWNDCLASSEXW {
    UINT cbSize, style; WNDPROC lpfnWndProc; int cbClsExtra, cbWndExtra;
    HINSTANCE hInstance; HICON hIcon; HCURSOR hCursor; HBRUSH hbrBackground;
    LPCWSTR lpszMenuName, lpszClassName; HICON hIconSm;
} WNDCLASSEXW;

typedef struct tagSECURITY_ATTRIBUTES {
    DWORD nLength; LPVOID lpSecurityDescriptor; BOOL bInheritHandle;
} SECURITY_ATTRIBUTES;

/* ================================================================
   Window message constants
   ================================================================ */
#define WM_NULL         0x0000
#define WM_CREATE       0x0001
#define WM_DESTROY      0x0002
#define WM_MOVE         0x0003
#define WM_SIZE         0x0005
#define WM_SETFOCUS     0x0007
#define WM_KILLFOCUS    0x0008
#define WM_CLOSE        0x0010
#define WM_PAINT        0x000F
#define WM_ERASEBKGND   0x0014
#define WM_SHOWWINDOW   0x0018
#define WM_SETFONT      0x0030
#define WM_GETFONT      0x0031
#define WM_SETREDRAW    0x000B
#define WM_NCCREATE     0x0081
#define WM_NCDESTROY    0x0082
#define WM_GETMINMAXINFO 0x0024
#define WM_COMMAND      0x0111
#define WM_HSCROLL      0x0114
#define WM_VSCROLL      0x0115
#define WM_NOTIFY       0x004E
#define WM_KEYDOWN      0x0100
#define WM_KEYUP        0x0101
#define WM_MOUSEMOVE    0x0200
#define WM_LBUTTONDOWN  0x0201
#define WM_LBUTTONUP    0x0202
#define WM_APP          0x8000
#define WM_USER         0x0400

/* ================================================================
   Virtual key codes
   ================================================================ */
#define VK_TAB    0x09
#define VK_SHIFT  0x10
#define VK_ESCAPE 0x1B
#define VK_F1     0x70

/* ================================================================
   Mouse constants
   ================================================================ */
#define MK_LBUTTON 0x0001

/* ================================================================
   Window styles
   ================================================================ */
#define WS_OVERLAPPED   0x00000000L
#define WS_CAPTION      0x00C00000L
#define WS_SYSMENU      0x00080000L
#define WS_THICKFRAME   0x00040000L
#define WS_MINIMIZEBOX  0x00020000L
#define WS_MAXIMIZEBOX  0x00010000L
#define WS_OVERLAPPEDWINDOW (WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX)
#define WS_CHILD        0x40000000L
#define WS_VISIBLE      0x10000000L
#define WS_CLIPSIBLINGS 0x04000000L
#define WS_CLIPCHILDREN 0x02000000L
#define WS_TABSTOP      0x00010000L
#define WS_VSCROLL      0x00200000L

#define WS_EX_CLIENTEDGE     0x00000200L
#define WS_EX_CONTROLPARENT  0x00010000L

#define CW_USEDEFAULT ((int)0x80000000)

/* ================================================================
   ShowWindow commands
   ================================================================ */
#define SW_HIDE 0
#define SW_SHOW 5

/* ================================================================
   Static control styles
   ================================================================ */
#define SS_LEFT        0x00000000L
#define SS_ENDELLIPSIS 0x00004000L

/* ================================================================
   Button styles and messages
   ================================================================ */
#define BS_PUSHBUTTON   0x00000000L
#define BS_AUTOCHECKBOX 0x00000003L
#define BM_GETCHECK 0x00F0
#define BM_SETCHECK 0x00F1
#define BM_CLICK    0x00F5
#define BST_UNCHECKED 0
#define BST_CHECKED   1
#define BN_CLICKED  0

/* ================================================================
   Edit control
   ================================================================ */
#define ES_AUTOHSCROLL 0x0080
#define EM_SETLIMITTEXT 0x00C5
#define EN_CHANGE 0x0300

/* ================================================================
   ComboBox
   ================================================================ */
#define CBS_DROPDOWNLIST 0x0003
#define CB_ADDSTRING  0x0143
#define CB_GETCURSEL  0x0147
#define CB_SETCURSEL  0x014E
#define CBN_SELCHANGE 1

/* ================================================================
   GDI constants
   ================================================================ */
#define BI_RGB          0L
#define DIB_RGB_COLORS  0
#define SRCCOPY         0x00CC0020L
#define DEFAULT_GUI_FONT 17
#define COLOR_BTNFACE    15
#define LOGPIXELSY       90
#define RDW_INVALIDATE   0x0001
#define RDW_UPDATENOW    0x0100
#define RDW_ALLCHILDREN  0x0080

/* ================================================================
   GetStockObject, GetWindowLong indices
   ================================================================ */
#define GWLP_WNDPROC  (-4)
#define GWLP_USERDATA (-21)

/* ================================================================
   File I/O constants
   ================================================================ */
#define GENERIC_READ       0x80000000L
#define FILE_SHARE_READ    0x00000001
#define FILE_SHARE_WRITE   0x00000002
#define FILE_SHARE_DELETE  0x00000004
#define OPEN_EXISTING      3
#define FILE_ATTRIBUTE_NORMAL 0x00000080

/* ================================================================
   Code page / string conversion
   ================================================================ */
#define CP_UTF8                65001
#define MB_ERR_INVALID_CHARS   0x00000008
#define WC_ERR_INVALID_CHARS   0x00000080

/* ================================================================
   GetModuleHandleEx flags
   ================================================================ */
#define GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS        0x00000004
#define GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT  0x00000002

/* ================================================================
   DLL
   ================================================================ */
#define DLL_PROCESS_ATTACH 1
#define DLL_PROCESS_DETACH 0

/* ================================================================
   Trackbar
   ================================================================ */
#define TRACKBAR_CLASSW L"msctls_trackbar32"
#define TBS_AUTOTICKS   0x0001
#define TBM_GETPOS      (WM_USER)
#define TBM_SETPOS      (WM_USER + 5)
#define TBM_SETRANGE    (WM_USER + 6)
#define TBM_SETPAGESIZE (WM_USER + 21)
#define TB_THUMBPOSITION 4

/* ================================================================
   Tab control
   ================================================================ */
#define WC_TABCONTROLW  L"SysTabControl32"

#define TCM_FIRST       0x1300
#define TCM_INSERTITEMW (TCM_FIRST + 62)
#define TCM_SETCURSEL   (TCM_FIRST + 12)
#define TCN_FIRST       ((UINT)-550)
#define TCN_SELCHANGE   (TCN_FIRST - 1)
#define TCIF_TEXT        0x0001

typedef struct tagTCITEMW {
    UINT mask; DWORD dwState; DWORD dwStateMask;
    LPWSTR pszText; int cchTextMax; int iImage; LPARAM lParam;
} TCITEMW;

#define TabCtrl_AdjustRect(h,b,r) SendMessageW((h), TCM_FIRST + 40, (WPARAM)(BOOL)(b), (LPARAM)(RECT*)(r))
#define TabCtrl_GetCurSel(h)      ((int)(DWORD)SendMessageW((h), TCM_FIRST + 11, 0, 0L))

/* ================================================================
   List view
   ================================================================ */
#define WC_LISTVIEWW    L"SysListView32"

#define LVM_FIRST         0x1000
#define LVM_GETITEMCOUNT  (LVM_FIRST + 4)
#define LVM_INSERTITEMW   (LVM_FIRST + 77)
#define LVM_GETITEMW      (LVM_FIRST + 75)
#define LVM_SETITEMTEXTW  (LVM_FIRST + 116)
#define LVM_INSERTCOLUMNW (LVM_FIRST + 97)
#define LVM_SETITEMSTATE  (LVM_FIRST + 43)
#define LVM_DELETEALLITEMS (LVM_FIRST + 9)

#define LVS_REPORT        0x0001
#define LVS_SINGLESEL     0x0004
#define LVS_SHOWSELALWAYS 0x0008
#define LVS_EX_FULLROWSELECT 0x00000020
#define LVS_EX_DOUBLEBUFFER  0x00010000
#define LVS_EX_LABELTIP      0x00004000

#define LVIF_TEXT  0x0001
#define LVIF_PARAM 0x0004
#define LVCF_TEXT  0x0004
#define LVCF_WIDTH 0x0002
#define LVCF_SUBITEM 0x0008

#define LVIS_SELECTED 0x0002
#define LVIS_FOCUSED  0x0001
#define LVNI_SELECTED 0x0002
#define LVN_FIRST     ((UINT)-100)
#define LVN_ITEMCHANGED (LVN_FIRST - 1)

typedef struct tagLVITEMW {
    UINT mask; int iItem; int iSubItem; UINT state; UINT stateMask;
    LPWSTR pszText; int cchTextMax; int iImage; LPARAM lParam;
    int iIndent; int iGroupId; UINT cColumns; PUCHAR piColFmt;
    int iGroup;
} LVITEMW;

typedef struct tagLVCOLUMNW {
    UINT mask; int fmt; int cx; LPWSTR pszText; int cchTextMax; int iSubItem;
    int iImage; int iOrder; int cxMin; int cxDefault; int cxIdeal;
} LVCOLUMNW;

#define ListView_DeleteAllItems(h)   ((BOOL)(DWORD)SendMessageW((h), LVM_DELETEALLITEMS, 0, 0L))
#define ListView_SetColumnWidth(h,i,w) ((BOOL)(DWORD)SendMessageW((h), LVM_FIRST + 30, (WPARAM)(int)(i), MAKELPARAM((w), 0)))
#define ListView_SetItemState(h,i,s,m) { LVITEMW _lv; _lv.stateMask=(m); _lv.state=(s); SendMessageW((h), LVM_SETITEMSTATE, (WPARAM)(i), (LPARAM)&_lv); }
#define ListView_GetNextItem(h,i,f) ((int)(DWORD)SendMessageW((h), LVM_FIRST + 12, (WPARAM)(int)(i), MAKELPARAM((f), 0)))
#define ListView_EnsureVisible(h,i,p) ((BOOL)(DWORD)SendMessageW((h), LVM_FIRST + 19, (WPARAM)(int)(i), MAKELPARAM((p), 0)))
#define ListView_SetExtendedListViewStyle(h,s) ((DWORD)SendMessageW((h), LVM_FIRST + 54, 0, (LPARAM)(DWORD)(s)))

/* ================================================================
   Common controls init
   ================================================================ */
typedef struct tagINITCOMMONCONTROLSEX {
    DWORD dwSize, dwICC;
} INITCOMMONCONTROLSEX;

#define ICC_TAB_CLASSES      0x00000008
#define ICC_LISTVIEW_CLASSES 0x00000001
#define ICC_BAR_CLASSES      0x00000004

/* ================================================================
   BCrypt types (bcrypt.h)
   ================================================================ */
typedef void*   BCRYPT_ALG_HANDLE;
typedef void*   BCRYPT_HASH_HANDLE;
typedef void*   BCRYPT_HANDLE;
typedef int     NTSTATUS;  /* 32-bit signed on Windows */

#define BCRYPT_SHA256_ALGORITHM L"SHA256"
#define BCRYPT_OBJECT_LENGTH    L"ObjectLength"

/* ================================================================
   PSAPI types (psapi.h)
   ================================================================ */
typedef struct _MODULEINFO {
    LPVOID lpBaseOfDll; DWORD SizeOfImage; LPVOID EntryPoint;
} MODULEINFO, *LPMODULEINFO;

/* ================================================================
   Win32 function declarations (extern "C")
   ================================================================ */
#ifdef __cplusplus
extern "C" {
#endif

/* ---- Kernel32 ---- */
DWORD WINAPI GetCurrentThreadId(void);
DWORD WINAPI GetCurrentProcessId(void);
HANDLE WINAPI GetCurrentProcess(void);
DWORD WINAPI GetLastError(void);
HMODULE WINAPI GetModuleHandleW(LPCWSTR);
DWORD WINAPI GetModuleFileNameW(HMODULE, LPWSTR, DWORD);
BOOL WINAPI GetModuleHandleExW(DWORD, LPCWSTR, HMODULE*);
HANDLE WINAPI CreateFileW(LPCWSTR, DWORD, DWORD, SECURITY_ATTRIBUTES*, DWORD, DWORD, HANDLE);
BOOL WINAPI ReadFile(HANDLE, LPVOID, DWORD, LPDWORD, LPOVERLAPPED);
BOOL WINAPI CloseHandle(HANDLE);
BOOL WINAPI FreeLibrary(HMODULE);
DWORD WINAPI GetEnvironmentVariableW(LPCWSTR, LPWSTR, DWORD);
BOOL WINAPI DeleteFileW(LPCWSTR);
BOOL WINAPI CreateDirectoryW(LPCWSTR, SECURITY_ATTRIBUTES*);
DWORD WINAPI GetTempPathW(DWORD, LPWSTR);
UINT WINAPI GetTempFileNameW(LPCWSTR, LPCWSTR, UINT, LPWSTR);

/* Interlocked: implemented via GCC builtins */

/* ---- User32 ---- */
BOOL WINAPI IsWindow(HWND);
BOOL WINAPI IsWindowVisible(HWND);
DWORD WINAPI GetWindowThreadProcessId(HWND, LPDWORD);
HDC WINAPI GetDC(HWND);
int WINAPI ReleaseDC(HWND, HDC);
BOOL WINAPI GetClientRect(HWND, LPRECT);
BOOL WINAPI GetWindowRect(HWND, LPRECT);
BOOL WINAPI GetCursorPos(LPPOINT);
BOOL WINAPI ScreenToClient(HWND, LPPOINT);
BOOL WINAPI ShowWindow(HWND, int);
BOOL WINAPI SetForegroundWindow(HWND);
HWND WINAPI SetFocus(HWND);
HWND WINAPI GetNextDlgTabItem(HWND, HWND, BOOL);
SHORT WINAPI GetKeyState(int);
BOOL WINAPI EnableWindow(HWND, BOOL);
BOOL WINAPI MoveWindow(HWND, int, int, int, int, BOOL);
BOOL WINAPI AdjustWindowRectEx(LPRECT, DWORD, BOOL, DWORD);
BOOL WINAPI InvalidateRect(HWND, const RECT*, BOOL);
BOOL WINAPI RedrawWindow(HWND, const RECT*, HRGN, UINT);
LRESULT WINAPI SendMessageW(HWND, UINT, WPARAM, LPARAM);
LRESULT WINAPI DefWindowProcW(HWND, UINT, WPARAM, LPARAM);
HWND WINAPI CreateWindowExW(DWORD, LPCWSTR, LPCWSTR, DWORD, int, int, int, int, HWND, HMENU, HINSTANCE, LPVOID);
BOOL WINAPI DestroyWindow(HWND);
int WINAPI GetWindowTextLengthW(HWND);
int WINAPI GetWindowTextW(HWND, LPWSTR, int);
BOOL WINAPI SetWindowTextW(HWND, LPCWSTR);
LONG_PTR WINAPI SetWindowLongPtrW(HWND, int, LONG_PTR);
LONG_PTR WINAPI GetWindowLongPtrW(HWND, int);
int WINAPI MapWindowPoints(HWND, HWND, LPPOINT, UINT);
ATOM WINAPI RegisterClassW(const WNDCLASSW*);
ATOM WINAPI RegisterClassExW(const WNDCLASSEXW*);
BOOL WINAPI UnregisterClassW(LPCWSTR, HINSTANCE);
HCURSOR WINAPI LoadCursorW(HINSTANCE, LPCWSTR);
int WINAPI MulDiv(int, int, int);
HWND WINAPI GetDlgItem(HWND, int);
BOOL WINAPI GetClassInfoExW(HINSTANCE, LPCWSTR, WNDCLASSEXW*);
int WINAPI GetClassNameW(HWND, LPWSTR, int);

/* ---- GDI32 ---- */
int WINAPI StretchDIBits(HDC, int, int, int, int, int, int, int, int, const void*, const BITMAPINFO*, UINT, DWORD);
HGDIOBJ WINAPI GetStockObject(int);
int WINAPI GetDeviceCaps(HDC, int);
HBITMAP WINAPI CreateDIBSection(HDC, const BITMAPINFO*, UINT, void**, HANDLE, DWORD);
HDC WINAPI CreateCompatibleDC(HDC);
BOOL WINAPI DeleteDC(HDC);
BOOL WINAPI DeleteObject(HGDIOBJ);
HGDIOBJ WINAPI SelectObject(HDC, HGDIOBJ);
BOOL WINAPI BitBlt(HDC, int, int, int, int, HDC, int, int, DWORD);
COLORREF WINAPI GetPixel(HDC, int, int);
BOOL WINAPI GdiFlush(void);
HDC WINAPI GetWindowDC(HWND);

/* ---- String conversion ---- */
int WINAPI WideCharToMultiByte(UINT, DWORD, LPCWSTR, int, LPSTR, int, LPCSTR, LPBOOL);
int WINAPI MultiByteToWideChar(UINT, DWORD, LPCSTR, int, LPWSTR, int);

/* ---- Comctl32 (common controls) ---- */
BOOL WINAPI SetWindowSubclass(HWND, SUBCLASSPROC, UINT_PTR, DWORD_PTR);
BOOL WINAPI RemoveWindowSubclass(HWND, SUBCLASSPROC, UINT_PTR);
LRESULT WINAPI DefSubclassProc(HWND, UINT, WPARAM, LPARAM);
BOOL WINAPI InitCommonControlsEx(const INITCOMMONCONTROLSEX*);

/* ---- BCrypt ---- */
NTSTATUS WINAPI BCryptOpenAlgorithmProvider(BCRYPT_ALG_HANDLE*, LPCWSTR, LPCWSTR, ULONG);
NTSTATUS WINAPI BCryptGetProperty(BCRYPT_HANDLE, LPCWSTR, PUCHAR, ULONG, ULONG*, ULONG);
NTSTATUS WINAPI BCryptCreateHash(BCRYPT_ALG_HANDLE, BCRYPT_HASH_HANDLE*, PUCHAR, ULONG, PUCHAR, ULONG, ULONG);
NTSTATUS WINAPI BCryptHashData(BCRYPT_HASH_HANDLE, PUCHAR, ULONG, ULONG);
NTSTATUS WINAPI BCryptFinishHash(BCRYPT_HASH_HANDLE, PUCHAR, ULONG, ULONG);
NTSTATUS WINAPI BCryptDestroyHash(BCRYPT_HASH_HANDLE);
NTSTATUS WINAPI BCryptCloseAlgorithmProvider(BCRYPT_ALG_HANDLE, ULONG);

/* ---- PSAPI ---- */
BOOL WINAPI GetModuleInformation(HANDLE, HMODULE, LPMODULEINFO, DWORD);

/* ---- DLL entry point type ---- */
/* DllMain is defined by user code, not declared by the OS header */

/* ---- Threading (LoadLibrary uses) ---- */
HMODULE WINAPI LoadLibraryExW(LPCWSTR, HANDLE, DWORD);
HANDLE WINAPI CreateThread(SECURITY_ATTRIBUTES*, SIZE_T, DWORD (WINAPI*)(LPVOID), LPVOID, DWORD, LPDWORD);
DWORD WINAPI WaitForSingleObject(HANDLE, DWORD);
FARPROC WINAPI GetProcAddress(HMODULE, LPCSTR);

#define WAIT_OBJECT_0 0
#define LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR   0x00000100
#define LOAD_LIBRARY_SEARCH_DEFAULT_DIRS   0x00001000

#ifdef __cplusplus
} /* extern "C" */
#endif

/* ================================================================
   Interlocked operations (via GCC builtins)
   ================================================================ */
#ifdef __cplusplus
inline LONG InterlockedCompareExchange(volatile LONG* dest, LONG exchange, LONG comparand) {
    return __sync_val_compare_and_swap(dest, comparand, exchange);
}
inline LONG InterlockedExchange(volatile LONG* dest, LONG value) {
    return __sync_lock_test_and_set(dest, value);
}
#endif

/* ================================================================
   C++ helpers: wide string utilities for re::ReVector<wchar_t>
   Convention: WStr always null-terminated, size() INCLUDES null.
   ================================================================ */
#ifdef __cplusplus

using WStr = re::ReVector<wchar_t>;

inline ReUSize re_wcslen(const wchar_t* s) {
    ReUSize n = 0;
    if (s) while (s[n]) ++n;
    return n;
}

/* Create null-terminated WStr from a wide literal or pointer */
inline WStr make_wstr(const wchar_t* s = nullptr) {
    if (!s || !*s) { WStr v; v.push_back(L'\0'); return v; }
    ReUSize len = re_wcslen(s);
    WStr v;
    v.reserve(len + 1);
    for (ReUSize i = 0; i < len; ++i) v.push_back(s[i]);
    v.push_back(L'\0');
    return v;
}

/* Create null-terminated WStr of given length filled with a char */
inline WStr make_wstr_n(ReUSize len, wchar_t fill = L'\0') {
    WStr v(len + 1, fill);
    v[len] = L'\0';
    return v;
}

/* String length not including null terminator */
inline ReUSize wstr_len(const WStr& s) {
    return (s.size() > 0) ? s.size() - 1 : 0;
}

/* Resize the string portion (keeps null terminator) */
inline void wstr_resize(WStr& s, ReUSize new_len) {
    s.resize(new_len + 1);
    s[new_len] = L'\0';
}

/* Compare wide strings */
inline bool wstr_eq(const WStr& a, const WStr& b) {
    if (wstr_len(a) != wstr_len(b)) return false;
    ReUSize len = wstr_len(a);
    for (ReUSize i = 0; i < len; ++i)
        if (a[i] != b[i]) return false;
    return true;
}
inline bool wstr_eq(const WStr& a, const wchar_t* b) {
    ReUSize blen = re_wcslen(b);
    if (wstr_len(a) != blen) return false;
    for (ReUSize i = 0; i < blen; ++i)
        if (a[i] != b[i]) return false;
    return true;
}

/* Find substring (returns ~ReUSize(0) on not found) */
inline ReUSize wstr_npos() { return ~ReUSize(0); }
inline ReUSize wstr_find(const WStr& haystack, const WStr& needle) {
    ReUSize hlen = wstr_len(haystack), nlen = wstr_len(needle);
    if (nlen == 0) return 0;
    if (nlen > hlen) return wstr_npos();
    for (ReUSize i = 0; i <= hlen - nlen; ++i) {
        bool ok = true;
        for (ReUSize j = 0; j < nlen && ok; ++j)
            if (haystack[i + j] != needle[j]) ok = false;
        if (ok) return i;
    }
    return wstr_npos();
}

/* Concatenation: 2 or 3 pieces (from pointers or WStr) */
inline WStr wstr_cat(const wchar_t* a, ReUSize alen, const wchar_t* b, ReUSize blen) {
    WStr v;
    v.reserve(alen + blen + 1);
    for (ReUSize i = 0; i < alen; ++i) v.push_back(a[i]);
    for (ReUSize i = 0; i < blen; ++i) v.push_back(b[i]);
    v.push_back(L'\0');
    return v;
}
inline WStr wstr_cat(const wchar_t* a, const wchar_t* b) {
    return wstr_cat(a, re_wcslen(a), b, re_wcslen(b));
}
inline WStr wstr_cat(const WStr& a, const wchar_t* b) {
    return wstr_cat(a.data(), wstr_len(a), b, re_wcslen(b));
}
inline WStr wstr_cat(const wchar_t* a, const WStr& b) {
    return wstr_cat(a, re_wcslen(a), b.data(), wstr_len(b));
}
inline WStr wstr_cat(const WStr& a, const WStr& b) {
    return wstr_cat(a.data(), wstr_len(a), b.data(), wstr_len(b));
}

inline WStr wstr_cat3(const wchar_t* a, const wchar_t* b, const wchar_t* c) {
    ReUSize al = re_wcslen(a), bl = re_wcslen(b), cl = re_wcslen(c);
    WStr v;
    v.reserve(al + bl + cl + 1);
    for (ReUSize i = 0; i < al; ++i) v.push_back(a[i]);
    for (ReUSize i = 0; i < bl; ++i) v.push_back(b[i]);
    for (ReUSize i = 0; i < cl; ++i) v.push_back(c[i]);
    v.push_back(L'\0');
    return v;
}

/* Integer to wide string */
inline WStr int_to_wstr(int value) {
    char buf[24];
    re::re_snprintf(buf, sizeof(buf), "%d", value);
    WStr v;
    for (const char* p = buf; *p; ++p) v.push_back(static_cast<wchar_t>(*p));
    v.push_back(L'\0');
    return v;
}

/* Pointer to wide string (for class name generation) */
inline WStr ptr_to_wstr(const void* p) {
    char buf[32];
    re::re_snprintf(buf, sizeof(buf), "%p", p);
    WStr v;
    for (const char* s = buf; *s; ++s) v.push_back(static_cast<wchar_t>(*s));
    v.push_back(L'\0');
    return v;
}

/* Case-folding (ASCII range only, for filter matching) */
inline wchar_t wchar_lower(wchar_t c) {
    return (c >= L'A' && c <= L'Z') ? static_cast<wchar_t>(c + 32) : c;
}
inline WStr wstr_lower(WStr s) {
    for (ReUSize i = 0; i < wstr_len(s); ++i)
        s[i] = wchar_lower(s[i]);
    return s;
}

#endif /* __cplusplus */

#endif /* RE_WIN32_FREESTANDING_COMPAT_H */
