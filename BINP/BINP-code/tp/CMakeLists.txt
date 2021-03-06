#############################################################################
#
# $Id: CMakeLists.txt,v 1.2 2007/02/06 15:37:09 fspindle Exp $
#
# Copyright (C) 2007 Inria. All rights reserved.
#
# This software was developed at:
# IRISA/INRIA Rennes
# Projet Lagadic
# Campus Universitaire de Beaulieu
# 35042 Rennes Cedex
# http://www.irisa.fr/lagadic
#
# This file is part of the ViSP software.
#
# This file may be distributed under the terms of the Q Public License
# as defined by Trolltech AS of Norway and appearing in the file
# LICENSE included in the packaging of this file.
#
# Licensees holding valid ViSP Professional Edition licenses may
# use this file in accordance with the ViSP Commercial License
# Agreement provided with the Software.
#
# This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
# WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
#
# This small project under CMake shows how to use ViSP as a third party library
# in this development.
#
# Author: Fabien Spindler email:Fabien.Spindler@irisa.fr
#############################################################################

# SOURCE variable corresponds to the list of all the sources to build binaries.
# The generate binary name comes by removing the .cpp extension to
# the source name.
#
# If you want to add/remove a source, modify here
SET (SOURCE
  tp0-exemple.cpp
  tp1.cpp
  tp2-v0.cpp
  tp3.cpp
  tp4.cpp
  tp5.cpp
  tp6.cpp
  tp7.cpp
)

# rule for binary build
FOREACH(source ${SOURCE})
  # Compute the name of the binary to create
  GET_FILENAME_COMPONENT(binary ${source} NAME_WE)

  # From source compile the binary and add link rules
  ADD_EXECUTABLE(${binary} ${source})
  TARGET_LINK_LIBRARIES(${binary} 
    ${PROJECT_INTERN_LIBS} ${PROJECT_EXTERN_LIBS}
    )
  # Add test
  ADD_TEST(${binary} ${binary})

ENDFOREACH(source)

# customize clean target 
SET_DIRECTORY_PROPERTIES(PROPERTIES 
  ADDITIONAL_MAKE_CLEAN_FILES "core*;*~;gmon.out;DartTestfile.txt"
)

