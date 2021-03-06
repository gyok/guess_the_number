cmake_minimum_required(VERSION 3.5)

project(guees_the_number LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

if(ANDROID)
    add_library(guees_the_number SHARED main.cpp rsnd.cpp rsnd.h qml.qrc)
else()
    add_executable(guees_the_number main.cpp rsnd.cpp rsnd.h qml.qrc)
endif()

target_compile_definitions(guees_the_number
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(guees_the_number
  PRIVATE Qt5::Core Qt5::Quick)

# QtCreator supports the following variables for Android, which are identical to qmake Android variables.
# Check http://doc.qt.io/qt-5/deployment-android.html for more information.
# These variables must use CACHE, otherwise QtCreator won't see them.

#if(ANDROID)
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android" CACHE INTERNAL "")
#    if (ANDROID_ABI STREQUAL "armeabi-v7a")
#        set(ANDROID_EXTRA_LIBS ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libcrypto.so ${CMAKE_CURRENT_SOURCE_DIR}/path/to/libssl.so CACHE INTERNAL "")
#    endif()
#endif()
