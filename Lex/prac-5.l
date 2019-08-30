%{
#include <string.h>
int length=0;
int max=0;
void display(int ,char*);
char *str;



%}
%%
[a-zA-Z0-9]+ {
    length=yyleng;
    if(length>max)
    max=length;
    str=(char*)malloc(yyleng);
    strcpy(str,yytext);
   
   
    
  
}
[ ] {
   
 

}
[\n ] {
     display(max,str);
    return; 
}


%%
void display(int len,char * str)
{
    printf("maximum length string is %d and string is  %s \n",len,str);
}
int main()
{   yylex();
    return 0;
}
int yywrap()
{
    return 0;
}