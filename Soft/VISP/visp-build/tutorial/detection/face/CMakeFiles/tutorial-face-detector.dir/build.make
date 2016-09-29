# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/force/Programmation/ESIR2/Soft/VISP/visp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/force/Programmation/ESIR2/Soft/VISP/visp-build

# Include any dependencies generated for this target.
include tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/depend.make

# Include the progress variables for this target.
include tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/progress.make

# Include the compile flags for this target's objects.
include tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/flags.make

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o: tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/flags.make
tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/detection/face/tutorial-face-detector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/detection/face && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/detection/face/tutorial-face-detector.cpp

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/detection/face && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/detection/face/tutorial-face-detector.cpp > CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.i

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/detection/face && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/detection/face/tutorial-face-detector.cpp -o CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.s

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.requires:

.PHONY : tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.requires

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.provides: tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.requires
	$(MAKE) -f tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/build.make tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.provides.build
.PHONY : tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.provides

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.provides.build: tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o


# Object files for target tutorial-face-detector
tutorial__face__detector_OBJECTS = \
"CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o"

# External object files for target tutorial-face-detector
tutorial__face__detector_EXTERNAL_OBJECTS =

tutorial/detection/face/tutorial-face-detector: tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o
tutorial/detection/face/tutorial-face-detector: tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/build.make
tutorial/detection/face/tutorial-face-detector: lib/libvisp_vs.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_tt_mi.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_tt.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_mbt.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_klt.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_robot.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_ar.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_detection.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_gui.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_sensor.so.3.0.1
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libdc1394.so
tutorial/detection/face/tutorial-face-detector: lib/libvisp_vision.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_visual_features.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_me.so.3.0.1
tutorial/detection/face/tutorial-face-detector: lib/libvisp_blob.so.3.0.1
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libSM.so
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libICE.so
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libX11.so
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libXext.so
tutorial/detection/face/tutorial-face-detector: lib/libvisp_io.so.3.0.1
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libjpeg.so
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libpng.so
tutorial/detection/face/tutorial-face-detector: lib/libvisp_core.so.3.0.1
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libpthread.so
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libz.so
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libm.so
tutorial/detection/face/tutorial-face-detector: /usr/lib/i386-linux-gnu/libnsl.so
tutorial/detection/face/tutorial-face-detector: tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tutorial-face-detector"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/detection/face && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial-face-detector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/build: tutorial/detection/face/tutorial-face-detector

.PHONY : tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/build

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/requires: tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/tutorial-face-detector.cpp.o.requires

.PHONY : tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/requires

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/detection/face && $(CMAKE_COMMAND) -P CMakeFiles/tutorial-face-detector.dir/cmake_clean.cmake
.PHONY : tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/clean

tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/detection/face /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/detection/face /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tutorial/detection/face/CMakeFiles/tutorial-face-detector.dir/depend
