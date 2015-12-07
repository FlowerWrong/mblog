#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("file.txt", "aw");
    if(fp == NULL) {
        printf("File Not Found");
        exit(1);
    }
    const char text[] = "Write this to the file"; // http://stackoverflow.com/questions/9627962/is-it-possible-to-convert-char-to-char-in-c
    fprintf(fp, "Some text: %s\n", text);

    /* print integers and floats */
    int i = 1;
    float py = 3.1415927;
    fprintf(fp, "Integer: %d, float: %f\n", i, py);

    /* printing single chatacters */
    char c = 'A';
    fprintf(fp, "A character: %c\n", c);

    fclose(fp);
    return 0;
}
