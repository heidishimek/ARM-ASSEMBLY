# arm

ARM assembly language implementations of the following problems:

### to_upper 
Given a string of upper, lower, and non-alphanumeric characters, transform lowercase letters into uppercase letters.

```bash
$ ./to_upper FooBar1
C: FOOBAR1
Asm: FOOBAR1
```

### max3 
Given three signed integer parameters, find the largest by comparing the first two, and then comparing the larger of those with the third. 

```bash
$ ./max3 2 4 6
C: 6
Asm: 6
Asm: FOOBAR1
```

### find_max_index 
Given an array of integers, return the index of the largest integer in the array

```bash
$ ./find_max_index 5 4 3 2 1
C: 0
Asm: 0
bash
$ ./find_max_index 1 2 3 4 5
C: 4
Asm: 4
```

### sort 
Given the address of an array of unsigned integers, and the length of the array, sort the input array descending (largest to smallest) in place given the C implementation of the sorting algorithm.

```bash
$ ./sort 10 30 20
C: 30 20 10
Asm: 30 20 10
```
