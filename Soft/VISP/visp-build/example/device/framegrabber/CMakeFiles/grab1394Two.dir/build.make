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
include example/device/framegrabber/CMakeFiles/grab1394Two.dir/depend.make

# Include the progress variables for this target.
include example/device/framegrabber/CMakeFiles/grab1394Two.dir/progress.make

# Include the compile flags for this target's objects.
include example/device/framegrabber/CMakeFiles/grab1394Two.dir/flags.make

example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o: example/device/framegrabber/CMakeFiles/grab1394Two.dir/flags.make
example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/example/device/framegrabber/grab1394Two.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/device/framegrabber && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/example/device/framegrabber/grab1394Two.cpp

example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grab1394Two.dir/grab1394Two.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/device/framegrabber && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/example/device/framegrabber/grab1394Two.cpp > CMakeFiles/grab1394Two.dir/grab1394Two.cpp.i

example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grab1394Two.dir/grab1394Two.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/device/framegrabber && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/example/device/framegrabber/grab1394Two.cpp -o CMakeFiles/grab1394Two.dir/grab1394Two.cpp.s

example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.requires:

.PHONY : example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.requires

example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.provides: example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.requires
	$(MAKE) -f example/device/framegrabber/CMakeFiles/grab1394Two.dir/build.make example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.provides.build
.PHONY : example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.provides

example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.provides.build: example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o


# Object files for target grab1394Two
grab1394Two_OBJECTS = \
"CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o"

# External object files for target grab1394Two
grab1394Two_EXTERNAL_OBJECTS =

example/device/framegrabber/grab1394Two: example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o
example/device/framegrabber/grab1394Two: example/device/framegrabber/CMakeFiles/grab1394Two.dir/build.make
example/device/framegrabber/grab1394Two: lib/libvisp_vs.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_tt_mi.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_tt.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_mbt.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_klt.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_robot.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_detection.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_ar.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_sensor.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_gui.so.3.0.1
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libdc1394.so
example/device/framegrabber/grab1394Two: lib/libvisp_vision.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_visual_features.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_me.so.3.0.1
example/device/framegrabber/grab1394Two: lib/libvisp_blob.so.3.0.1
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libSM.so
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libICE.so
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libX11.so
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libXext.so
example/device/framegrabber/grab1394Two: lib/libvisp_io.so.3.0.1
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libjpeg.so
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libpng.so
example/device/framegrabber/grab1394Two: lib/libvisp_core.so.3.0.1
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libpthread.so
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libz.so
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libm.so
example/device/framegrabber/grab1394Two: /usr/lib/i386-linux-gnu/libnsl.so
example/device/framegrabber/grab1394Two: example/device/framegrabber/CMakeFiles/grab1394Two.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable grab1394Two"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/device/framegrabber && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/grab1394Two.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/device/framegrabber/CMakeFiles/grab1394Two.dir/build: example/device/framegrabber/grab1394Two

.PHONY : example/device/framegrabber/CMakeFiles/grab1394Two.dir/build

example/device/framegrabber/CMakeFiles/grab1394Two.dir/requires: example/device/framegrabber/CMakeFiles/grab1394Two.dir/grab1394Two.cpp.o.requires

.PHONY : example/device/framegrabber/CMakeFiles/grab1394Two.dir/requires

example/device/framegrabber/CMakeFiles/grab1394Two.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/device/framegrabber && $(CMAKE_COMMAND) -P CMakeFiles/grab1394Two.dir/cmake_clean.cmake
.PHONY : example/device/framegrabber/CMakeFiles/grab1394Two.dir/clean

example/device/framegrabber/CMakeFiles/grab1394Two.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/example/device/framegrabber /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/device/framegrabber /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/device/framegrabber/CMakeFiles/grab1394Two.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/device/framegrabber/CMakeFiles/grab1394Two.dir/depend

