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
include modules/vision/CMakeFiles/testKeyPoint.dir/depend.make

# Include the progress variables for this target.
include modules/vision/CMakeFiles/testKeyPoint.dir/progress.make

# Include the compile flags for this target's objects.
include modules/vision/CMakeFiles/testKeyPoint.dir/flags.make

modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o: modules/vision/CMakeFiles/testKeyPoint.dir/flags.make
modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/test/key-point/testKeyPoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/vision && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/test/key-point/testKeyPoint.cpp

modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/vision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/test/key-point/testKeyPoint.cpp > CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.i

modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/vision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision/test/key-point/testKeyPoint.cpp -o CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.s

modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.requires:

.PHONY : modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.requires

modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.provides: modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.requires
	$(MAKE) -f modules/vision/CMakeFiles/testKeyPoint.dir/build.make modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.provides.build
.PHONY : modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.provides

modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.provides.build: modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o


# Object files for target testKeyPoint
testKeyPoint_OBJECTS = \
"CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o"

# External object files for target testKeyPoint
testKeyPoint_EXTERNAL_OBJECTS =

modules/vision/testKeyPoint: modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o
modules/vision/testKeyPoint: modules/vision/CMakeFiles/testKeyPoint.dir/build.make
modules/vision/testKeyPoint: lib/libvisp_mbt.so.3.0.1
modules/vision/testKeyPoint: lib/libvisp_klt.so.3.0.1
modules/vision/testKeyPoint: lib/libvisp_ar.so.3.0.1
modules/vision/testKeyPoint: lib/libvisp_vision.so.3.0.1
modules/vision/testKeyPoint: lib/libvisp_gui.so.3.0.1
modules/vision/testKeyPoint: lib/libvisp_io.so.3.0.1
modules/vision/testKeyPoint: lib/libvisp_visual_features.so.3.0.1
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libm.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libnsl.so
modules/vision/testKeyPoint: lib/libvisp_me.so.3.0.1
modules/vision/testKeyPoint: lib/libvisp_blob.so.3.0.1
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libSM.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libICE.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libX11.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libXext.so
modules/vision/testKeyPoint: lib/libvisp_core.so.3.0.1
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libpthread.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libjpeg.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libpng.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libz.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libm.so
modules/vision/testKeyPoint: /usr/lib/i386-linux-gnu/libnsl.so
modules/vision/testKeyPoint: modules/vision/CMakeFiles/testKeyPoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testKeyPoint"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/vision && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testKeyPoint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/vision/CMakeFiles/testKeyPoint.dir/build: modules/vision/testKeyPoint

.PHONY : modules/vision/CMakeFiles/testKeyPoint.dir/build

modules/vision/CMakeFiles/testKeyPoint.dir/requires: modules/vision/CMakeFiles/testKeyPoint.dir/test/key-point/testKeyPoint.cpp.o.requires

.PHONY : modules/vision/CMakeFiles/testKeyPoint.dir/requires

modules/vision/CMakeFiles/testKeyPoint.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/vision && $(CMAKE_COMMAND) -P CMakeFiles/testKeyPoint.dir/cmake_clean.cmake
.PHONY : modules/vision/CMakeFiles/testKeyPoint.dir/clean

modules/vision/CMakeFiles/testKeyPoint.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/vision /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/vision /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/vision/CMakeFiles/testKeyPoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/vision/CMakeFiles/testKeyPoint.dir/depend
