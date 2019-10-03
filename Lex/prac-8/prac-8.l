%{  
    #include <string.h>
    int valid=0;
    char*s;

%}
digit [0-9]+
float [0-9]+(\.[0-9]+)?
operator [\+\-\/\*\%]

%%
[\t\ ]    ;
({digit}|{float}){operator}({digit}|{float}) {valid=1;s=(char*)malloc(yyleng); strcpy(s,yytext);}
[\n]    {return;}

%%
int main()
{
    yylex();
    if(valid)
    printf("%s is a valid arithmetic expression",s);
    else
    printf("%s is a invalid arithmetic expression",s);

    return 0;
}
int yywrap()
{
    return 1;
}