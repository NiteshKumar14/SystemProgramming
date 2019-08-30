%%
[ \t]+$ ;
[ \t]+ ;
%%
int main()
{
    yylex();
    return 0;
}
int yywrap()
{
    
}