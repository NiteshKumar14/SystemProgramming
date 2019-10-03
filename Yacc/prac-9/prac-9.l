%{
    #include "y.tab.h"
    int par=0;
%}
id [a-z][0-9] 
num  [0-9]+(\.[0-9]+)?

%%
{id} return ID;
{num} return NUM;
{num}"=" {yyerror("lvalue required");}
.     return *yytext;
%%
int yywrap()
{
    return 1;
}