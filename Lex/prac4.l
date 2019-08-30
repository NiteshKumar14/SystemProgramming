%{
   
    void display(int cipher);
   
%}
%%

    

[XYZxyz] {
    int cipher=-23;
 display(cipher);
}
[A-Za-z] {
    int cipher=3;
    display(cipher);

}
%%
void display(int cipher)
{
    char c=yytext[0]+cipher;
   
    printf("%c",c);

}
int main()
{
    yylex();
    return 0;

}
int yywrap()
{
    return 1;
}
