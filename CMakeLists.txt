cmake_minimum_required(VERSION 3.16)

project(elements VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appelements
    main.cpp
)


qt_add_qml_module(appelements
    URI elements
    VERSION 1.0
    QML_FILES main.qml TableCell.qml Table.qml data.js
)

target_compile_definitions(appelements
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appelements
    PRIVATE Qt6::Quick)
