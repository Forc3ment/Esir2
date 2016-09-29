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
include modules/robot/CMakeFiles/testVirtuose.dir/depend.make

# Include the progress variables for this target.
include modules/robot/CMakeFiles/testVirtuose.dir/progress.make

# Include the compile flags for this target's objects.
include modules/robot/CMakeFiles/testVirtuose.dir/flags.make

modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o: modules/robot/CMakeFiles/testVirtuose.dir/flags.make
modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/robot/test/virtuose/testVirtuose.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/robot && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/robot/test/virtuose/testVirtuose.cpp

modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/robot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/robot/test/virtuose/testVirtuose.cpp > CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.i

modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/robot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/robot/test/virtuose/testVirtuose.cpp -o CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.s

modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.requires:

.PHONY : modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.requires

modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.provides: modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.requires
	$(MAKE) -f modules/robot/CMakeFiles/testVirtuose.dir/build.make modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.provides.build
.PHONY : modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.provides

modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.provides.build: modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o


# Object files for target testVirtuose
testVirtuose_OBJECTS = \
"CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o"

# External object files for target testVirtuose
testVirtuose_EXTERNAL_OBJECTS =

modules/robot/testVirtuose: modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o
modules/robot/testVirtuose: modules/robot/CMakeFiles/testVirtuose.dir/build.make
modules/robot/testVirtuose: lib/libvisp_robot.so.3.0.1
modules/robot/testVirtuose: lib/libvisp_vision.so.3.0.1
modules/robot/testVirtuose: lib/libvisp_visual_features.so.3.0.1
modules/robot/testVirtuose: lib/libvisp_blob.so.3.0.1
modules/robot/testVirtuose: lib/libvisp_gui.so.3.0.1
modules/robot/testVirtuose: lib/libvisp_io.so.3.0.1
modules/robot/testVirtuose: lib/libvisp_sensor.so.3.0.1
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libm.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libnsl.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libSM.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libICE.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libX11.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libXext.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libdc1394.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libjpeg.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libpng.so
modules/robot/testVirtuose: lib/libvisp_me.so.3.0.1
modules/robot/testVirtuose: lib/libvisp_core.so.3.0.1
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libpthread.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libz.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libm.so
modules/robot/testVirtuose: /usr/lib/i386-linux-gnu/libnsl.so
modules/robot/testVirtuose: modules/robot/CMakeFiles/testVirtuose.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testVirtuose"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/robot && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testVirtuose.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/robot/CMakeFiles/testVirtuose.dir/build: modules/robot/testVirtuose

.PHONY : modules/robot/CMakeFiles/testVirtuose.dir/build

modules/robot/CMakeFiles/testVirtuose.dir/requires: modules/robot/CMakeFiles/testVirtuose.dir/test/virtuose/testVirtuose.cpp.o.requires

.PHONY : modules/robot/CMakeFiles/testVirtuose.dir/requires

modules/robot/CMakeFiles/testVirtuose.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/robot && $(CMAKE_COMMAND) -P CMakeFiles/testVirtuose.dir/cmake_clean.cmake
.PHONY : modules/robot/CMakeFiles/testVirtuose.dir/clean

modules/robot/CMakeFiles/testVirtuose.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/robot /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/robot /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/robot/CMakeFiles/testVirtuose.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/robot/CMakeFiles/testVirtuose.dir/depend

