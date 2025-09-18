add_library(CrochetVisualizer
    CrochetVisualizer/src/EntryPoint.cpp

    CrochetVisualizer/src/Application.hpp
    CrochetVisualizer/src/Application.cpp
)

# target_link_libraries(CrochetVisualizer PRIVATE
# )

target_include_directories(CrochetVisualizer PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/CrochetVisualizer/src
)

set_target_properties(CrochetVisualizer PROPERTIES
    OUTPUT_NAME CrochetVisualizer
    ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_DIR}/CrochetVisualizer
    LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_DIR}/CrochetVisualizer
    RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}/CrochetVisualizer
)

target_compile_definitions(CrochetVisualizer PRIVATE
    CV_LOGGER
    CV_ASSERT
)
