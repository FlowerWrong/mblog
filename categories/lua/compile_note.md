# compile note


## mac

* multiple lua vms detected
```bash
gcc -c mylualib.c
gcc -O2 -bundle -undefined dynamic_lookup -o mylualib.so mylualib.o
```

* [others](https://yq.aliyun.com/articles/3024)
