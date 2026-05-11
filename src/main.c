/*
 * Calculadora Colaborativa
 * Projeto educacional para ensino de Git e GitHub
 *
 * Este projeto foi criado para um workshop de colaboração em projetos open source.
 * Cada funcionalidade deve ser implementada por um estudante diferente.
 */

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

// Operações Básicas
#include "operacoes_basicas/soma.h"
#include "operacoes_basicas/subtracao.h"
#include "operacoes_basicas/multiplicacao.h"
#include "operacoes_basicas/divisao.h"
#include "operacoes_basicas/resto_divisao.h"
#include "operacoes_basicas/potencia.h"
#include "operacoes_basicas/raiz_quadrada.h"
#include "operacoes_basicas/raiz_cubica.h"
#include "operacoes_basicas/valor_absoluto.h"
#include "operacoes_basicas/inverso.h"

// Trigonometria
#include "trigonometria/seno.h"
#include "trigonometria/cosseno.h"
#include "trigonometria/tangente.h"
#include "trigonometria/arco_seno.h"
#include "trigonometria/arco_cosseno.h"
#include "trigonometria/arco_tangente.h"
#include "trigonometria/seno_hiperbolico.h"
#include "trigonometria/cosseno_hiperbolico.h"

// Logaritmos e Exponenciais
#include "logaritmos/logaritmo_natural.h"
#include "logaritmos/logaritmo_base10.h"
#include "logaritmos/logaritmo_base2.h"
#include "logaritmos/logaritmo_base_n.h"
#include "logaritmos/exponencial.h"
#include "logaritmos/exponencial_base10.h"

// Conversões de Temperatura
#include "conversoes_temperatura/celsius_fahrenheit.h"
#include "conversoes_temperatura/fahrenheit_celsius.h"
#include "conversoes_temperatura/celsius_kelvin.h"
#include "conversoes_temperatura/kelvin_celsius.h"

// Conversões de Comprimento
#include "conversoes_comprimento/metros_centimetros.h"
#include "conversoes_comprimento/centimetros_metros.h"
#include "conversoes_comprimento/km_milhas.h"
#include "conversoes_comprimento/milhas_km.h"
#include "conversoes_comprimento/metros_pes.h"
#include "conversoes_comprimento/pes_metros.h"

// Conversões de Peso
#include "conversoes_peso/kg_libras.h"
#include "conversoes_peso/libras_kg.h"
#include "conversoes_peso/gramas_oncas.h"
#include "conversoes_peso/oncas_gramas.h"

// Conversões de Área
#include "conversoes_area/m2_pes2.h"
#include "conversoes_area/hectares_acres.h"
#include "conversoes_area/km2_milhas2.h"
#include "conversoes_area/cm2_polegadas2.h"

// Conversões de Volume
#include "conversoes_volume/litros_galoes.h"
#include "conversoes_volume/galoes_litros.h"
#include "conversoes_volume/ml_oncas_fluidas.h"
#include "conversoes_volume/m3_litros.h"

// Conversões de Tempo
#include "conversoes_tempo/horas_minutos.h"
#include "conversoes_tempo/minutos_segundos.h"
#include "conversoes_tempo/dias_horas.h"
#include "conversoes_tempo/semanas_dias.h"

// Conversões de Dados
#include "conversoes_dados/bytes_kb.h"
#include "conversoes_dados/kb_mb.h"
#include "conversoes_dados/mb_gb.h"
#include "conversoes_dados/gb_tb.h"

// Geometria
#include "geometria/area_circulo.h"
#include "geometria/perimetro_circulo.h"
#include "geometria/area_retangulo.h"
#include "geometria/perimetro_retangulo.h"
#include "geometria/area_triangulo.h"
#include "geometria/area_trapezio.h"
#include "geometria/volume_cubo.h"
#include "geometria/volume_esfera.h"

// Financeiro
#include "financeiro/juros_simples.h"
#include "financeiro/juros_compostos.h"
#include "financeiro/desconto_percentual.h"
#include "financeiro/aumento_percentual.h"
#include "financeiro/regra_de_tres.h"
#include "financeiro/divisao_conta.h"

// Cálculos Úteis
#include "calculos_uteis/imc.h"
#include "calculos_uteis/media_aritmetica.h"
#include "calculos_uteis/media_ponderada.h"
#include "calculos_uteis/velocidade_media.h"
#include "calculos_uteis/consumo_combustivel.h"
#include "calculos_uteis/idade_em_dias.h"
#include "calculos_uteis/fatorial.h"
#include "calculos_uteis/numero_primo.h"

void limpar_tela() {
    #ifdef _WIN32
        system("cls");
    #else
        system("clear");
    #endif
}

void pausar() {
    printf("\nPressione ENTER para continuar...");
    getchar();
    getchar();
}

void exibir_cabecalho() {
    printf("╔════════════════════════════════════════════════════════════╗\n");
    printf("║           CALCULADORA COLABORATIVA                         ║\n");
    printf("║     Projeto Educacional - Git & GitHub Workshop            ║\n");
    printf("╚════════════════════════════════════════════════════════════╝\n\n");
}

void menu_operacoes_basicas() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== OPERAÇÕES BÁSICAS ===\n\n");
        printf(" 1. Soma\n");
        printf(" 2. Subtração\n");
        printf(" 3. Multiplicação\n");
        printf(" 4. Divisão\n");
        printf(" 5. Resto da Divisão (Módulo)\n");
        printf(" 6. Potência\n");
        printf(" 7. Raiz Quadrada\n");
        printf(" 8. Raiz Cúbica\n");
        printf(" 9. Valor Absoluto\n");
        printf("10. Inverso (1/x)\n");
        printf(" 0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: soma(); pausar(); break;
            case 2: subtracao(); pausar(); break;
            case 3: multiplicacao(); pausar(); break;
            case 4: divisao(); pausar(); break;
            case 5: resto_divisao(); pausar(); break;
            case 6: potencia(); pausar(); break;
            case 7: raiz_quadrada(); pausar(); break;
            case 8: raiz_cubica(); pausar(); break;
            case 9: valor_absoluto(); pausar(); break;
            case 10: inverso(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_trigonometria() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== TRIGONOMETRIA ===\n\n");
        printf("1. Seno\n");
        printf("2. Cosseno\n");
        printf("3. Tangente\n");
        printf("4. Arco Seno\n");
        printf("5. Arco Cosseno\n");
        printf("6. Arco Tangente\n");
        printf("7. Seno Hiperbólico\n");
        printf("8. Cosseno Hiperbólico\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: seno(); pausar(); break;
            case 2: cosseno(); pausar(); break;
            case 3: tangente(); pausar(); break;
            case 4: arco_seno(); pausar(); break;
            case 5: arco_cosseno(); pausar(); break;
            case 6: arco_tangente(); pausar(); break;
            case 7: seno_hiperbolico(); pausar(); break;
            case 8: cosseno_hiperbolico(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_logaritmos() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== LOGARITMOS E EXPONENCIAIS ===\n\n");
        printf("1. Logaritmo Natural (ln)\n");
        printf("2. Logaritmo Base 10\n");
        printf("3. Logaritmo Base 2\n");
        printf("4. Logaritmo Base N\n");
        printf("5. Exponencial (e^x)\n");
        printf("6. Exponencial Base 10 (10^x)\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: logaritmo_natural(); pausar(); break;
            case 2: logaritmo_base10(); pausar(); break;
            case 3: logaritmo_base2(); pausar(); break;
            case 4: logaritmo_base_n(); pausar(); break;
            case 5: exponencial(); pausar(); break;
            case 6: exponencial_base10(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes_temperatura() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES DE TEMPERATURA ===\n\n");
        printf("1. Celsius para Fahrenheit\n");
        printf("2. Fahrenheit para Celsius\n");
        printf("3. Celsius para Kelvin\n");
        printf("4. Kelvin para Celsius\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: celsius_fahrenheit(); pausar(); break;
            case 2: fahrenheit_celsius(); pausar(); break;
            case 3: celsius_kelvin(); pausar(); break;
            case 4: kelvin_celsius(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes_comprimento() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES DE COMPRIMENTO ===\n\n");
        printf("1. Metros para Centímetros\n");
        printf("2. Centímetros para Metros\n");
        printf("3. Quilômetros para Milhas\n");
        printf("4. Milhas para Quilômetros\n");
        printf("5. Metros para Pés\n");
        printf("6. Pés para Metros\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: metros_centimetros(); pausar(); break;
            case 2: centimetros_metros(); pausar(); break;
            case 3: km_milhas(); pausar(); break;
            case 4: milhas_km(); pausar(); break;
            case 5: metros_pes(); pausar(); break;
            case 6: pes_metros(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes_peso() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES DE PESO ===\n\n");
        printf("1. Quilogramas para Libras\n");
        printf("2. Libras para Quilogramas\n");
        printf("3. Gramas para Onças\n");
        printf("4. Onças para Gramas\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: kg_libras(); pausar(); break;
            case 2: libras_kg(); pausar(); break;
            case 3: gramas_oncas(); pausar(); break;
            case 4: oncas_gramas(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes_area() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES DE ÁREA ===\n\n");
        printf("1. Metros² para Pés²\n");
        printf("2. Hectares para Acres\n");
        printf("3. Quilômetros² para Milhas²\n");
        printf("4. Centímetros² para Polegadas²\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: m2_pes2(); pausar(); break;
            case 2: hectares_acres(); pausar(); break;
            case 3: km2_milhas2(); pausar(); break;
            case 4: cm2_polegadas2(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes_volume() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES DE VOLUME ===\n\n");
        printf("1. Litros para Galões\n");
        printf("2. Galões para Litros\n");
        printf("3. Mililitros para Onças Fluidas\n");
        printf("4. Metros Cúbicos para Litros\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: litros_galoes(); pausar(); break;
            case 2: galoes_litros(); pausar(); break;
            case 3: ml_oncas_fluidas(); pausar(); break;
            case 4: m3_litros(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes_tempo() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES DE TEMPO ===\n\n");
        printf("1. Horas para Minutos\n");
        printf("2. Minutos para Segundos\n");
        printf("3. Dias para Horas\n");
        printf("4. Semanas para Dias\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: horas_minutos(); pausar(); break;
            case 2: minutos_segundos(); pausar(); break;
            case 3: dias_horas(); pausar(); break;
            case 4: semanas_dias(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes_dados() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES DE DADOS ===\n\n");
        printf("1. Bytes para Kilobytes\n");
        printf("2. Kilobytes para Megabytes\n");
        printf("3. Megabytes para Gigabytes\n");
        printf("4. Gigabytes para Terabytes\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: bytes_kb(); pausar(); break;
            case 2: kb_mb(); pausar(); break;
            case 3: mb_gb(); pausar(); break;
            case 4: gb_tb(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_geometria() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== GEOMETRIA ===\n\n");
        printf("1. Área do Círculo\n");
        printf("2. Perímetro do Círculo\n");
        printf("3. Área do Retângulo\n");
        printf("4. Perímetro do Retângulo\n");
        printf("5. Área do Triângulo\n");
        printf("6. Área do Trapézio\n");
        printf("7. Volume do Cubo\n");
        printf("8. Volume da Esfera\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: area_circulo(); pausar(); break;
            case 2: perimetro_circulo(); pausar(); break;
            case 3: area_retangulo(); pausar(); break;
            case 4: perimetro_retangulo(); pausar(); break;
            case 5: area_triangulo(); pausar(); break;
            case 6: area_trapezio(); pausar(); break;
            case 7: volume_cubo(); pausar(); break;
            case 8: volume_esfera(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_financeiro() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CÁLCULOS FINANCEIROS ===\n\n");
        printf("1. Juros Simples\n");
        printf("2. Juros Compostos\n");
        printf("3. Desconto Percentual\n");
        printf("4. Aumento Percentual\n");
        printf("5. Regra de Três Simples\n");
        printf("6. Divisão de Conta\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: juros_simples(); pausar(); break;
            case 2: juros_compostos(); pausar(); break;
            case 3: desconto_percentual(); pausar(); break;
            case 4: aumento_percentual(); pausar(); break;
            case 5: regra_de_tres(); pausar(); break;
            case 6: divisao_conta(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_calculos_uteis() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CÁLCULOS ÚTEIS ===\n\n");
        printf("1. IMC (Índice de Massa Corporal)\n");
        printf("2. Média Aritmética\n");
        printf("3. Média Ponderada\n");
        printf("4. Velocidade Média\n");
        printf("5. Consumo de Combustível\n");
        printf("6. Idade em Dias\n");
        printf("7. Fatorial\n");
        printf("8. Verificar Número Primo\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: imc(); pausar(); break;
            case 2: media_aritmetica(); pausar(); break;
            case 3: media_ponderada(); pausar(); break;
            case 4: velocidade_media(); pausar(); break;
            case 5: consumo_combustivel(); pausar(); break;
            case 6: idade_em_dias(); pausar(); break;
            case 7: fatorial(); pausar(); break;
            case 8: numero_primo(); pausar(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_conversoes() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== CONVERSÕES ===\n\n");
        printf("1. Temperatura\n");
        printf("2. Comprimento\n");
        printf("3. Peso\n");
        printf("4. Área\n");
        printf("5. Volume\n");
        printf("6. Tempo\n");
        printf("7. Dados (Bytes)\n");
        printf("0. Voltar\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: menu_conversoes_temperatura(); break;
            case 2: menu_conversoes_comprimento(); break;
            case 3: menu_conversoes_peso(); break;
            case 4: menu_conversoes_area(); break;
            case 5: menu_conversoes_volume(); break;
            case 6: menu_conversoes_tempo(); break;
            case 7: menu_conversoes_dados(); break;
            case 0: break;
            default: printf("Opção inválida!\n"); pausar();
        }
    } while(opcao != 0);
}

void menu_principal() {
    int opcao;

    do {
        limpar_tela();
        exibir_cabecalho();
        printf("=== MENU PRINCIPAL ===\n\n");
        printf("1. Operações Básicas\n");
        printf("2. Trigonometria\n");
        printf("3. Logaritmos e Exponenciais\n");
        printf("4. Conversões\n");
        printf("5. Geometria\n");
        printf("6. Cálculos Financeiros\n");
        printf("7. Cálculos Úteis\n");
        printf("0. Sair\n\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);

        switch(opcao) {
            case 1: menu_operacoes_basicas(); break;
            case 2: menu_trigonometria(); break;
            case 3: menu_logaritmos(); break;
            case 4: menu_conversoes(); break;
            case 5: menu_geometria(); break;
            case 6: menu_financeiro(); break;
            case 7: menu_calculos_uteis(); break;
            case 0:
                limpar_tela();
                printf("Obrigado por usar a Calculadora Colaborativa!\n");
                printf("Este é um projeto educacional para aprender Git e GitHub.\n\n");
                break;
            default:
                printf("Opção inválida!\n");
                pausar();
        }
    } while(opcao != 0);
}

int main() {
    setlocale(LC_ALL, "Portuguese");
    menu_principal();
    return 0;
}
