%{
int contMa = 0;
int contMi = 0;
%}
%%
[for]	{contMi++;printf("%s Es un for\n", yytext);}
[A-Z]	{contMa++;printf("%s Es Mayúscula\n", yytext);}
[a-z]	{contMi++;printf("%s Es Minúscula\n", yytext);}
.	{}
\n	{return 0;}
%%

int main(){
	printf("Contador\n");
	yylex();
	printf("\nTotal de Mayúsculas: %d\n", contMa);
	printf("\nTotal de Minúsculas: %d\n", contMi);
return 0;
}
