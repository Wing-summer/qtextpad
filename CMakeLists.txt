# This file is part of QTextPad.
#
# QTextPad is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# QTextPad is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with QTextPad.  If not, see <http://www.gnu.org/licenses/>.

cmake_minimum_required(VERSION 3.10)
project(qtextpad)

set(CMAKE_AUTOMOC TRUE)
set(CMAKE_AUTORCC TRUE)
set(CMAKE_CXX_STANDARD 17)

include(FeatureSummary)

if(NOT DEFINED QT_VERSION_MAJOR)
    find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
endif()
find_package(Qt${QT_VERSION_MAJOR} 5.15.2 REQUIRED COMPONENTS
    Core Widgets PrintSupport Network)

find_package(KF${QT_VERSION_MAJOR}SyntaxHighlighting 5.56 REQUIRED)
set_package_properties(KF${QT_VERSION_MAJOR}SyntaxHighlighting PROPERTIES
    URL "https://community.kde.org/Frameworks"
    DESCRIPTION "Syntax Highlighting framework for Qt${QT_VERSION_MAJOR}"
    TYPE REQUIRED)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES ".*Clang")
    set(CMAKE_CXX_FLAGS "-Wall -Wextra ${CMAKE_CXX_FLAGS}")
endif()

# Force conversions to/from 8-bit text to be explicit
add_definitions(-DQT_NO_CAST_FROM_ASCII -DQT_NO_CAST_TO_ASCII)

# NOTE: Set QTEXTPAD_WIDGET_ONLY in your project before including qtextpad to
# build only the editor widget.

if(NOT QTEXTPAD_WIDGET_ONLY)
    set(APP_MAJOR 1)
    set(APP_MINOR 13)
    set(APP_VERSION "${APP_MAJOR}.${APP_MINOR}-pre")
    if(EXISTS "${CMAKE_SOURCE_DIR}/.git")
        find_program(GIT_EXECUTABLE NAMES git git.cmd)
        mark_as_advanced(GIT_EXECUTABLE)
        if(GIT_EXECUTABLE)
            execute_process(COMMAND ${GIT_EXECUTABLE} describe --dirty
                OUTPUT_VARIABLE APP_VERSION_GIT
                OUTPUT_STRIP_TRAILING_WHITESPACE
                WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})
            if(NOT "${APP_VERSION_GIT}" STREQUAL "${APP_VERSION}")
                set(APP_VERSION "${APP_VERSION} (${APP_VERSION_GIT})")
            endif()
        endif()
    endif()
endif()

add_subdirectory(lib)
if(NOT QTEXTPAD_WIDGET_ONLY)
    add_subdirectory(src)
endif()

if(NOT QTEXTPAD_WIDGET_ONLY)
    if(APPLE)
        set_target_properties(qtextpad PROPERTIES
            OUTPUT_NAME QTextPad
            MACOSX_RPATH TRUE
            MACOSX_BUNDLE_NAME QTextPad
            MACOSX_BUNDLE_INFO_STRING "QTextPad ${APP_VERSION}"
            MACOSX_BUNDLE_LONG_VERSION_STRING "QTextPad ${APP_VERSION}"
            MACOSX_BUNDLE_SHORT_VERSION_STRING "${APP_VERSION}"
            MACOSX_BUNDLE_COPYRIGHT "Copyright (C) 2020 Michael Hansen"
            MACOSX_BUNDLE_ICON_FILE "qtextpad.icns"
        )

        install(TARGETS qtextpad BUNDLE DESTINATION .)
        install(FILES src/icons/qtextpad.icns DESTINATION QTextPad.app/Contents/Resources)
    elseif(WIN32)
        install(TARGETS qtextpad RUNTIME DESTINATION .)
    else()
        install(TARGETS qtextpad RUNTIME DESTINATION bin)
        install(FILES qtextpad.desktop DESTINATION share/applications)
        install(FILES src/icons/qtextpad-128.png DESTINATION share/pixmaps
                RENAME qtextpad.png)
    endif()
endif()

feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)
