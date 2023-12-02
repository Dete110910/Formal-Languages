%{
#include <stdio.h>
extern int yylex(void);
extern char *yytext;
void yyerror(char *s);
%}
%token NUM
%token MAS
%token IGU
%token EOL
%%
entrada :		/*Cadena vacía*/
	|		entrada linea

linea	: EOL
        | exp EOL	{printf("Sintaxis Correcta\n");}

exp	: NUM MAS NUM IGU NUM
%%

void yyerror(char *s){
	printf("Error: %s\n", s);
}

int main(){
	printf("Inicio del programa:\n");
	yyparse();
	return 0;
}
