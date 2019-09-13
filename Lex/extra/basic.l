%{
    #include <stdio.h>
int singleLine=0;
int multiLine=0;
%}
%%
.*"\"//".* ;
.*"//".* singleLine++;
("/*")([^/]|\*[^/])*("*/") multiLine++;
%%
int main()
{
   yyin =fopen("basic.txt","r");
    yylex();
  printf("sl = %d ml= %d",singleLine,multiLine);
    return 0;
}
int yywrap(){
    return 1;}
