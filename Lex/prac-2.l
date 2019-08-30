%%

[ \t]+ {
    printf(" tab or space occured within line \n" );
   

}
[ \t]+$ {
    printf("tab or space occured at eof \n ");
    
}
[a-z] {
    printf(" tab or space not found \n");
    
}
%%
int main()
{
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}