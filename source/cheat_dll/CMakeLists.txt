cmake_minimum_required(VERSION 3.20)
project(cheat_reconstructed LANGUAGES CXX)

if(NOT WIN32 OR NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
    message(FATAL_ERROR "This target requires a Windows x64 compiler")
endif()

# Collect all reconstructed analysis sources (excluding checks/fixture files)
file(GLOB_RECURSE re_analysis_sources CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/../reconstructed/*.cpp")
list(FILTER re_analysis_sources EXCLUDE REGEX "_checks\\.cpp$")
list(FILTER re_analysis_sources EXCLUDE REGEX "_fixture\\.cpp$")
list(FILTER re_analysis_sources EXCLUDE REGEX "analysis_checks\\.cpp$")
# Exclude the hooks DLL and kernel driver sources (separate targets)
list(FILTER re_analysis_sources EXCLUDE REGEX "hooks_dll/")
list(FILTER re_analysis_sources EXCLUDE REGEX "kernel_driver/")

# The cheat DLL: runtime entry + game init + callback bindings + all analysis code
add_library(cheat SHARED
    ../reconstructed/runtime_dll_entry.cpp
    ../reconstructed/game_init_runtime.cpp
    ../reconstructed/runtime_callback_bindings.cpp
    ${re_analysis_sources}
)

target_compile_features(cheat PRIVATE cxx_std_20)
target_include_directories(cheat PRIVATE
    ../reconstructed
    ../freestanding/runtime
)
target_compile_definitions(cheat PRIVATE
    RE_CHEAT_DLL_BUILD
    _WIN32_WINNT=0x0A00
    NOMINMAX
)
target_link_libraries(cheat PRIVATE
    user32 gdi32 bcrypt psapi ntdll
)
set_target_properties(cheat PROPERTIES
    PREFIX ""
    OUTPUT_NAME "cheat"
    SUFFIX ".dll"
)

if(MINGW)
    target_link_options(cheat PRIVATE
        -static -static-libgcc -static-libstdc++
        -Wl,--no-undefined
    )
endif()

if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(cheat PRIVATE
        -Wall -Wextra -Wpedantic
        -Wno-unused-parameter -Wno-sign-compare
        -Wno-unused-function -Wno-unused-variable
        -Wno-unused-value -Wno-unused-but-set-variable
        -Wno-narrowing -Wno-return-type
        -ffp-contract=off
    )
endif()

# Hooks DLL: RakNet packet crypto + Steam masking
file(GLOB hooks_sources CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/../reconstructed/hooks_dll/*.cpp")
add_library(hooks_dll SHARED ${hooks_sources})
target_compile_features(hooks_dll PRIVATE cxx_std_20)
target_include_directories(hooks_dll PRIVATE
    ../reconstructed
    ../reconstructed/hooks_dll
    ../freestanding/runtime
)
target_compile_definitions(hooks_dll PRIVATE
    RE_HOOKS_DLL_BUILD
    _WIN32_WINNT=0x0A00
    NOMINMAX
)
target_link_libraries(hooks_dll PRIVATE bcrypt ws2_32)
set_target_properties(hooks_dll PROPERTIES
    PREFIX ""
    OUTPUT_NAME "simple_raknet_hooks"
    SUFFIX ".dll"
)

if(MINGW)
    target_link_options(hooks_dll PRIVATE -static -static-libgcc -static-libstdc++)
endif()

if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(hooks_dll PRIVATE
        -Wall -Wextra -Wpedantic
        -Wno-unused-parameter -Wno-sign-compare
        -Wno-unused-function -Wno-unused-variable
        -ffp-contract=off
    )
endif()

# Copy offsets.json next to the DLL
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/../windows_base/offsets.json"
    "${CMAKE_CURRENT_BINARY_DIR}/offsets.json"
    COPYONLY
)
