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
include example/manual/CMakeFiles/HelloWorldOgre.dir/depend.make

# Include the progress variables for this target.
include example/manual/CMakeFiles/HelloWorldOgre.dir/progress.make

# Include the compile flags for this target's objects.
include example/manual/CMakeFiles/HelloWorldOgre.dir/flags.make

example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o: example/manual/CMakeFiles/HelloWorldOgre.dir/flags.make
example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/example/manual/ogre/HelloWorldOgre.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/manual && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/example/manual/ogre/HelloWorldOgre.cpp

example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/manual && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/example/manual/ogre/HelloWorldOgre.cpp > CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.i

example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/manual && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/example/manual/ogre/HelloWorldOgre.cpp -o CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.s

example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.requires:

.PHONY : example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.requires

example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.provides: example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.requires
	$(MAKE) -f example/manual/CMakeFiles/HelloWorldOgre.dir/build.make example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.provides.build
.PHONY : example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.provides

example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.provides.build: example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o


# Object files for target HelloWorldOgre
HelloWorldOgre_OBJECTS = \
"CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o"

# External object files for target HelloWorldOgre
HelloWorldOgre_EXTERNAL_OBJECTS =

example/manual/HelloWorldOgre: example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o
example/manual/HelloWorldOgre: example/manual/CMakeFiles/HelloWorldOgre.dir/build.make
example/manual/HelloWorldOgre: lib/libvisp_tt_mi.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_tt.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_mbt.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_klt.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_detection.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_vs.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_robot.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_ar.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_vision.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_io.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_gui.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_sensor.so.3.0.1
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libdc1394.so
example/manual/HelloWorldOgre: lib/libvisp_visual_features.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_me.so.3.0.1
example/manual/HelloWorldOgre: lib/libvisp_blob.so.3.0.1
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libSM.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libICE.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libX11.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libXext.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libjpeg.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libpng.so
example/manual/HelloWorldOgre: lib/libvisp_core.so.3.0.1
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libpthread.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libz.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libm.so
example/manual/HelloWorldOgre: /usr/lib/i386-linux-gnu/libnsl.so
example/manual/HelloWorldOgre: example/manual/CMakeFiles/HelloWorldOgre.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HelloWorldOgre"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/manual && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloWorldOgre.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/manual/CMakeFiles/HelloWorldOgre.dir/build: example/manual/HelloWorldOgre

.PHONY : example/manual/CMakeFiles/HelloWorldOgre.dir/build

example/manual/CMakeFiles/HelloWorldOgre.dir/requires: example/manual/CMakeFiles/HelloWorldOgre.dir/ogre/HelloWorldOgre.cpp.o.requires

.PHONY : example/manual/CMakeFiles/HelloWorldOgre.dir/requires

example/manual/CMakeFiles/HelloWorldOgre.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/manual && $(CMAKE_COMMAND) -P CMakeFiles/HelloWorldOgre.dir/cmake_clean.cmake
.PHONY : example/manual/CMakeFiles/HelloWorldOgre.dir/clean

example/manual/CMakeFiles/HelloWorldOgre.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/example/manual /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/manual /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/manual/CMakeFiles/HelloWorldOgre.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/manual/CMakeFiles/HelloWorldOgre.dir/depend
