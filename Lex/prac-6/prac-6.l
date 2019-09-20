%{
    int words=0,chars=0,lines=0;

%}
Words [A-Za-z]+ 
Lines [\n]

%%

{Words} {words++; chars+=yyleng;}
{Lines} {lines++; chars++;}
.
 { chars++;

}

%%
int main()
{   yyin=fopen("input.txt","r");
    yylex();
    printf("Chars:%d \n Words : %d \n Lines: %d",chars,words,lines);
    return 0;
}
int yywrap()
{
    return 1;
}