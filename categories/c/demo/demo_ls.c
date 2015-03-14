#include "apue.h"
#include <dirent.h>

int main(int argc, char *argv[])
{
  DIR *dp;
  struct dirent *dirp;
  if (argc != 2)
    err_quit("Usage: ls dir_name");

  if ((dp = opendir(argv[1])) == NULL)
    err_sys("can not open %s", argv[1]);
  while ((dirp = readdir(dp)) != NULL)
    printf("%s\n", dirp->d_name);

  closedir(dp);
  exit(0);
}
