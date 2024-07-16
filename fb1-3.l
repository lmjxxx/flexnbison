%%
"+" { printf("PLUS\n");}
"-" { printf("MINUX\n");}
"*" { printf("TIMES\n");}
"/" { printf("DIVIDE\n");}
"|" { printf("ABS\n");}
[0-9]+ {printf("NUMBER %s \n", yytext);}
