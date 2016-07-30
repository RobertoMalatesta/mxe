# This file is part of MXE.
# See index.html for further information.

message("== Custom MXE File: " ${CMAKE_CURRENT_LIST_FILE})

if(NOT PKG_CONFIG_FOUND)
  find_package(PkgConfig REQUIRED)
endif()

pkg_check_modules(FREETYPE freetype2)

#For compatibility
set(FREETYPE_LIBRARY ${FREETYPE_LIBRARIES})
set(FREETYPE_INCLUDE_DIR ${FREETYPE_INCLUDE_DIRS})
