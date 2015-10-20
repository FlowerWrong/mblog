#include <unistd.h>
#include <stdlib.h>

int main(void) {
  char buf[20];
  int n_read;
  n_read = read(0, buf, 128);
  if (n_read == -1)
    write(2, "a read error has occurred\n", 26);

  if (write(1, buf, n_read) != n_read)
    write(2, "a write error has occurred\n", 27);

  return 0;
}
