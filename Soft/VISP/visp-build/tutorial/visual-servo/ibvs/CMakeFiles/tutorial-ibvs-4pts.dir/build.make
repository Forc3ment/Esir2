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
include tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/depend.make

# Include the progress variables for this target.
include tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/progress.make

# Include the compile flags for this target's objects.
include tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/flags.make

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o: tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/flags.make
tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/visual-servo/ibvs/tutorial-ibvs-4pts.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/visual-servo/ibvs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/visual-servo/ibvs/tutorial-ibvs-4pts.cpp

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/visual-servo/ibvs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/visual-servo/ibvs/tutorial-ibvs-4pts.cpp > CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.i

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/visual-servo/ibvs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/visual-servo/ibvs/tutorial-ibvs-4pts.cpp -o CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.s

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.requires:

.PHONY : tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.requires

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.provides: tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.requires
	$(MAKE) -f tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/build.make tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.provides.build
.PHONY : tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.provides

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.provides.build: tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o


# Object files for target tutorial-ibvs-4pts
tutorial__ibvs__4pts_OBJECTS = \
"CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o"

# External object files for target tutorial-ibvs-4pts
tutorial__ibvs__4pts_EXTERNAL_OBJECTS =

tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/build.make
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_tt_mi.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_tt.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_mbt.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_klt.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_detection.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_ar.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_vs.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_vision.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_robot.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_sensor.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libdc1394.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_visual_features.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_me.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_blob.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_gui.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libSM.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libICE.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libX11.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libXext.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_io.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libjpeg.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libpng.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: lib/libvisp_core.so.3.0.1
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libpthread.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libz.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libm.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: /usr/lib/i386-linux-gnu/libnsl.so
tutorial/visual-servo/ibvs/tutorial-ibvs-4pts: tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tutorial-ibvs-4pts"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/visual-servo/ibvs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial-ibvs-4pts.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/build: tutorial/visual-servo/ibvs/tutorial-ibvs-4pts

.PHONY : tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/build

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/requires: tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/tutorial-ibvs-4pts.cpp.o.requires

.PHONY : tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/requires

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/visual-servo/ibvs && $(CMAKE_COMMAND) -P CMakeFiles/tutorial-ibvs-4pts.dir/cmake_clean.cmake
.PHONY : tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/clean

tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/tutorial/visual-servo/ibvs /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/visual-servo/ibvs /home/force/Programmation/ESIR2/Soft/VISP/visp-build/tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tutorial/visual-servo/ibvs/CMakeFiles/tutorial-ibvs-4pts.dir/depend
