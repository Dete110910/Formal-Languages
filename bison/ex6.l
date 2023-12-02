%{
#define YYSTYPE double
extern YYSTYPE yylval;
#include "ex6.tab.h"
%}

digito		[0-9]
%%
{digito}+(\.{digito}+)?	{yylval=atof(yytext);return NUM;}
\+			{return MAS;}
\*			{return MUL;}
\-			{return MEN;}
\/			{return DIV;}
[\n]			{return EOL;}
[ \t]			{/*Ignorar espacios*/}
.			{printf("Error léxico: %s\n", yytext);}
%%

int yywrap() { return 1; }
