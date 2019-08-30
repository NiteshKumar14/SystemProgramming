%{
    int sl=0,ml=0;


%}
Knostar [^*]*
Nostarfwd [^*/]
Pstar [\*]+
%%
\"(\\|[^"\\])*\" { 
    printf("%s", yytext);
}
"/*"{Knostar}{Pstar}({Nostarfwd}{Knostar}{Pstar})*"/" { ml++;}
"//".* {sl++;} 
%%
int main()
{
   
    yyin=fopen("basic.txt","r");
     yylex();
    printf("sl = %d \t ml = %d",sl,ml);
    return 0;
}
int yywrap()
{
    return 1;
}