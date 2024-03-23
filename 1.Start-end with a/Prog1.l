%{
#include<stdio.h>
%}
%%
(a|A)[a-z]*[0-9]*(a|A) {printf("Matching");}
(a|A)+ {printf("Matching");}
.* {printf("Not Matching");}
%%
int main()
{
    yylex();
    return 0;
}
int yywrap()
{

}