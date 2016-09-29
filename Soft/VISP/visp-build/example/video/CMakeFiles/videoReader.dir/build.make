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
include example/video/CMakeFiles/videoReader.dir/depend.make

# Include the progress variables for this target.
include example/video/CMakeFiles/videoReader.dir/progress.make

# Include the compile flags for this target's objects.
include example/video/CMakeFiles/videoReader.dir/flags.make

example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o: example/video/CMakeFiles/videoReader.dir/flags.make
example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o: /home/force/Programmation/ESIR2/Soft/VISP/visp/example/video/videoReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/video && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/videoReader.dir/videoReader.cpp.o -c /home/force/Programmation/ESIR2/Soft/VISP/visp/example/video/videoReader.cpp

example/video/CMakeFiles/videoReader.dir/videoReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/videoReader.dir/videoReader.cpp.i"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/video && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/force/Programmation/ESIR2/Soft/VISP/visp/example/video/videoReader.cpp > CMakeFiles/videoReader.dir/videoReader.cpp.i

example/video/CMakeFiles/videoReader.dir/videoReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/videoReader.dir/videoReader.cpp.s"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/video && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/force/Programmation/ESIR2/Soft/VISP/visp/example/video/videoReader.cpp -o CMakeFiles/videoReader.dir/videoReader.cpp.s

example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.requires:

.PHONY : example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.requires

example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.provides: example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.requires
	$(MAKE) -f example/video/CMakeFiles/videoReader.dir/build.make example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.provides.build
.PHONY : example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.provides

example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.provides.build: example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o


# Object files for target videoReader
videoReader_OBJECTS = \
"CMakeFiles/videoReader.dir/videoReader.cpp.o"

# External object files for target videoReader
videoReader_EXTERNAL_OBJECTS =

example/video/videoReader: example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o
example/video/videoReader: example/video/CMakeFiles/videoReader.dir/build.make
example/video/videoReader: lib/libvisp_vs.so.3.0.1
example/video/videoReader: lib/libvisp_tt_mi.so.3.0.1
example/video/videoReader: lib/libvisp_tt.so.3.0.1
example/video/videoReader: lib/libvisp_mbt.so.3.0.1
example/video/videoReader: lib/libvisp_klt.so.3.0.1
example/video/videoReader: lib/libvisp_robot.so.3.0.1
example/video/videoReader: lib/libvisp_detection.so.3.0.1
example/video/videoReader: lib/libvisp_ar.so.3.0.1
example/video/videoReader: lib/libvisp_gui.so.3.0.1
example/video/videoReader: lib/libvisp_sensor.so.3.0.1
example/video/videoReader: /usr/lib/i386-linux-gnu/libdc1394.so
example/video/videoReader: lib/libvisp_vision.so.3.0.1
example/video/videoReader: lib/libvisp_visual_features.so.3.0.1
example/video/videoReader: lib/libvisp_me.so.3.0.1
example/video/videoReader: lib/libvisp_blob.so.3.0.1
example/video/videoReader: /usr/lib/i386-linux-gnu/libSM.so
example/video/videoReader: /usr/lib/i386-linux-gnu/libICE.so
example/video/videoReader: /usr/lib/i386-linux-gnu/libX11.so
example/video/videoReader: /usr/lib/i386-linux-gnu/libXext.so
example/video/videoReader: lib/libvisp_io.so.3.0.1
example/video/videoReader: /usr/lib/i386-linux-gnu/libjpeg.so
example/video/videoReader: /usr/lib/i386-linux-gnu/libpng.so
example/video/videoReader: lib/libvisp_core.so.3.0.1
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
example/video/videoReader: /usr/lib/i386-linux-gnu/libpthread.so
example/video/videoReader: /usr/lib/i386-linux-gnu/libz.so
example/video/videoReader: /usr/lib/i386-linux-gnu/libm.so
example/video/videoReader: /usr/lib/i386-linux-gnu/libnsl.so
example/video/videoReader: example/video/CMakeFiles/videoReader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/force/Programmation/ESIR2/Soft/VISP/visp-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable videoReader"
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/video && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/videoReader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/video/CMakeFiles/videoReader.dir/build: example/video/videoReader

.PHONY : example/video/CMakeFiles/videoReader.dir/build

example/video/CMakeFiles/videoReader.dir/requires: example/video/CMakeFiles/videoReader.dir/videoReader.cpp.o.requires

.PHONY : example/video/CMakeFiles/videoReader.dir/requires

example/video/CMakeFiles/videoReader.dir/clean:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/video && $(CMAKE_COMMAND) -P CMakeFiles/videoReader.dir/cmake_clean.cmake
.PHONY : example/video/CMakeFiles/videoReader.dir/clean

example/video/CMakeFiles/videoReader.dir/depend:
	cd /home/force/Programmation/ESIR2/Soft/VISP/visp-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/force/Programmation/ESIR2/Soft/VISP/visp /home/force/Programmation/ESIR2/Soft/VISP/visp/example/video /home/force/Programmation/ESIR2/Soft/VISP/visp-build /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/video /home/force/Programmation/ESIR2/Soft/VISP/visp-build/example/video/CMakeFiles/videoReader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/video/CMakeFiles/videoReader.dir/depend

