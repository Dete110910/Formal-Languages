%{
%}

%%
[0-9]	{printf("%s Es un dígito\n", yytext);}
[0-9]+\.[0-9]*	{printf("%s Es un flotante\n", yytext);}
.	{printf("%s No es un Dígito ni un Flotante\n", yytext);}
%%
/** Sección del código**/
int main(){
	printf("Identificador\n\n");
	yylex();
	printf("\nFin del programa !!");
return 0;
}
