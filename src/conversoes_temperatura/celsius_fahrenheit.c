#include <stdio.h>
#include "celsius_fahrenheit.h"

void celsius_fahrenheit() {
  	float celsius, f;
  
printf("-- CONVERSÃO DE TEMPERATURA --");
    printf("Digite a temperatura em Celsius: ");
    scanf("%f", &celsius);
    
    f = (celsius * 9 / 5) + 32;
    
    printf("\nA temperatura de %.2fºC equivale a %.2fºF.\n", celsius, f);
}
