cmake_minimum_required(VERSION 3.20)
project(re_windows_base LANGUAGES CXX)
if(NOT WIN32 OR NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
    message(FATAL_ERROR "This target requires a Windows x64 compiler")
endif()
add_library(re_base SHARED base_dll.cpp base_frame.cpp base_menu.cpp
    ../reconstructed/drawlist_core_commands.cpp ../reconstructed/drawlist_core_channels.cpp
    ../reconstructed/offset_profile.cpp ../reconstructed/offset_catalog.cpp
    ../reconstructed/offset_profile_bindings.cpp)
target_compile_features(re_base PRIVATE cxx_std_20)
target_include_directories(re_base PRIVATE ../reconstructed)
target_compile_definitions(re_base PRIVATE RE_BASE_BUILD _WIN32_WINNT=0x0A00)
target_link_libraries(re_base PRIVATE user32 gdi32 comctl32 bcrypt psapi)
set_target_properties(re_base PROPERTIES PREFIX "")
add_executable(windows_host_checks windows_host_checks.cpp)
target_compile_features(windows_host_checks PRIVATE cxx_std_20)
target_include_directories(windows_host_checks PRIVATE ../reconstructed)
target_compile_definitions(windows_host_checks PRIVATE _WIN32_WINNT=0x0A00)
target_link_libraries(windows_host_checks PRIVATE user32 gdi32 comctl32)
add_custom_command(TARGET re_base POST_BUILD COMMAND "${CMAKE_COMMAND}"
    "-DPROFILE_SOURCE=${CMAKE_CURRENT_SOURCE_DIR}/offsets.json"
    "-DPROFILE_DEST=$<TARGET_FILE_DIR:re_base>/offsets.json"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/copy_profile.cmake")
if(MINGW)
    target_link_options(re_base PRIVATE -static -static-libgcc -static-libstdc++ -Wl,--no-undefined)
    target_link_options(windows_host_checks PRIVATE -municode -static -static-libgcc -static-libstdc++)
endif()
if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    foreach(target re_base windows_host_checks)
        target_compile_options(${target} PRIVATE -Wall -Wextra -Wpedantic -Werror -ffp-contract=off)
    endforeach()
endif()
# Run only this analyst-owned host. Never use a game or unpacked sample as host.
enable_testing()
add_test(NAME owned_windows_lifecycle COMMAND windows_host_checks "$<TARGET_FILE:re_base>")
