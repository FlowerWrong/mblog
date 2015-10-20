#include <unistd.h>
#include <stdlib.h>

int main(void) {
  if (write(1, "Here is some data.\n", 18) != 18)
    write(2, "A write errror has occured", 26);

  return 0;
}
