= Forks

- Clones entire namespace
- non-blocking?
- pipes req. for intercomm

= Threads

- blocking?
- no pipes neccessary for intercomm
- functions must work via ```c void* type```
- main thread owns children, therefore killing main kills children
- req. `-lpthread` flag for gcc
- used when sections of software are independent so the CPU can work on it as it deems best
- requires you to explicity match the types of data when passing vars

```c
void* myturn(void* arg){
  //Do stuff...
}

int main(){
  pthread_t t1,t2;
  pthread_create(&t1,NULL,myturn,NULL);
  //            (thread addr,
  //                 properties of thread ,
  //                      func,
  //                             args for func)
  //...
  pthread_join(t1,NULL); // Equivalent to await()
  //or
  pthread_join(t1,(void*)&returned_data);
  //          (thread,
  //              where to put returned values)

  volatile int done = false; // volatile forces the thread to use the true location of 'done' rather
                             //   than cacheing it and using its cached version
}

```

FINAL\*: 10:15 am Thursday
