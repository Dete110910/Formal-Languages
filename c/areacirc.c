#include <stdio.h>
#define PI 3.1416

/* Definición de las variables del programa */
float radio;	

/* Programa Principal*/
int main(){
	printf("Programa que calcula el área de un círculo\n");
	printf("Ingrese el rádio del círculo:  ");
	scanf("%f",&radio);
	printf("\nEl área del círculo de radio %f es: %f Unidades Cuadradas\n",radio, PI*radio*radio);
return 0;
}
