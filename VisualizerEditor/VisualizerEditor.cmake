add_executable(VisualizerEditor
    VisualizerEditor/src/Editor.cpp
    VisualizerEditor/src/Editor.hpp
)

target_link_libraries(VisualizerEditor PRIVATE
    CrochetVisualizer
)

target_include_directories(VisualizerEditor PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/VisualizerEditor/src
    ${CMAKE_CURRENT_SOURCE_DIR}/CrochetVisualizer/src
)

set_target_properties(VisualizerEditor PROPERTIES
    OUTPUT_NAME VisualizerEditor
    ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_DIR}/VisualizerEditor
    LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_DIR}/VisualizerEditor
    RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}/VisualizerEditor
)

target_compile_definitions(VisualizerEditor PRIVATE
    CV_LOGGER
    CV_ASSERT
)
