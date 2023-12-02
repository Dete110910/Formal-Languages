%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex(void);
extern FILE *yyin;
void yyerror(char *s);
%}

%token INT FLO CIF CEL VAR IGU MEQ MAQ DIF APT CPT ACH CCH CFN


%%
linea	:
      	|	linea ifsim CFN 	{printf("si correcto \n");}
	|	linea ifelse CFN	{printf("si/sino correcto \n");}
ifsim	:	CIF APT cond CPT ACH CCH

ifelse	:	CIF APT cond CPT ACH CCH CEL ACH CCH


cond	:	VAR IGU INT
     	|	VAR IGU FLO 
     	|	VAR MEQ INT 
     	|	VAR MEQ FLO 
     	|	VAR MAQ INT 
     	|	VAR MAQ FLO 
     	|	VAR DIF INT 
     	|	VAR DIF FLO 
%%


void yyerror(char *s){
	printf("Error: %s\n", s);
}

int main(int argc, char **argv){
	if(argc > 1)
		yyin=fopen(argv[1], "rt");
	else 
		yyin=stdin;
	yyparse();
	return 0;
}



