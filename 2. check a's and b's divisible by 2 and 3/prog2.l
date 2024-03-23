%{
int a_count = 0;
int b_count = 0;
%}

%%
a { a_count++; }
b { b_count++; }
\n {
    if (a_count % 2 == 0 && b_count % 3 == 0) {
        printf("The number of 'a's is divisible by 2 and the number of 'b's is divisible by 3.\n");
    } else {
        printf("The number of 'a's is not divisible by 2 or the number of 'b's is not divisible by 3.\n");
    }
    a_count = 0;
    b_count = 0;
}
. ; 
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}







