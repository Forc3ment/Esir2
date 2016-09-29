# Install script for directory: /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3" TYPE FILE FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/include/visp3/visp_vision.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_vision.so.3.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_vision.so.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_vision.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/lib/libvisp_vision.so.3.0.1"
    "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/lib/libvisp_vision.so.3.0"
    "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/lib/libvisp_vision.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_vision.so.3.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_vision.so.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvisp_vision.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/force/Programmation/ESIR2/Soft/VISP/visp-build/lib:"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpPoseException.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpPoseFeatures.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpKeyPointSurf.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpXmlConfigParserKeyPoint.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpCalibrationException.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpPose.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpLevenbergMarquartd.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpHomography.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpPlanarObjectDetector.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpFernClassifier.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpBasicKeyPoint.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpCalibration.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visp3/vision" TYPE FILE OPTIONAL FILES "/home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/include/visp3/vision/vpKeyPoint.h")
endif()
