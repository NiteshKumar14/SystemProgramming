%{
    int id=0,key=0;


%}
keyword if|else|static|int|double|float|while|for|new|this|namepsace|using
%%
{keyword} {key++; printf(" keyword %s",yytext);}
[A-Za-z_][0-9A-Za-z_]* {id++; printf("identifier %s",yytext);}
  

%%
int main()
{
    yyin=fopen("input.txt","r");
    yylex();
    printf("id = %d \t key = %d ",id,key);
    return 0;
    
}
int yywrap()
{
    return 1;
}