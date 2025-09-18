add_executable(VisualizerApp
    VisualizerApp/src/App.cpp
    VisualizerApp/src/App.hpp
)

target_link_libraries(VisualizerApp PRIVATE
    CrochetVisualizer
)

target_include_directories(VisualizerApp PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/VisualizerApp/src
    ${CMAKE_CURRENT_SOURCE_DIR}/CrochetVisualizer/src
)

set_target_properties(VisualizerApp PROPERTIES
    OUTPUT_NAME VisualizerApp
    ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_DIR}/VisualizerApp
    LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_DIR}/VisualizerApp
    RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}/VisualizerApp
)

target_compile_definitions(VisualizerApp PRIVATE
    CV_LOGGER
    CV_ASSERT
)
