add_library(CrochetVisualizer
    CrochetVisualizer/src/EntryPoint.cpp

    CrochetVisualizer/src/Application.hpp
    CrochetVisualizer/src/Application.cpp

    CrochetVisualizer/src/LayerManager.hpp
    CrochetVisualizer/src/LayerManager.cpp

    CrochetVisualizer/src/Log/Log.hpp
    CrochetVisualizer/src/Log/Log.cpp

    CrochetVisualizer/src/Core.hpp
    CrochetVisualizer/src/CrochetVisualizer.hpp
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
