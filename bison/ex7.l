%{
#include "ex7.tab.h"
%}

digito		[0-9]
identificador 	[a-z][a-zA-Z0-9]{0,10}

%%
{digito}+					{return INT;}
{digito}+\.{digito}*				{return FLO;}
si						{return CIF;}
sino						{return CEL;}
finsi						{return CFN;}
{identificador}					{return VAR;}
==						{return IGU;}
"<="						{return MEQ;}
">="						{return MAQ;}
!=						{return DIF;}
\(						{return APT;}
\)						{return CPT;}
\{						{return ACH;}
\}						{return CCH;}
\/\*[a-zA-Z0-9 -áéíóú]*\*\/			{/*Ignorar comentarios*/}
[ \t\n]						{/*Ignorar espacios*/}
.						{printf("Error léxico: %s\n", yytext);}
%%
