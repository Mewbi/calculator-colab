#include <stdio.h>
#include "divisao_conta.h"

void divisao_conta() {
    	//  vars
	float total =0;
	float totalSgorjeta =0;
	int pessoas =0;
	int gorjeta =0;
	float contaFinal;
	//
	printf("\nQual o valor total da conta?: ");
	scanf("%f", &total);
	printf("\nQuantas pessoas comeram?: ");
	scanf("%d", &pessoas);
	printf("\nTem gorjeta?: ");
	scanf("%d", &gorjeta);
	
	totalSgorjeta = total;
	if (gorjeta != 0) {
		total = total + (total/gorjeta);
	};
	contaFinal = total/pessoas;
	//
	printf("\n\nValor da conta: %.2f",totalSgorjeta );
	printf("\nGorjeta: %d%%", gorjeta );
	printf("\nTotal com corjeta: %.2f", total);
	printf("\nTotal por pessoa: %.2f", contaFinal);

}
