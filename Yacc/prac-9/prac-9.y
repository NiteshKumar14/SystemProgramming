%{
 #include <stdio.h>
 #include <stdlib.h>
 extern FILE *yyin;
%}
%token ID NUM 
%left '='
%left '-''+'
%left '*' '/'
%%
Master :  Expr {printf("correct expression");exit(0);}
       ;
Expr   : Expr '+' Expr 
       | Expr '-' Expr      
       | Expr '*' Expr
       | Expr '/' Expr
       | '(' Expr ')'
       | ID 
       | Expr '=' Expr
       | NUM
%%
int yyerror(char*s)
{
    printf("%s \n",s);
    exit(0);
}
int main()
{   yyin=fopen("expression.txt","r");
    yyparse();
    return 0;
}
