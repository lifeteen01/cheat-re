#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
RE_DIR="$SCRIPT_DIR/../reconstructed"
FREE_DIR="$SCRIPT_DIR/../freestanding/runtime"
TOOLCHAIN="$SCRIPT_DIR/../../dump_analysis/semantic_reconstruction/windows_base/toolchain"
CXX="$TOOLCHAIN/usr/bin/x86_64-w64-mingw32-g++-posix"
BUILD_DIR="$SCRIPT_DIR/../../dump_analysis/semantic_reconstruction/local_build/cheat_dll"

mkdir -p "$BUILD_DIR"

# Collect all analysis sources (excluding checks/fixture files and sub-targets)
ANALYSIS_SOURCES=()
while IFS= read -r f; do
    base="$(basename "$f")"
    # Exclude check files, fixture files, and sub-target directories
    case "$base" in
        *_checks.cpp|*_fixture.cpp|analysis_checks.cpp) continue ;;
        *) ;;
    esac
    case "$f" in
        */hooks_dll/*|*/kernel_driver/*) continue ;;
    esac
    ANALYSIS_SOURCES+=("$f")
done < <(find "$RE_DIR" -maxdepth 1 -name '*.cpp' | sort)

echo "Building cheat.dll with ${#ANALYSIS_SOURCES[@]} source files..."

# Build all object files in parallel
OBJECTS=()
compile_one() {
    local src="$1"
    local obj="$BUILD_DIR/$(basename "$src" .cpp).o"
    "$CXX" -std=c++20 -c -O2 \
        -I"$RE_DIR" -I"$FREE_DIR" \
        -DRE_CHEAT_DLL_BUILD -D_WIN32_WINNT=0x0A00 -DNOMINMAX \
        -Wall -Wextra -Wpedantic \
        -Wno-unused-parameter -Wno-sign-compare -Wno-unused-function \
        -Wno-unused-variable -Wno-unused-value -Wno-unused-but-set-variable \
        -Wno-narrowing -Wno-return-type -Wno-pedantic \
        -Wno-ignored-qualifiers -Wno-range-loop-construct \
        -Wno-uninitialized -Wno-maybe-uninitialized \
        -Wno-array-bounds -Wno-stringop-overflow -Wno-stringop-overread \
        -ffp-contract=off \
        -o "$obj" "$src" 2>&1
    echo "$obj"
}

export -f compile_one
export CXX BUILD_DIR RE_DIR FREE_DIR

FAIL=0
for src in "${ANALYSIS_SOURCES[@]}"; do
    obj="$BUILD_DIR/$(basename "$src" .cpp).o"
    OBJECTS+=("$obj")
    echo "  CC $(basename "$src")"
    if ! "$CXX" -std=c++20 -c -O2 \
        -I"$RE_DIR" -I"$FREE_DIR" \
        -DRE_CHEAT_DLL_BUILD -D_WIN32_WINNT=0x0A00 -DNOMINMAX \
        -Wno-unused-parameter -Wno-sign-compare -Wno-unused-function \
        -Wno-unused-variable -Wno-unused-value -Wno-unused-but-set-variable \
        -Wno-narrowing -Wno-return-type -Wno-pedantic \
        -Wno-ignored-qualifiers -Wno-range-loop-construct \
        -Wno-uninitialized -Wno-maybe-uninitialized \
        -Wno-array-bounds -Wno-stringop-overflow -Wno-stringop-overread \
        -ffp-contract=off -fext-numeric-literals \
        -o "$obj" "$src" 2>&1; then
        echo "FAILED: $src"
        FAIL=1
    fi
done

if [ "$FAIL" -eq 1 ]; then
    echo "Build failed — fix errors above"
    exit 1
fi

echo "Linking cheat.dll..."
"$CXX" -shared -o "$BUILD_DIR/cheat.dll" "${OBJECTS[@]}" \
    -static -static-libgcc -static-libstdc++ \
    -luser32 -lgdi32 -lbcrypt -lpsapi -lntdll \
    -Wl,--no-undefined 2>&1

echo "Built: $BUILD_DIR/cheat.dll"
ls -la "$BUILD_DIR/cheat.dll"
