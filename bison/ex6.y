%{
#define YYSTYPE double
#include <stdio.h>
#include <stdlib.h>
extern int yylex(void);
extern FILE *yyin;
void yyerror(char *s);
%}

%token NUM
%left MAS MEN
%left DIV MUL
%token EOL

%%
linea	:
      	| linea exp EOL		{printf("%f\n", $2);}

exp	: NUM			{$$ = $1;}
    	| exp MAS exp		{$$ = $1 + $3;}
	| exp MEN exp		{$$ = $1 - $3;}
	| exp DIV exp		{
				if($3 == 0)
					$$ = 0;
				else
					$$ = $1/$3;
				}
	| exp MUL exp		{$$ = $1 * $3;}
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

