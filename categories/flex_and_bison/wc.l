/*
flex wc.l
gcc lex.yy.c -lfl
ctrl D
*/
%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int chars = 0;
int words = 0;
int lines = 0;
%}
%%
[a-zA-Z]+ { words++; chars += strlen(yytext); }
\n        { chars++; lines++; }
.         { chars++; }
%%

int main( int argc, char * argv[] ) {
  yylex();
  printf("%8d%8d%8d\n", lines, words, chars);
  return 0;
}
