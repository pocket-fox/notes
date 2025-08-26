= Quiz 2 Review

== C programming

=== Input/output, If statements, loops, functions, arrays
- Loops:

```c
for(int i = 0; i < 5; i++){
    // for loops allow you add code that is only available within the scope of the loop, this is usually used to create temporary variables for the purposes of counting
}

while(i < 5){
    // while loops cannot contain initializtion syntax, used when all necessary data is pre-existing
}

do{
    // do-while loops ensure the loops body is executed one time regardless of the current state of the check condition 
}while(i < 5)
```

- Pass an element of an array, a one dimensional and two-dimensional array:

```c
void foo(int i){
    printf("Value of i: %d\n", i);
    // this function takes the value of an integer as input; that is, the variable itself, fully dereferenced
}

void bar(int array[]){
    printf("Value of array[0]: %d\n", array[0]);
    // this function takes an array as input, which in reality is merely an integer pointer. To access an item within the array we need to dereference one time.
    // The function knows how long each member of the array is as it was specified to be an array of int
}

void baz(int array[][2]){
    printf("Value of array[0][0]: %d\n", array[0][0]);
    // this function takes an N by 2 array as input,which in reality is merely an integer pointer; however, the addition of the [2] tells the compiler to allow us to reference the contiguous memory starting at &array[0][0] as though it were a 2 dimensional array.
    // The function will allow you to reference memory as if the array it was passed were a 2 dimensional array
}
```

#pagebreak()

=== How to create shared and static libraries

```sh
# First we need to create an object file:
  gcc -c -fpic file.c
# gcc                   > invoke gcc
#     -c                > output an object file
#        -fpic          > make code (memory)position independent
#              file.c   > target

# Then we can create a shared library like so:
  gcc -shared -o libfile.so file.o
# gcc                              > invoke gcc
#     -shared                      > output a shared library
#             -o                   > specify name for output file
#                libfile.so        > output file name
#                           file.o > target

# To compile with a shared library we will need to tell both the linker and the loader where the library is:
  gcc -L/path/to/libfile -Wl,rpath=/path/to/libfile file.c -lfile
# gcc                                                             > invoke gcc
#     -L/path/to/libfile                                          > tell the linker where to find the library
#                        -Wl,rpath=/path/to/libfile               > tell the linker to embed loader instructions for locating the library in the binary
#                                                   file.c        > target
#                                                          -lfile > which library to include prefixed by -l

# Or we can use ar to create a static library from the object file:
  ar -rc libfile.a file.o
# ar                      > invoke ar
#    -r                   > (r)eplace or add file to archive
#      c                  > don't warn if library is created
#        libfile.a        > output file name
#                  file.o > target

# If we are creating a static library, we need tell our system to index it:
  ranlib libfile.a

# To compile with a static library we need only tell the linker where to find the library:
  gcc file.c -L/path/to/libfile -lfile
# gcc                                  > invoke gcc
#     file.c                           > target
#            -L/path/to/libfile        > tell the linker where to find the library
#                               -lfile > which library to use prefixed by -l
```    

#pagebreak()

=== The different stages of creating an executable file such as creating an assembly file and an object file using the following options: -E, -S, -c

```sh
  gcc -E file.c
# gcc           >
#     -E        > output the same .c file AFTER having run the preprocessor
#        file.c > target

  gcc -S file.c
# gcc           >
#     -S        > output the assembly code generated from the c code
#        file.c > target

  gcc -c file.c
# gcc           >
#     -c        > output the object file
#        file.c > target
```

#pagebreak()

== How to debug a file

IMPORTANT: If debuging capabilities are desired, you must compile with the `-g` flag to tell gcc to include debug information. Additionally, default optimizations done by gcc can cause usability issues when debugging, you may want to add the `-O0` flag to tell gcc not to optimize anything.

```sh gdb binary # > invoke gdb targeting a binary file```

- Creating, deleting and listing breakpoints

`(gdb) break foo` : break just before `foo()`

`(gdb) info break` : show information about breakpoints

`(gdb) break 14` : break before executing line number `14`

`(gdb) delete 14` : delete breakpoint on line 14

`(gdb) break 14 if i=2` : break before executing line number `14` only if the value of `i` would be `2` when doing so

- Displaying variables: watch, display, print, info args, info locals

`(gdb) print i` : will print the value currently in `i` a single time

`(gdb) watch i` : will print the value of `i` every time it changes

`(gdb) info locals` : will print the values of all local variables

`(gdb) info args` : will print the values of all variables passed to the current function as arguments

`(gdb) display i` : will print the value in `i` before every subsequent command

- Stepping into functions and breaking out of functions

`(gdb) step` : execute next instruction

`(gdb) next` : execute next line

- Etc.

`(gdb) run` : begin executing

`(gdb) continue` : resume executing

`(gdb) layout src` : set gdb to Source view

`(gdb) set var i=5` : forcefully set the value of `i` equal to `5` in memory

`(gdb) backtrace full` : print the current call stack, all live variables, and their scope

#pagebreak()

== Creating makefiles and being familiar with the following

```Makefile
# Macros (Variables)
CC := gcc
CFLAGS := -Wall -Werror -Wextra -g

# target: prerequisite_file(s) 
#   commands
all: binary main.o foo.o bar.o

binary: main.o bar.o
# $(variable_name) is how you invoke a variable within commands
  @$(CC) $(CFLAGS) -o $@ $^ 
# @                         > suppress stdout from this command
#  $(CC)                    > resolves to: 'gcc'
#        $(CFLAGS)          > resolves to: '-Wall -Werror -Wextra -g'
#                  -o       > specify name of output file
#                     $@    > name of current target
#                        $^ > name of all prerequisites

main.o: main.c foo.o
  @$(CC) $(CFLAGS) -o $@ -c $^  

foo.o: foo.c
  @$(CC) $(CFLAGS) -o $@ -c $< 
#                           $< > name of first prerequisite

bar.o: bar.c
  @$(CC) $(CFLAGS) -o $@ -c $?
#                           $? > name of all prequisites newer than target

```

- Using -n and -f options:
  - `make -n` : the `-n` flag causes `make` to merely print what it would otherwise do, to stdout
  - `make -f /path/to/file` : the `-f` flag tells `make` to use `file` as the Makefile when running make. Notably, `make` will still run in the current working directory, *not* in `/path/to` 

