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
include modules/gui/CMakeFiles/testVideoDevice.dir/depend.make

# Include the progress variables for this target.
include modules/gui/CMakeFiles/testVideoDevice.dir/progress.make

# Include the compile flags for this target's objects.
include modules/gui/CMakeFiles/testVideoDevice.dir/flags.make

modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o: modules/gui/CMakeFiles/testVideoDevice.dir/flags.make
modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/gui/test/display/testVideoDevice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/gui && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/gui/test/display/testVideoDevice.cpp

modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/gui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/gui/test/display/testVideoDevice.cpp > CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.i

modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/gui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/gui/test/display/testVideoDevice.cpp -o CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.s

modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.requires:

.PHONY : modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.requires

modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.provides: modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.requires
	$(MAKE) -f modules/gui/CMakeFiles/testVideoDevice.dir/build.make modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.provides.build
.PHONY : modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.provides

modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.provides.build: modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o


# Object files for target testVideoDevice
testVideoDevice_OBJECTS = \
"CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o"

# External object files for target testVideoDevice
testVideoDevice_EXTERNAL_OBJECTS =

modules/gui/testVideoDevice: modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o
modules/gui/testVideoDevice: modules/gui/CMakeFiles/testVideoDevice.dir/build.make
modules/gui/testVideoDevice: lib/libvisp_gui.so.3.0.1
modules/gui/testVideoDevice: lib/libvisp_io.so.3.0.1
modules/gui/testVideoDevice: lib/libvisp_core.so.3.0.1
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libm.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libnsl.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libSM.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libICE.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libX11.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libXext.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libpthread.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libjpeg.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libpng.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libz.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libm.so
modules/gui/testVideoDevice: /usr/lib/i386-linux-gnu/libnsl.so
modules/gui/testVideoDevice: modules/gui/CMakeFiles/testVideoDevice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testVideoDevice"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/gui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testVideoDevice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/gui/CMakeFiles/testVideoDevice.dir/build: modules/gui/testVideoDevice

.PHONY : modules/gui/CMakeFiles/testVideoDevice.dir/build

modules/gui/CMakeFiles/testVideoDevice.dir/requires: modules/gui/CMakeFiles/testVideoDevice.dir/test/display/testVideoDevice.cpp.o.requires

.PHONY : modules/gui/CMakeFiles/testVideoDevice.dir/requires

modules/gui/CMakeFiles/testVideoDevice.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/gui && $(CMAKE_COMMAND) -P CMakeFiles/testVideoDevice.dir/cmake_clean.cmake
.PHONY : modules/gui/CMakeFiles/testVideoDevice.dir/clean

modules/gui/CMakeFiles/testVideoDevice.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/modules/gui /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/gui /home/force/Programmation/ESIR2/Soft/VISP/visp-build/modules/gui/CMakeFiles/testVideoDevice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/gui/CMakeFiles/testVideoDevice.dir/depend

