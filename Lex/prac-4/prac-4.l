
keyWords asm|continue|float|new|signed|try|using|auto|default|for|operator|sizeof|typedef|namespace|break|delete|friend|private|static|union|bal|case|do|goto|protected|struct|unsigned|static_cast|catch|double|if|public|switch|virtual|const_cast|char|else|inline|register|template|void|dynamic_cast|class|enum|int|return|this|volatile|true|const|extern|long|short|throw|while|false
integers [0-9]+
float [0-9]+(\.[0-9]+)?
operators [\+\-\*\/\%]
indentifiers [A-Za-z_][A-Za-z0-9_]*
%%
{keyWords} {printf("it is a keyword \n");}
{integers} {printf("it is a integer \n");}
{float} {printf("it is a float \n");}
{operators} {printf("it is a operators\n");}
{indentifiers} {printf("it is a indefier");}
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