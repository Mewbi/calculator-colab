#include <stdio.h>
#include "soma.h"

void soma() {
  float a, b;

  printf("=== SOMA ===\n");
  printf("Digite o primeiro número: ");
  scanf("%f", &a);

  printf("Digite o segundo número: ");
  scanf("%f", &b);

  printf("\nResultado: %.2f + %.2f = %.2f\n", a, b, a + b);

  return;
}
