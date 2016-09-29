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
include modules/visual_features/CMakeFiles/testPoint.dir/depend.make

# Include the progress variables for this target.
include modules/visual_features/CMakeFiles/testPoint.dir/progress.make

# Include the compile flags for this target's objects.
include modules/visual_features/CMakeFiles/testPoint.dir/flags.make

modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o: modules/visual_features/CMakeFiles/testPoint.dir/flags.make
modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/visual_features/test/feature/testPoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/visual_features && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/visual_features/test/feature/testPoint.cpp

modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/visual_features && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/visual_features/test/feature/testPoint.cpp > CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.i

modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/visual_features && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/visual_features/test/feature/testPoint.cpp -o CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.s

modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.requires:

.PHONY : modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.requires

modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.provides: modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.requires
	$(MAKE) -f modules/visual_features/CMakeFiles/testPoint.dir/build.make modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.provides.build
.PHONY : modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.provides

modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.provides.build: modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o


# Object files for target testPoint
testPoint_OBJECTS = \
"CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o"

# External object files for target testPoint
testPoint_EXTERNAL_OBJECTS =

modules/visual_features/testPoint: modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o
modules/visual_features/testPoint: modules/visual_features/CMakeFiles/testPoint.dir/build.make
modules/visual_features/testPoint: lib/libvisp_visual_features.so.3.0.1
modules/visual_features/testPoint: lib/libvisp_me.so.3.0.1
modules/visual_features/testPoint: lib/libvisp_blob.so.3.0.1
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libm.so
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libnsl.so
modules/visual_features/testPoint: lib/libvisp_core.so.3.0.1
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libpthread.so
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libz.so
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libm.so
modules/visual_features/testPoint: /usr/lib/i386-linux-gnu/libnsl.so
modules/visual_features/testPoint: modules/visual_features/CMakeFiles/testPoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testPoint"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/visual_features && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testPoint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/visual_features/CMakeFiles/testPoint.dir/build: modules/visual_features/testPoint

.PHONY : modules/visual_features/CMakeFiles/testPoint.dir/build

modules/visual_features/CMakeFiles/testPoint.dir/requires: modules/visual_features/CMakeFiles/testPoint.dir/test/feature/testPoint.cpp.o.requires

.PHONY : modules/visual_features/CMakeFiles/testPoint.dir/requires

modules/visual_features/CMakeFiles/testPoint.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/visual_features && $(CMAKE_COMMAND) -P CMakeFiles/testPoint.dir/cmake_clean.cmake
.PHONY : modules/visual_features/CMakeFiles/testPoint.dir/clean

modules/visual_features/CMakeFiles/testPoint.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/visual_features /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/visual_features /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/visual_features/CMakeFiles/testPoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/visual_features/CMakeFiles/testPoint.dir/depend
