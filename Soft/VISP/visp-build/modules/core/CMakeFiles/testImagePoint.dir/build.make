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
include modules/core/CMakeFiles/testImagePoint.dir/depend.make

# Include the progress variables for this target.
include modules/core/CMakeFiles/testImagePoint.dir/progress.make

# Include the compile flags for this target's objects.
include modules/core/CMakeFiles/testImagePoint.dir/flags.make

modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o: modules/core/CMakeFiles/testImagePoint.dir/flags.make
modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/core/test/image/testImagePoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/core && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/core/test/image/testImagePoint.cpp

modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/core/test/image/testImagePoint.cpp > CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.i

modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/core/test/image/testImagePoint.cpp -o CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.s

modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.requires:

.PHONY : modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.requires

modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.provides: modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.requires
	$(MAKE) -f modules/core/CMakeFiles/testImagePoint.dir/build.make modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.provides.build
.PHONY : modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.provides

modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.provides.build: modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o


# Object files for target testImagePoint
testImagePoint_OBJECTS = \
"CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o"

# External object files for target testImagePoint
testImagePoint_EXTERNAL_OBJECTS =

modules/core/testImagePoint: modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o
modules/core/testImagePoint: modules/core/CMakeFiles/testImagePoint.dir/build.make
modules/core/testImagePoint: lib/libvisp_io.so.3.0.1
modules/core/testImagePoint: lib/libvisp_gui.so.3.0.1
modules/core/testImagePoint: lib/libvisp_core.so.3.0.1
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libm.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libnsl.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libjpeg.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libpng.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libpthread.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libz.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libSM.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libICE.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libX11.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libXext.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libm.so
modules/core/testImagePoint: /usr/lib/i386-linux-gnu/libnsl.so
modules/core/testImagePoint: modules/core/CMakeFiles/testImagePoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testImagePoint"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testImagePoint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/core/CMakeFiles/testImagePoint.dir/build: modules/core/testImagePoint

.PHONY : modules/core/CMakeFiles/testImagePoint.dir/build

modules/core/CMakeFiles/testImagePoint.dir/requires: modules/core/CMakeFiles/testImagePoint.dir/test/image/testImagePoint.cpp.o.requires

.PHONY : modules/core/CMakeFiles/testImagePoint.dir/requires

modules/core/CMakeFiles/testImagePoint.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/core && $(CMAKE_COMMAND) -P CMakeFiles/testImagePoint.dir/cmake_clean.cmake
.PHONY : modules/core/CMakeFiles/testImagePoint.dir/clean

modules/core/CMakeFiles/testImagePoint.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/core /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/core /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/core/CMakeFiles/testImagePoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/core/CMakeFiles/testImagePoint.dir/depend
