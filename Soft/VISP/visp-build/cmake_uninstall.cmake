#############################################################################
#
# This file is part of the ViSP software.
# Copyright (C) 2005 - 2015 by Inria. All rights reserved.
#
# This software is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# ("GPL") version 2 as published by the Free Software Foundation.
# See the file LICENSE.txt at the root directory of this source
# distribution for additional information about the GNU GPL.
#
# For using ViSP with software that can not be combined with the GNU
# GPL, please contact Inria about acquiring a ViSP Professional
# Edition License.
#
# See http://visp.inria.fr for more information.
#
# This software was developed at:
# Inria Rennes - Bretagne Atlantique
# Campus Universitaire de Beaulieu
# 35042 Rennes Cedex
# France
#
# If you have questions regarding the use of this file, please contact
# Inria at visp@inria.fr
#
# This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
# WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
#
# Description:
# Comes from http://www.cmake.org/Wiki/CMake_FAQ to create an uninstall target
#
# Authors:
# Fabien Spindler
#
#############################################################################

IF(NOT EXISTS "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/install_manifest.txt")
  #MESSAGE("Cannot find install manifest: \"/home/force/Programmation/ESIR2/Soft/VISP/visp-build/install_manifest.txt\"")
  MESSAGE("There is no files to uninstall")
ELSE(NOT EXISTS "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/install_manifest.txt")
  FILE(READ "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/install_manifest.txt" files)
  STRING(REGEX REPLACE "\n" ";" files "${files}")
  FOREACH(file ${files})
    MESSAGE(STATUS "Uninstalling \"${file}\"")
    IF(EXISTS "${file}")
      EXEC_PROGRAM(
        "/usr/bin/cmake" ARGS "-E remove \"${file}\""
        OUTPUT_VARIABLE rm_out
        RETURN_VALUE rm_retval
        )
      IF("${rm_retval}" STREQUAL 0)
      ELSE("${rm_retval}" STREQUAL 0)
        MESSAGE(FATAL_ERROR "Problem when removing \"${file}\"")
      ENDIF("${rm_retval}" STREQUAL 0)
    ELSE(EXISTS "${file}")
      MESSAGE(STATUS "File \"${file}\" does not exist.")
    ENDIF(EXISTS "${file}")
  ENDFOREACH(file)

ENDIF(NOT EXISTS "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/install_manifest.txt")
