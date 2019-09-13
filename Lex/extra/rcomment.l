%{


int sl=0,ml=0;
%}

%%
"\"([^\"])*" ;
.*"\"//".*  ;
"/*"([^\/]|[\/][^\*].[ \n])*"*/"     ml++;
.*"//".*               sl++;


%%
int main()
{
    yyin =fopen("input.txt","r");
    yylex();   
    printf("sl = %d \n ml = %d ",sl,ml);
    return 0;
}
int yywrap()
{
    return 1;
}