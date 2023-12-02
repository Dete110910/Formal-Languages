/** Esta sección, de definiciones, sirve para agregar cabeceras y declarar variables**/
%{
%}

/** Esta sección, de reglas. Está compuesto por las expresiones regulares que componen la léxica del lenguaje que se está procesando **/
%%
[a-z]	{printf("Es una minúscula\n");}
[A-Z]	{printf("Es una mayúscula\n");}
.	{printf("No es ni mayúscula ni minúscula\n");}
\n	{}
%%
/** Esta sección, la del código de usuario, sirve para funciones adicionales**/


