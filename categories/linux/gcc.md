## Gcc

#### Options

* -c source_code_file: to a machine code named xxx.o
* -o executable_file_name:
* -g: gdb debug
* -Wall: generate many warnings about syntactically correct but questionable looking code
* -O -mv8: Generate optimized code(优化代码) on a Solaris machine
* -fast: Generate optimized code on a Solaris machine using Sun's own CC compiler
* -O: Generate optimized code on a Linux machine
* -lX11: it contains Xlib graphics routines.
* -v: see the detailed compilation process by enabling -v (verbose) option
* `nm executable_file_name`: List Symbol Table of Object Files
* `ldd executable_file_name`: List Dynamic-Link Libraries
* -I: The include-paths are specified via -Idir option (or environment variable CPATH)
* -L: The library-path is specified via -Ldir option (uppercase 'L' followed by the directory path) (or environment variable LIBRARY_PATH)
* `cpp -v`: list the default include-paths in your system used by the "GNU C Preprocessor" via "cpp -v"

#### GCC Environment Variables

* PATH: For searching the executables and run-time shared libraries (.dll, .so).
* CPATH: For searching the include-paths for headers. It is searched after paths specified in -I<dir> options. C_INCLUDE_PATH and CPLUS_INCLUDE_PATH can be used to specify C and C++ headers if the particular language was indicated in pre-processing.
* LIBRARY_PATH: For searching library-paths for link libraries. It is searched after paths specified in -L<dir> options.

#### Library

##### Static Library

* A static library has file extension of ".a" (archive file) in Unixes or ".lib" (library) in Windows

##### Shared Library

* A shared library has file extension of ".so" (shared objects) in Unixes or ".dll" (dynamic link library) in Windows


#### Make

* comment: #
* Variables: A variable begins with a $ and is enclosed within parentheses (...) or braces {...}. Single character variables do not need the parentheses. For example, $(CC), $(CC_FLAGS), $@, $^.
* You can use VPATH (uppercase) to specify the directory to search for dependencies and target files.
* A pattern rule, which uses pattern matching character '%' as the filename, can be applied to create a target, if there is no explicit rule.

###### Automatic Variables

* $@: the target filename.
* $*: the target filename without the file extension.
* $<: the first prerequisite filename.
* $^: the filenames of all the prerequisites, separated by spaces, discard duplicates.
* $+: similar to $^, but includes duplicates.
* $?: the names of all prerequisites that are newer than the target, separated by spaces.


#### Articles

* [GCC and Make Compiling, Linking and Building C/C++ Applications](https://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html)
* [gcc-intro](http://pages.cs.wisc.edu/~beechung/ref/gcc-intro.html)
