#import "/templates/permanent.typ": *
#show: style

#align(center)[= GCC Compiler]

// TODO: clarify these flags
- *-E*: output .c file after running the preprocessor
- *-S*: output assembly file
- *-c*: output object file
- *-Wall*: pneumonic: 'warning = all'
- *-o*: rename output file
- *-l*: 'library'
- *-m*: 'lib\_*m*.a'?
- *-print-search-dirs*: print all directorys that gcc looks through when linking(?)
- *-shared*: create a shared library

====== ar
- *-rcs* [desired name] [oject file]: create a static library

#align(center)[
  ====== GCC compilation steps:

  $"Preprocessor" -> "Assembly" -> "Object Code" -> "Linker" -> "Binary"$
]

#aside[```bash readelf -a [shared library file] | grep [function name]```

quick search to check if _function name_ exists in _library file_]


