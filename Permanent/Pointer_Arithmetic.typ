= Pointer Arithmetic

*Pointer* arithmetic is a system whereby you operate on the *address* of a point
in *memory*.

For example the address of a *member* of an array can be found by doing pointer
arithmetic on the base address of the array:
```c
  int* baseAddr, targetAddr;
  int index, bytesPerInt;
  targetAddr = baseAddr + (index * bytesPerInt);
```

#hide[
    = Related
    #link("Pointer.typ")[Pointer]
    #link("Address.typ")[Address]
    #link("Memory.typ")[Memory]
]
