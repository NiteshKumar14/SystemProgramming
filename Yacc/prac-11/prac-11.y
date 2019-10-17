%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%token A B NL
%%
Start :  Statement NL {printf("Accepted ! \n"); exit(1);}

Statement : A Statement B 
          | A B 
          
          ;
%%
int main()
{   yyparse();
    return 0;
}
int yyerror()
{
    printf("invalid statement ");
    exit(1);
}