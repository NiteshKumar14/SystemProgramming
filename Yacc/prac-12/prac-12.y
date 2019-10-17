%{
    #include <stdlib.h>
    #include <stdio.h>

%}
%token A  B NL
%%
Start : A A A A A A A A A A Statement B NL {printf("Accepted ! \n"); exit(1);}

Statement : A Statement
          |
          ;
          
%%
int main()
{
    yyparse();
    return 0;
}
int yyerror()
{
    printf("invalid statement");
    exit(1);
}