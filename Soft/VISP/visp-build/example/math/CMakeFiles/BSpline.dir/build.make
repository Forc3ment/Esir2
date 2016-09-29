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
include example/math/CMakeFiles/BSpline.dir/depend.make

# Include the progress variables for this target.
include example/math/CMakeFiles/BSpline.dir/progress.make

# Include the compile flags for this target's objects.
include example/math/CMakeFiles/BSpline.dir/flags.make

example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o: example/math/CMakeFiles/BSpline.dir/flags.make
example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/example/math/BSpline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/math && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BSpline.dir/BSpline.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/example/math/BSpline.cpp

example/math/CMakeFiles/BSpline.dir/BSpline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BSpline.dir/BSpline.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/math && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/example/math/BSpline.cpp > CMakeFiles/BSpline.dir/BSpline.cpp.i

example/math/CMakeFiles/BSpline.dir/BSpline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BSpline.dir/BSpline.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/math && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/example/math/BSpline.cpp -o CMakeFiles/BSpline.dir/BSpline.cpp.s

example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.requires:

.PHONY : example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.requires

example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.provides: example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.requires
	$(MAKE) -f example/math/CMakeFiles/BSpline.dir/build.make example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.provides.build
.PHONY : example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.provides

example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.provides.build: example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o


# Object files for target BSpline
BSpline_OBJECTS = \
"CMakeFiles/BSpline.dir/BSpline.cpp.o"

# External object files for target BSpline
BSpline_EXTERNAL_OBJECTS =

example/math/BSpline: example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o
example/math/BSpline: example/math/CMakeFiles/BSpline.dir/build.make
example/math/BSpline: lib/libvisp_vs.so.3.0.1
example/math/BSpline: lib/libvisp_tt_mi.so.3.0.1
example/math/BSpline: lib/libvisp_tt.so.3.0.1
example/math/BSpline: lib/libvisp_mbt.so.3.0.1
example/math/BSpline: lib/libvisp_klt.so.3.0.1
example/math/BSpline: lib/libvisp_robot.so.3.0.1
example/math/BSpline: lib/libvisp_gui.so.3.0.1
example/math/BSpline: lib/libvisp_detection.so.3.0.1
example/math/BSpline: lib/libvisp_ar.so.3.0.1
example/math/BSpline: lib/libvisp_sensor.so.3.0.1
example/math/BSpline: /usr/lib/i386-linux-gnu/libdc1394.so
example/math/BSpline: lib/libvisp_vision.so.3.0.1
example/math/BSpline: lib/libvisp_visual_features.so.3.0.1
example/math/BSpline: lib/libvisp_me.so.3.0.1
example/math/BSpline: lib/libvisp_blob.so.3.0.1
example/math/BSpline: /usr/lib/i386-linux-gnu/libSM.so
example/math/BSpline: /usr/lib/i386-linux-gnu/libICE.so
example/math/BSpline: /usr/lib/i386-linux-gnu/libX11.so
example/math/BSpline: /usr/lib/i386-linux-gnu/libXext.so
example/math/BSpline: lib/libvisp_io.so.3.0.1
example/math/BSpline: /usr/lib/i386-linux-gnu/libjpeg.so
example/math/BSpline: /usr/lib/i386-linux-gnu/libpng.so
example/math/BSpline: lib/libvisp_core.so.3.0.1
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
example/math/BSpline: /usr/lib/i386-linux-gnu/libpthread.so
example/math/BSpline: /usr/lib/i386-linux-gnu/libz.so
example/math/BSpline: /usr/lib/i386-linux-gnu/libm.so
example/math/BSpline: /usr/lib/i386-linux-gnu/libnsl.so
example/math/BSpline: example/math/CMakeFiles/BSpline.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BSpline"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BSpline.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/math/CMakeFiles/BSpline.dir/build: example/math/BSpline

.PHONY : example/math/CMakeFiles/BSpline.dir/build

example/math/CMakeFiles/BSpline.dir/requires: example/math/CMakeFiles/BSpline.dir/BSpline.cpp.o.requires

.PHONY : example/math/CMakeFiles/BSpline.dir/requires

example/math/CMakeFiles/BSpline.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/math && $(CMAKE_COMMAND) -P CMakeFiles/BSpline.dir/cmake_clean.cmake
.PHONY : example/math/CMakeFiles/BSpline.dir/clean

example/math/CMakeFiles/BSpline.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/example/math /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/math /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/math/CMakeFiles/BSpline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/math/CMakeFiles/BSpline.dir/depend

