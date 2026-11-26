file(STRINGS "${CMAKE_CURRENT_SOURCE_DIR}/reconstruction_sources.txt" scene_sources)
list(TRANSFORM scene_sources PREPEND "${CMAKE_CURRENT_SOURCE_DIR}/../reconstructed/")
add_library(scene_reconstruction STATIC ${scene_sources})
target_include_directories(scene_reconstruction PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/../reconstructed")
target_compile_features(scene_reconstruction PUBLIC cxx_std_20)
add_executable(owned_scene host.cpp scene.cpp menu.cpp esp.cpp resources.cpp resource_checks.cpp
    semantic_checks.cpp frame.cpp frame_checks.cpp esp_root_checks.cpp menu_lifecycle_checks.cpp
    owned_client.cpp)
target_link_libraries(owned_scene PRIVATE scene_reconstruction)
target_compile_features(owned_scene PRIVATE cxx_std_20)
if(WIN32)
    target_link_libraries(owned_scene PRIVATE user32 gdi32)
endif()
if(MINGW)
    target_link_options(owned_scene PRIVATE -static -static-libgcc -static-libstdc++)
endif()
if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    foreach(target scene_reconstruction owned_scene)
        target_compile_options(${target} PRIVATE -Wall -Wextra -Wpedantic -Werror
            -D_GLIBCXX_ASSERTIONS -ffp-contract=off)
    endforeach()
endif()
add_test(NAME owned_internal_menu_esp COMMAND owned_scene --self-test
    --profile "${CMAKE_CURRENT_SOURCE_DIR}/../windows_base/offsets.json"
    --output "${CMAKE_CURRENT_BINARY_DIR}/runtime")
