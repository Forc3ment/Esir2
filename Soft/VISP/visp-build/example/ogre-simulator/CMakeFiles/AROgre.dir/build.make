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
include example/ogre-simulator/CMakeFiles/AROgre.dir/depend.make

# Include the progress variables for this target.
include example/ogre-simulator/CMakeFiles/AROgre.dir/progress.make

# Include the compile flags for this target's objects.
include example/ogre-simulator/CMakeFiles/AROgre.dir/flags.make

example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o: example/ogre-simulator/CMakeFiles/AROgre.dir/flags.make
example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/example/ogre-simulator/AROgre.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/ogre-simulator && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AROgre.dir/AROgre.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/example/ogre-simulator/AROgre.cpp

example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AROgre.dir/AROgre.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/ogre-simulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/example/ogre-simulator/AROgre.cpp > CMakeFiles/AROgre.dir/AROgre.cpp.i

example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AROgre.dir/AROgre.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/ogre-simulator && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/example/ogre-simulator/AROgre.cpp -o CMakeFiles/AROgre.dir/AROgre.cpp.s

example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.requires:

.PHONY : example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.requires

example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.provides: example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.requires
	$(MAKE) -f example/ogre-simulator/CMakeFiles/AROgre.dir/build.make example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.provides.build
.PHONY : example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.provides

example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.provides.build: example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o


# Object files for target AROgre
AROgre_OBJECTS = \
"CMakeFiles/AROgre.dir/AROgre.cpp.o"

# External object files for target AROgre
AROgre_EXTERNAL_OBJECTS =

example/ogre-simulator/AROgre: example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o
example/ogre-simulator/AROgre: example/ogre-simulator/CMakeFiles/AROgre.dir/build.make
example/ogre-simulator/AROgre: lib/libvisp_vs.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_tt_mi.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_tt.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_mbt.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_klt.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_robot.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_detection.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_vision.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_ar.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_io.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_gui.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_sensor.so.3.0.1
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libdc1394.so
example/ogre-simulator/AROgre: lib/libvisp_visual_features.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_me.so.3.0.1
example/ogre-simulator/AROgre: lib/libvisp_blob.so.3.0.1
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libSM.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libICE.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libX11.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libXext.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libjpeg.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libpng.so
example/ogre-simulator/AROgre: lib/libvisp_core.so.3.0.1
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libpthread.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libz.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libm.so
example/ogre-simulator/AROgre: /usr/lib/i386-linux-gnu/libnsl.so
example/ogre-simulator/AROgre: example/ogre-simulator/CMakeFiles/AROgre.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AROgre"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/ogre-simulator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AROgre.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/ogre-simulator/CMakeFiles/AROgre.dir/build: example/ogre-simulator/AROgre

.PHONY : example/ogre-simulator/CMakeFiles/AROgre.dir/build

example/ogre-simulator/CMakeFiles/AROgre.dir/requires: example/ogre-simulator/CMakeFiles/AROgre.dir/AROgre.cpp.o.requires

.PHONY : example/ogre-simulator/CMakeFiles/AROgre.dir/requires

example/ogre-simulator/CMakeFiles/AROgre.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/ogre-simulator && $(CMAKE_COMMAND) -P CMakeFiles/AROgre.dir/cmake_clean.cmake
.PHONY : example/ogre-simulator/CMakeFiles/AROgre.dir/clean

example/ogre-simulator/CMakeFiles/AROgre.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/example/ogre-simulator /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/ogre-simulator /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/ogre-simulator/CMakeFiles/AROgre.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/ogre-simulator/CMakeFiles/AROgre.dir/depend

