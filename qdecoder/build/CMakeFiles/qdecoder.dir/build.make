# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/sf_Code/lib/libqdecoder/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/sf_Code/lib/libqdecoder/build

# Include any dependencies generated for this target.
include CMakeFiles/qdecoder.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/qdecoder.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/qdecoder.dir/flags.make

CMakeFiles/qdecoder.dir/internal.cpp.o: CMakeFiles/qdecoder.dir/flags.make
CMakeFiles/qdecoder.dir/internal.cpp.o: /media/sf_Code/lib/libqdecoder/src/internal.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /media/sf_Code/lib/libqdecoder/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/qdecoder.dir/internal.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qdecoder.dir/internal.cpp.o -c /media/sf_Code/lib/libqdecoder/src/internal.cpp

CMakeFiles/qdecoder.dir/internal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qdecoder.dir/internal.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /media/sf_Code/lib/libqdecoder/src/internal.cpp > CMakeFiles/qdecoder.dir/internal.cpp.i

CMakeFiles/qdecoder.dir/internal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qdecoder.dir/internal.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /media/sf_Code/lib/libqdecoder/src/internal.cpp -o CMakeFiles/qdecoder.dir/internal.cpp.s

CMakeFiles/qdecoder.dir/internal.cpp.o.requires:
.PHONY : CMakeFiles/qdecoder.dir/internal.cpp.o.requires

CMakeFiles/qdecoder.dir/internal.cpp.o.provides: CMakeFiles/qdecoder.dir/internal.cpp.o.requires
	$(MAKE) -f CMakeFiles/qdecoder.dir/build.make CMakeFiles/qdecoder.dir/internal.cpp.o.provides.build
.PHONY : CMakeFiles/qdecoder.dir/internal.cpp.o.provides

CMakeFiles/qdecoder.dir/internal.cpp.o.provides.build: CMakeFiles/qdecoder.dir/internal.cpp.o

CMakeFiles/qdecoder.dir/qcgireq.cpp.o: CMakeFiles/qdecoder.dir/flags.make
CMakeFiles/qdecoder.dir/qcgireq.cpp.o: /media/sf_Code/lib/libqdecoder/src/qcgireq.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /media/sf_Code/lib/libqdecoder/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/qdecoder.dir/qcgireq.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qdecoder.dir/qcgireq.cpp.o -c /media/sf_Code/lib/libqdecoder/src/qcgireq.cpp

CMakeFiles/qdecoder.dir/qcgireq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qdecoder.dir/qcgireq.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /media/sf_Code/lib/libqdecoder/src/qcgireq.cpp > CMakeFiles/qdecoder.dir/qcgireq.cpp.i

CMakeFiles/qdecoder.dir/qcgireq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qdecoder.dir/qcgireq.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /media/sf_Code/lib/libqdecoder/src/qcgireq.cpp -o CMakeFiles/qdecoder.dir/qcgireq.cpp.s

CMakeFiles/qdecoder.dir/qcgireq.cpp.o.requires:
.PHONY : CMakeFiles/qdecoder.dir/qcgireq.cpp.o.requires

CMakeFiles/qdecoder.dir/qcgireq.cpp.o.provides: CMakeFiles/qdecoder.dir/qcgireq.cpp.o.requires
	$(MAKE) -f CMakeFiles/qdecoder.dir/build.make CMakeFiles/qdecoder.dir/qcgireq.cpp.o.provides.build
.PHONY : CMakeFiles/qdecoder.dir/qcgireq.cpp.o.provides

CMakeFiles/qdecoder.dir/qcgireq.cpp.o.provides.build: CMakeFiles/qdecoder.dir/qcgireq.cpp.o

CMakeFiles/qdecoder.dir/qcgires.cpp.o: CMakeFiles/qdecoder.dir/flags.make
CMakeFiles/qdecoder.dir/qcgires.cpp.o: /media/sf_Code/lib/libqdecoder/src/qcgires.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /media/sf_Code/lib/libqdecoder/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/qdecoder.dir/qcgires.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qdecoder.dir/qcgires.cpp.o -c /media/sf_Code/lib/libqdecoder/src/qcgires.cpp

CMakeFiles/qdecoder.dir/qcgires.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qdecoder.dir/qcgires.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /media/sf_Code/lib/libqdecoder/src/qcgires.cpp > CMakeFiles/qdecoder.dir/qcgires.cpp.i

CMakeFiles/qdecoder.dir/qcgires.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qdecoder.dir/qcgires.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /media/sf_Code/lib/libqdecoder/src/qcgires.cpp -o CMakeFiles/qdecoder.dir/qcgires.cpp.s

CMakeFiles/qdecoder.dir/qcgires.cpp.o.requires:
.PHONY : CMakeFiles/qdecoder.dir/qcgires.cpp.o.requires

CMakeFiles/qdecoder.dir/qcgires.cpp.o.provides: CMakeFiles/qdecoder.dir/qcgires.cpp.o.requires
	$(MAKE) -f CMakeFiles/qdecoder.dir/build.make CMakeFiles/qdecoder.dir/qcgires.cpp.o.provides.build
.PHONY : CMakeFiles/qdecoder.dir/qcgires.cpp.o.provides

CMakeFiles/qdecoder.dir/qcgires.cpp.o.provides.build: CMakeFiles/qdecoder.dir/qcgires.cpp.o

CMakeFiles/qdecoder.dir/qcgisess.cpp.o: CMakeFiles/qdecoder.dir/flags.make
CMakeFiles/qdecoder.dir/qcgisess.cpp.o: /media/sf_Code/lib/libqdecoder/src/qcgisess.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /media/sf_Code/lib/libqdecoder/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/qdecoder.dir/qcgisess.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qdecoder.dir/qcgisess.cpp.o -c /media/sf_Code/lib/libqdecoder/src/qcgisess.cpp

CMakeFiles/qdecoder.dir/qcgisess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qdecoder.dir/qcgisess.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /media/sf_Code/lib/libqdecoder/src/qcgisess.cpp > CMakeFiles/qdecoder.dir/qcgisess.cpp.i

CMakeFiles/qdecoder.dir/qcgisess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qdecoder.dir/qcgisess.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /media/sf_Code/lib/libqdecoder/src/qcgisess.cpp -o CMakeFiles/qdecoder.dir/qcgisess.cpp.s

CMakeFiles/qdecoder.dir/qcgisess.cpp.o.requires:
.PHONY : CMakeFiles/qdecoder.dir/qcgisess.cpp.o.requires

CMakeFiles/qdecoder.dir/qcgisess.cpp.o.provides: CMakeFiles/qdecoder.dir/qcgisess.cpp.o.requires
	$(MAKE) -f CMakeFiles/qdecoder.dir/build.make CMakeFiles/qdecoder.dir/qcgisess.cpp.o.provides.build
.PHONY : CMakeFiles/qdecoder.dir/qcgisess.cpp.o.provides

CMakeFiles/qdecoder.dir/qcgisess.cpp.o.provides.build: CMakeFiles/qdecoder.dir/qcgisess.cpp.o

CMakeFiles/qdecoder.dir/qentry.cpp.o: CMakeFiles/qdecoder.dir/flags.make
CMakeFiles/qdecoder.dir/qentry.cpp.o: /media/sf_Code/lib/libqdecoder/src/qentry.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /media/sf_Code/lib/libqdecoder/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/qdecoder.dir/qentry.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qdecoder.dir/qentry.cpp.o -c /media/sf_Code/lib/libqdecoder/src/qentry.cpp

CMakeFiles/qdecoder.dir/qentry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qdecoder.dir/qentry.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /media/sf_Code/lib/libqdecoder/src/qentry.cpp > CMakeFiles/qdecoder.dir/qentry.cpp.i

CMakeFiles/qdecoder.dir/qentry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qdecoder.dir/qentry.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /media/sf_Code/lib/libqdecoder/src/qentry.cpp -o CMakeFiles/qdecoder.dir/qentry.cpp.s

CMakeFiles/qdecoder.dir/qentry.cpp.o.requires:
.PHONY : CMakeFiles/qdecoder.dir/qentry.cpp.o.requires

CMakeFiles/qdecoder.dir/qentry.cpp.o.provides: CMakeFiles/qdecoder.dir/qentry.cpp.o.requires
	$(MAKE) -f CMakeFiles/qdecoder.dir/build.make CMakeFiles/qdecoder.dir/qentry.cpp.o.provides.build
.PHONY : CMakeFiles/qdecoder.dir/qentry.cpp.o.provides

CMakeFiles/qdecoder.dir/qentry.cpp.o.provides.build: CMakeFiles/qdecoder.dir/qentry.cpp.o

# Object files for target qdecoder
qdecoder_OBJECTS = \
"CMakeFiles/qdecoder.dir/internal.cpp.o" \
"CMakeFiles/qdecoder.dir/qcgireq.cpp.o" \
"CMakeFiles/qdecoder.dir/qcgires.cpp.o" \
"CMakeFiles/qdecoder.dir/qcgisess.cpp.o" \
"CMakeFiles/qdecoder.dir/qentry.cpp.o"

# External object files for target qdecoder
qdecoder_EXTERNAL_OBJECTS =

libqdecoder.a: CMakeFiles/qdecoder.dir/internal.cpp.o
libqdecoder.a: CMakeFiles/qdecoder.dir/qcgireq.cpp.o
libqdecoder.a: CMakeFiles/qdecoder.dir/qcgires.cpp.o
libqdecoder.a: CMakeFiles/qdecoder.dir/qcgisess.cpp.o
libqdecoder.a: CMakeFiles/qdecoder.dir/qentry.cpp.o
libqdecoder.a: CMakeFiles/qdecoder.dir/build.make
libqdecoder.a: CMakeFiles/qdecoder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libqdecoder.a"
	$(CMAKE_COMMAND) -P CMakeFiles/qdecoder.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qdecoder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/qdecoder.dir/build: libqdecoder.a
.PHONY : CMakeFiles/qdecoder.dir/build

CMakeFiles/qdecoder.dir/requires: CMakeFiles/qdecoder.dir/internal.cpp.o.requires
CMakeFiles/qdecoder.dir/requires: CMakeFiles/qdecoder.dir/qcgireq.cpp.o.requires
CMakeFiles/qdecoder.dir/requires: CMakeFiles/qdecoder.dir/qcgires.cpp.o.requires
CMakeFiles/qdecoder.dir/requires: CMakeFiles/qdecoder.dir/qcgisess.cpp.o.requires
CMakeFiles/qdecoder.dir/requires: CMakeFiles/qdecoder.dir/qentry.cpp.o.requires
.PHONY : CMakeFiles/qdecoder.dir/requires

CMakeFiles/qdecoder.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/qdecoder.dir/cmake_clean.cmake
.PHONY : CMakeFiles/qdecoder.dir/clean

CMakeFiles/qdecoder.dir/depend:
	cd /media/sf_Code/lib/libqdecoder/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_Code/lib/libqdecoder/src /media/sf_Code/lib/libqdecoder/src /media/sf_Code/lib/libqdecoder/build /media/sf_Code/lib/libqdecoder/build /media/sf_Code/lib/libqdecoder/build/CMakeFiles/qdecoder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/qdecoder.dir/depend

