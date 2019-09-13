%{

#include <stdio.h>
int numChar=0,numLines=0;

%}
%%
[\n] {
    numChar++;
    numLines++;
}
. {
 numChar++;
}
%%
int main()
{
    yyin =fopen("input.txt","r");
    
    printf("There are %d lines ans %d no of chayylex();racters  \n",numLines,numChar);
    return 0;
}
int yywrap()
{
    return 1;
}