%{
#include "ex5.tab.h"
%}

digito	[0-9]
%%
{digito}+(\.{digito})?	{return NUM;}
=			{return IGU;}
\+			{return MAS;}
;			{return EOL;}
[ \t\n]			{/*Ignorar espacios*/}
.			{printf("Error léxico: %s\n", yytext);}
%%
