#!/bin/bash

# Script para criar todas as issues no GitHub
# Requisitos: GitHub CLI (gh) instalado e autenticado
#
# Instalação do gh:
#   - Linux: sudo apt install gh
#   - Mac: brew install gh
#   - Windows: winget install GitHub.cli
#
# Autenticação:
#   gh auth login
#
# Uso:
#   chmod +x criar_issues.sh
#   ./criar_issues.sh

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=========================================="
echo "  Criador de Issues - Calculadora Colaborativa"
echo "=========================================="
echo ""

# Verificar se gh está instalado
if ! command -v gh &> /dev/null; then
    echo -e "${RED}Erro: GitHub CLI (gh) não está instalado!${NC}"
    echo "Instale com:"
    echo "  - Linux: sudo apt install gh"
    echo "  - Mac: brew install gh"
    echo "  - Windows: winget install GitHub.cli"
    exit 1
fi

# Verificar se está autenticado
if ! gh auth status &> /dev/null; then
    echo -e "${RED}Erro: Você não está autenticado no GitHub CLI!${NC}"
    echo "Execute: gh auth login"
    exit 1
fi

# Verificar se está em um repositório git
if ! git rev-parse --is-inside-work-tree &> /dev/null; then
    echo -e "${RED}Erro: Este script deve ser executado dentro do repositório git!${NC}"
    exit 1
fi

echo -e "${GREEN}GitHub CLI detectado e autenticado!${NC}"
echo ""
echo -e "${YELLOW}ATENÇÃO: Este script irá criar 76 issues no repositório.${NC}"
echo "Repositório atual: $(gh repo view --json nameWithOwner -q .nameWithOwner 2>/dev/null || echo 'Não identificado')"
echo ""
read -p "Deseja continuar? (s/n): " resposta

if [[ ! "$resposta" =~ ^[Ss]$ ]]; then
    echo "Operação cancelada."
    exit 0
fi

echo ""
echo "Criando issues..."
echo ""

# Função para criar issue
criar_issue() {
    local titulo="$1"
    local corpo="$2"
    local labels="$3"

    echo -n "Criando: $titulo... "
    if gh issue create --title "$titulo" --body "$corpo" --label "$labels" > /dev/null 2>&1; then
        echo -e "${GREEN}OK${NC}"
    else
        echo -e "${RED}FALHA${NC}"
    fi
    sleep 0.5  # Pequena pausa para evitar rate limiting
}

# Criar labels primeiro
echo "Criando labels..."
gh label create "operacoes-basicas" --color "0E8A16" --description "Operações matemáticas básicas" 2>/dev/null
gh label create "trigonometria" --color "1D76DB" --description "Funções trigonométricas" 2>/dev/null
gh label create "logaritmos" --color "5319E7" --description "Logaritmos e exponenciais" 2>/dev/null
gh label create "conversao-temperatura" --color "D93F0B" --description "Conversões de temperatura" 2>/dev/null
gh label create "conversao-comprimento" --color "FBCA04" --description "Conversões de comprimento" 2>/dev/null
gh label create "conversao-peso" --color "B60205" --description "Conversões de peso" 2>/dev/null
gh label create "conversao-area" --color "006B75" --description "Conversões de área" 2>/dev/null
gh label create "conversao-volume" --color "0052CC" --description "Conversões de volume" 2>/dev/null
gh label create "conversao-tempo" --color "BFD4F2" --description "Conversões de tempo" 2>/dev/null
gh label create "conversao-dados" --color "C2E0C6" --description "Conversões de dados" 2>/dev/null
gh label create "geometria" --color "D4C5F9" --description "Cálculos geométricos" 2>/dev/null
gh label create "financeiro" --color "FEF2C0" --description "Cálculos financeiros" 2>/dev/null
gh label create "calculos-uteis" --color "F9D0C4" --description "Cálculos úteis diversos" 2>/dev/null
gh label create "facil" --color "C5DEF5" --description "Dificuldade: Fácil" 2>/dev/null
gh label create "medio" --color "FFC107" --description "Dificuldade: Médio" 2>/dev/null
echo ""

# ============================================
# OPERAÇÕES BÁSICAS
# ============================================

criar_issue "Implementar: Soma" \
"## Descrição
Implementar a funcionalidade de soma de dois números.

## Arquivo
\`src/operacoes_basicas/soma.c\`

## Requisitos
- Ler dois números do usuário
- Calcular e exibir a soma

## Exemplo de uso
\`\`\`
=== SOMA ===

Digite o primeiro número: 5
Digite o segundo número: 3

Resultado: 5.00 + 3.00 = 8.00
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Subtração" \
"## Descrição
Implementar a funcionalidade de subtração de dois números.

## Arquivo
\`src/operacoes_basicas/subtracao.c\`

## Requisitos
- Ler dois números do usuário
- Calcular e exibir a subtração (primeiro - segundo)

## Exemplo de uso
\`\`\`
=== SUBTRAÇÃO ===

Digite o primeiro número: 10
Digite o segundo número: 4

Resultado: 10.00 - 4.00 = 6.00
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Multiplicação" \
"## Descrição
Implementar a funcionalidade de multiplicação de dois números.

## Arquivo
\`src/operacoes_basicas/multiplicacao.c\`

## Requisitos
- Ler dois números do usuário
- Calcular e exibir o produto

## Exemplo de uso
\`\`\`
=== MULTIPLICAÇÃO ===

Digite o primeiro número: 7
Digite o segundo número: 6

Resultado: 7.00 × 6.00 = 42.00
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Divisão" \
"## Descrição
Implementar a funcionalidade de divisão de dois números.

## Arquivo
\`src/operacoes_basicas/divisao.c\`

## Requisitos
- Ler dois números do usuário
- **Tratar divisão por zero** (exibir mensagem de erro)
- Calcular e exibir o quociente

## Exemplo de uso
\`\`\`
=== DIVISÃO ===

Digite o dividendo: 20
Digite o divisor: 4

Resultado: 20.00 / 4.00 = 5.00
\`\`\`

## Caso de erro
\`\`\`
Digite o divisor: 0

Erro: Não é possível dividir por zero!
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Resto da Divisão (Módulo)" \
"## Descrição
Implementar a funcionalidade de resto da divisão entre dois números inteiros.

## Arquivo
\`src/operacoes_basicas/resto_divisao.c\`

## Requisitos
- Ler dois números inteiros do usuário
- Calcular e exibir o resto da divisão (operador %)
- Tratar divisão por zero

## Exemplo de uso
\`\`\`
=== RESTO DA DIVISÃO ===

Digite o dividendo: 17
Digite o divisor: 5

Resultado: 17 % 5 = 2
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Potência" \
"## Descrição
Implementar a funcionalidade de potenciação (base elevada ao expoente).

## Arquivo
\`src/operacoes_basicas/potencia.c\`

## Requisitos
- Ler base e expoente do usuário
- Usar a função \`pow()\` de \`math.h\`
- Calcular e exibir o resultado

## Exemplo de uso
\`\`\`
=== POTÊNCIA ===

Digite a base: 2
Digite o expoente: 10

Resultado: 2.00 ^ 10.00 = 1024.00
\`\`\`

## Dica
\`\`\`c
#include <math.h>
resultado = pow(base, expoente);
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Raiz Quadrada" \
"## Descrição
Implementar a funcionalidade de raiz quadrada.

## Arquivo
\`src/operacoes_basicas/raiz_quadrada.c\`

## Requisitos
- Ler um número do usuário
- **Validar que o número não é negativo**
- Usar a função \`sqrt()\` de \`math.h\`
- Calcular e exibir o resultado

## Exemplo de uso
\`\`\`
=== RAIZ QUADRADA ===

Digite um número: 144

Raiz quadrada de 144.00 = 12.00
\`\`\`

## Caso de erro
\`\`\`
Digite um número: -5

Erro: Não existe raiz quadrada real de número negativo!
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Raiz Cúbica" \
"## Descrição
Implementar a funcionalidade de raiz cúbica.

## Arquivo
\`src/operacoes_basicas/raiz_cubica.c\`

## Requisitos
- Ler um número do usuário
- Usar a função \`cbrt()\` de \`math.h\`
- Calcular e exibir o resultado

## Exemplo de uso
\`\`\`
=== RAIZ CÚBICA ===

Digite um número: 27

Raiz cúbica de 27.00 = 3.00
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Valor Absoluto" \
"## Descrição
Implementar a funcionalidade de valor absoluto.

## Arquivo
\`src/operacoes_basicas/valor_absoluto.c\`

## Requisitos
- Ler um número do usuário
- Usar a função \`fabs()\` de \`math.h\`
- Calcular e exibir o valor absoluto

## Exemplo de uso
\`\`\`
=== VALOR ABSOLUTO ===

Digite um número: -42.5

Valor absoluto de -42.50 = 42.50
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

criar_issue "Implementar: Inverso (1/x)" \
"## Descrição
Implementar a funcionalidade de cálculo do inverso de um número.

## Arquivo
\`src/operacoes_basicas/inverso.c\`

## Requisitos
- Ler um número do usuário
- **Tratar x = 0** (exibir mensagem de erro)
- Calcular e exibir 1/x

## Exemplo de uso
\`\`\`
=== INVERSO (1/x) ===

Digite um número: 4

Inverso de 4.00 = 0.25
\`\`\`

## Caso de erro
\`\`\`
Digite um número: 0

Erro: Não é possível calcular o inverso de zero!
\`\`\`

## Dificuldade
Fácil" \
"operacoes-basicas,facil"

# ============================================
# TRIGONOMETRIA
# ============================================

criar_issue "Implementar: Seno" \
"## Descrição
Implementar a funcionalidade de cálculo do seno de um ângulo.

## Arquivo
\`src/trigonometria/seno.c\`

## Requisitos
- Ler um ângulo em **graus** do usuário
- Converter para radianos
- Usar a função \`sin()\` de \`math.h\`
- Exibir o resultado

## Fórmula de conversão
\`radianos = graus * M_PI / 180.0\`

## Exemplo de uso
\`\`\`
=== SENO ===

Digite o ângulo em graus: 90

Seno de 90° = 1.000000
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

criar_issue "Implementar: Cosseno" \
"## Descrição
Implementar a funcionalidade de cálculo do cosseno de um ângulo.

## Arquivo
\`src/trigonometria/cosseno.c\`

## Requisitos
- Ler um ângulo em **graus** do usuário
- Converter para radianos
- Usar a função \`cos()\` de \`math.h\`
- Exibir o resultado

## Fórmula de conversão
\`radianos = graus * M_PI / 180.0\`

## Exemplo de uso
\`\`\`
=== COSSENO ===

Digite o ângulo em graus: 60

Cosseno de 60° = 0.500000
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

criar_issue "Implementar: Tangente" \
"## Descrição
Implementar a funcionalidade de cálculo da tangente de um ângulo.

## Arquivo
\`src/trigonometria/tangente.c\`

## Requisitos
- Ler um ângulo em **graus** do usuário
- Converter para radianos
- Usar a função \`tan()\` de \`math.h\`
- Exibir o resultado

## Fórmula de conversão
\`radianos = graus * M_PI / 180.0\`

## Exemplo de uso
\`\`\`
=== TANGENTE ===

Digite o ângulo em graus: 45

Tangente de 45° = 1.000000
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

criar_issue "Implementar: Arco Seno" \
"## Descrição
Implementar a funcionalidade de cálculo do arco seno.

## Arquivo
\`src/trigonometria/arco_seno.c\`

## Requisitos
- Ler um valor do usuário
- **Validar que o valor está entre -1 e 1**
- Usar a função \`asin()\` de \`math.h\`
- Converter o resultado de radianos para **graus**
- Exibir o resultado

## Fórmula de conversão
\`graus = radianos * 180.0 / M_PI\`

## Exemplo de uso
\`\`\`
=== ARCO SENO ===

Digite um valor (-1 a 1): 0.5

Arco seno de 0.50 = 30.00°
\`\`\`

## Caso de erro
\`\`\`
Digite um valor (-1 a 1): 2

Erro: O valor deve estar entre -1 e 1!
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

criar_issue "Implementar: Arco Cosseno" \
"## Descrição
Implementar a funcionalidade de cálculo do arco cosseno.

## Arquivo
\`src/trigonometria/arco_cosseno.c\`

## Requisitos
- Ler um valor do usuário
- **Validar que o valor está entre -1 e 1**
- Usar a função \`acos()\` de \`math.h\`
- Converter o resultado de radianos para **graus**
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== ARCO COSSENO ===

Digite um valor (-1 a 1): 0.5

Arco cosseno de 0.50 = 60.00°
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

criar_issue "Implementar: Arco Tangente" \
"## Descrição
Implementar a funcionalidade de cálculo do arco tangente.

## Arquivo
\`src/trigonometria/arco_tangente.c\`

## Requisitos
- Ler um valor do usuário
- Usar a função \`atan()\` de \`math.h\`
- Converter o resultado de radianos para **graus**
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== ARCO TANGENTE ===

Digite um valor: 1

Arco tangente de 1.00 = 45.00°
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

criar_issue "Implementar: Seno Hiperbólico" \
"## Descrição
Implementar a funcionalidade de cálculo do seno hiperbólico.

## Arquivo
\`src/trigonometria/seno_hiperbolico.c\`

## Requisitos
- Ler um valor do usuário
- Usar a função \`sinh()\` de \`math.h\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== SENO HIPERBÓLICO ===

Digite um valor: 1

Seno hiperbólico de 1.00 = 1.175201
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

criar_issue "Implementar: Cosseno Hiperbólico" \
"## Descrição
Implementar a funcionalidade de cálculo do cosseno hiperbólico.

## Arquivo
\`src/trigonometria/cosseno_hiperbolico.c\`

## Requisitos
- Ler um valor do usuário
- Usar a função \`cosh()\` de \`math.h\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== COSSENO HIPERBÓLICO ===

Digite um valor: 1

Cosseno hiperbólico de 1.00 = 1.543081
\`\`\`

## Dificuldade
Médio" \
"trigonometria,medio"

# ============================================
# LOGARITMOS E EXPONENCIAIS
# ============================================

criar_issue "Implementar: Logaritmo Natural (ln)" \
"## Descrição
Implementar a funcionalidade de cálculo do logaritmo natural (base e).

## Arquivo
\`src/logaritmos/logaritmo_natural.c\`

## Requisitos
- Ler um número do usuário
- **Validar que o número é maior que 0**
- Usar a função \`log()\` de \`math.h\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== LOGARITMO NATURAL (ln) ===

Digite um número: 2.718281828

ln(2.72) = 1.000000
\`\`\`

## Caso de erro
\`\`\`
Digite um número: -5

Erro: O logaritmo só está definido para números positivos!
\`\`\`

## Dificuldade
Médio" \
"logaritmos,medio"

criar_issue "Implementar: Logaritmo Base 10" \
"## Descrição
Implementar a funcionalidade de cálculo do logaritmo na base 10.

## Arquivo
\`src/logaritmos/logaritmo_base10.c\`

## Requisitos
- Ler um número do usuário
- **Validar que o número é maior que 0**
- Usar a função \`log10()\` de \`math.h\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== LOGARITMO BASE 10 ===

Digite um número: 1000

log₁₀(1000.00) = 3.000000
\`\`\`

## Dificuldade
Médio" \
"logaritmos,medio"

criar_issue "Implementar: Logaritmo Base 2" \
"## Descrição
Implementar a funcionalidade de cálculo do logaritmo na base 2.

## Arquivo
\`src/logaritmos/logaritmo_base2.c\`

## Requisitos
- Ler um número do usuário
- **Validar que o número é maior que 0**
- Usar a função \`log2()\` de \`math.h\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== LOGARITMO BASE 2 ===

Digite um número: 1024

log₂(1024.00) = 10.000000
\`\`\`

## Dificuldade
Médio" \
"logaritmos,medio"

criar_issue "Implementar: Logaritmo Base N" \
"## Descrição
Implementar a funcionalidade de cálculo do logaritmo em qualquer base.

## Arquivo
\`src/logaritmos/logaritmo_base_n.c\`

## Requisitos
- Ler o número e a base do usuário
- **Validar que número e base são maiores que 0**
- **Validar que a base é diferente de 1**
- Usar a fórmula: \`logₙ(x) = ln(x) / ln(n)\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== LOGARITMO BASE N ===

Digite o número: 81
Digite a base: 3

log₃(81.00) = 4.000000
\`\`\`

## Dificuldade
Médio" \
"logaritmos,medio"

criar_issue "Implementar: Exponencial (e^x)" \
"## Descrição
Implementar a funcionalidade de cálculo da exponencial (e elevado a x).

## Arquivo
\`src/logaritmos/exponencial.c\`

## Requisitos
- Ler um número do usuário
- Usar a função \`exp()\` de \`math.h\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== EXPONENCIAL (e^x) ===

Digite o expoente: 2

e^2.00 = 7.389056
\`\`\`

## Dificuldade
Fácil" \
"logaritmos,facil"

criar_issue "Implementar: Exponencial Base 10 (10^x)" \
"## Descrição
Implementar a funcionalidade de cálculo de 10 elevado a x.

## Arquivo
\`src/logaritmos/exponencial_base10.c\`

## Requisitos
- Ler um número do usuário
- Usar \`pow(10, x)\` de \`math.h\`
- Exibir o resultado

## Exemplo de uso
\`\`\`
=== EXPONENCIAL BASE 10 (10^x) ===

Digite o expoente: 3

10^3.00 = 1000.000000
\`\`\`

## Dificuldade
Fácil" \
"logaritmos,facil"

# ============================================
# CONVERSÕES DE TEMPERATURA
# ============================================

criar_issue "Implementar: Celsius para Fahrenheit" \
"## Descrição
Converter temperatura de Celsius para Fahrenheit.

## Arquivo
\`src/conversoes_temperatura/celsius_fahrenheit.c\`

## Fórmula
\`F = C × 9/5 + 32\`

## Exemplo de uso
\`\`\`
=== CELSIUS PARA FAHRENHEIT ===

Digite a temperatura em Celsius: 100

100.00°C = 212.00°F
\`\`\`

## Dificuldade
Fácil" \
"conversao-temperatura,facil"

criar_issue "Implementar: Fahrenheit para Celsius" \
"## Descrição
Converter temperatura de Fahrenheit para Celsius.

## Arquivo
\`src/conversoes_temperatura/fahrenheit_celsius.c\`

## Fórmula
\`C = (F - 32) × 5/9\`

## Exemplo de uso
\`\`\`
=== FAHRENHEIT PARA CELSIUS ===

Digite a temperatura em Fahrenheit: 98.6

98.60°F = 37.00°C
\`\`\`

## Dificuldade
Fácil" \
"conversao-temperatura,facil"

criar_issue "Implementar: Celsius para Kelvin" \
"## Descrição
Converter temperatura de Celsius para Kelvin.

## Arquivo
\`src/conversoes_temperatura/celsius_kelvin.c\`

## Fórmula
\`K = C + 273.15\`

## Exemplo de uso
\`\`\`
=== CELSIUS PARA KELVIN ===

Digite a temperatura em Celsius: 25

25.00°C = 298.15 K
\`\`\`

## Dificuldade
Fácil" \
"conversao-temperatura,facil"

criar_issue "Implementar: Kelvin para Celsius" \
"## Descrição
Converter temperatura de Kelvin para Celsius.

## Arquivo
\`src/conversoes_temperatura/kelvin_celsius.c\`

## Fórmula
\`C = K - 273.15\`

## Exemplo de uso
\`\`\`
=== KELVIN PARA CELSIUS ===

Digite a temperatura em Kelvin: 300

300.00 K = 26.85°C
\`\`\`

## Dificuldade
Fácil" \
"conversao-temperatura,facil"

# ============================================
# CONVERSÕES DE COMPRIMENTO
# ============================================

criar_issue "Implementar: Metros para Centímetros" \
"## Descrição
Converter metros para centímetros.

## Arquivo
\`src/conversoes_comprimento/metros_centimetros.c\`

## Fórmula
\`cm = m × 100\`

## Exemplo de uso
\`\`\`
=== METROS PARA CENTÍMETROS ===

Digite o valor em metros: 1.75

1.75 m = 175.00 cm
\`\`\`

## Dificuldade
Fácil" \
"conversao-comprimento,facil"

criar_issue "Implementar: Centímetros para Metros" \
"## Descrição
Converter centímetros para metros.

## Arquivo
\`src/conversoes_comprimento/centimetros_metros.c\`

## Fórmula
\`m = cm / 100\`

## Exemplo de uso
\`\`\`
=== CENTÍMETROS PARA METROS ===

Digite o valor em centímetros: 180

180.00 cm = 1.80 m
\`\`\`

## Dificuldade
Fácil" \
"conversao-comprimento,facil"

criar_issue "Implementar: Quilômetros para Milhas" \
"## Descrição
Converter quilômetros para milhas.

## Arquivo
\`src/conversoes_comprimento/km_milhas.c\`

## Fórmula
\`milhas = km × 0.621371\`

## Exemplo de uso
\`\`\`
=== QUILÔMETROS PARA MILHAS ===

Digite o valor em quilômetros: 100

100.00 km = 62.14 milhas
\`\`\`

## Dificuldade
Fácil" \
"conversao-comprimento,facil"

criar_issue "Implementar: Milhas para Quilômetros" \
"## Descrição
Converter milhas para quilômetros.

## Arquivo
\`src/conversoes_comprimento/milhas_km.c\`

## Fórmula
\`km = milhas × 1.60934\`

## Exemplo de uso
\`\`\`
=== MILHAS PARA QUILÔMETROS ===

Digite o valor em milhas: 60

60.00 milhas = 96.56 km
\`\`\`

## Dificuldade
Fácil" \
"conversao-comprimento,facil"

criar_issue "Implementar: Metros para Pés" \
"## Descrição
Converter metros para pés.

## Arquivo
\`src/conversoes_comprimento/metros_pes.c\`

## Fórmula
\`pés = m × 3.28084\`

## Exemplo de uso
\`\`\`
=== METROS PARA PÉS ===

Digite o valor em metros: 1.80

1.80 m = 5.91 pés
\`\`\`

## Dificuldade
Fácil" \
"conversao-comprimento,facil"

criar_issue "Implementar: Pés para Metros" \
"## Descrição
Converter pés para metros.

## Arquivo
\`src/conversoes_comprimento/pes_metros.c\`

## Fórmula
\`m = pés × 0.3048\`

## Exemplo de uso
\`\`\`
=== PÉS PARA METROS ===

Digite o valor em pés: 6

6.00 pés = 1.83 m
\`\`\`

## Dificuldade
Fácil" \
"conversao-comprimento,facil"

# ============================================
# CONVERSÕES DE PESO
# ============================================

criar_issue "Implementar: Quilogramas para Libras" \
"## Descrição
Converter quilogramas para libras.

## Arquivo
\`src/conversoes_peso/kg_libras.c\`

## Fórmula
\`lb = kg × 2.20462\`

## Exemplo de uso
\`\`\`
=== QUILOGRAMAS PARA LIBRAS ===

Digite o peso em quilogramas: 70

70.00 kg = 154.32 lb
\`\`\`

## Dificuldade
Fácil" \
"conversao-peso,facil"

criar_issue "Implementar: Libras para Quilogramas" \
"## Descrição
Converter libras para quilogramas.

## Arquivo
\`src/conversoes_peso/libras_kg.c\`

## Fórmula
\`kg = lb × 0.453592\`

## Exemplo de uso
\`\`\`
=== LIBRAS PARA QUILOGRAMAS ===

Digite o peso em libras: 150

150.00 lb = 68.04 kg
\`\`\`

## Dificuldade
Fácil" \
"conversao-peso,facil"

criar_issue "Implementar: Gramas para Onças" \
"## Descrição
Converter gramas para onças.

## Arquivo
\`src/conversoes_peso/gramas_oncas.c\`

## Fórmula
\`oz = g × 0.035274\`

## Exemplo de uso
\`\`\`
=== GRAMAS PARA ONÇAS ===

Digite o peso em gramas: 500

500.00 g = 17.64 oz
\`\`\`

## Dificuldade
Fácil" \
"conversao-peso,facil"

criar_issue "Implementar: Onças para Gramas" \
"## Descrição
Converter onças para gramas.

## Arquivo
\`src/conversoes_peso/oncas_gramas.c\`

## Fórmula
\`g = oz × 28.3495\`

## Exemplo de uso
\`\`\`
=== ONÇAS PARA GRAMAS ===

Digite o peso em onças: 10

10.00 oz = 283.50 g
\`\`\`

## Dificuldade
Fácil" \
"conversao-peso,facil"

# ============================================
# CONVERSÕES DE ÁREA
# ============================================

criar_issue "Implementar: Metros² para Pés²" \
"## Descrição
Converter metros quadrados para pés quadrados.

## Arquivo
\`src/conversoes_area/m2_pes2.c\`

## Fórmula
\`pés² = m² × 10.7639\`

## Exemplo de uso
\`\`\`
=== METROS² PARA PÉS² ===

Digite a área em metros quadrados: 100

100.00 m² = 1076.39 pés²
\`\`\`

## Dificuldade
Fácil" \
"conversao-area,facil"

criar_issue "Implementar: Hectares para Acres" \
"## Descrição
Converter hectares para acres.

## Arquivo
\`src/conversoes_area/hectares_acres.c\`

## Fórmula
\`acres = hectares × 2.47105\`

## Exemplo de uso
\`\`\`
=== HECTARES PARA ACRES ===

Digite a área em hectares: 50

50.00 hectares = 123.55 acres
\`\`\`

## Dificuldade
Fácil" \
"conversao-area,facil"

criar_issue "Implementar: Quilômetros² para Milhas²" \
"## Descrição
Converter quilômetros quadrados para milhas quadradas.

## Arquivo
\`src/conversoes_area/km2_milhas2.c\`

## Fórmula
\`mi² = km² × 0.386102\`

## Exemplo de uso
\`\`\`
=== QUILÔMETROS² PARA MILHAS² ===

Digite a área em quilômetros quadrados: 100

100.00 km² = 38.61 mi²
\`\`\`

## Dificuldade
Fácil" \
"conversao-area,facil"

criar_issue "Implementar: Centímetros² para Polegadas²" \
"## Descrição
Converter centímetros quadrados para polegadas quadradas.

## Arquivo
\`src/conversoes_area/cm2_polegadas2.c\`

## Fórmula
\`in² = cm² × 0.155\`

## Exemplo de uso
\`\`\`
=== CENTÍMETROS² PARA POLEGADAS² ===

Digite a área em centímetros quadrados: 100

100.00 cm² = 15.50 in²
\`\`\`

## Dificuldade
Fácil" \
"conversao-area,facil"

# ============================================
# CONVERSÕES DE VOLUME
# ============================================

criar_issue "Implementar: Litros para Galões" \
"## Descrição
Converter litros para galões americanos.

## Arquivo
\`src/conversoes_volume/litros_galoes.c\`

## Fórmula
\`gal = L × 0.264172\`

## Exemplo de uso
\`\`\`
=== LITROS PARA GALÕES ===

Digite o volume em litros: 20

20.00 L = 5.28 galões
\`\`\`

## Dificuldade
Fácil" \
"conversao-volume,facil"

criar_issue "Implementar: Galões para Litros" \
"## Descrição
Converter galões americanos para litros.

## Arquivo
\`src/conversoes_volume/galoes_litros.c\`

## Fórmula
\`L = gal × 3.78541\`

## Exemplo de uso
\`\`\`
=== GALÕES PARA LITROS ===

Digite o volume em galões: 10

10.00 galões = 37.85 L
\`\`\`

## Dificuldade
Fácil" \
"conversao-volume,facil"

criar_issue "Implementar: Mililitros para Onças Fluidas" \
"## Descrição
Converter mililitros para onças fluidas.

## Arquivo
\`src/conversoes_volume/ml_oncas_fluidas.c\`

## Fórmula
\`fl oz = ml × 0.033814\`

## Exemplo de uso
\`\`\`
=== MILILITROS PARA ONÇAS FLUIDAS ===

Digite o volume em mililitros: 500

500.00 ml = 16.91 fl oz
\`\`\`

## Dificuldade
Fácil" \
"conversao-volume,facil"

criar_issue "Implementar: Metros Cúbicos para Litros" \
"## Descrição
Converter metros cúbicos para litros.

## Arquivo
\`src/conversoes_volume/m3_litros.c\`

## Fórmula
\`L = m³ × 1000\`

## Exemplo de uso
\`\`\`
=== METROS CÚBICOS PARA LITROS ===

Digite o volume em metros cúbicos: 2.5

2.50 m³ = 2500.00 L
\`\`\`

## Dificuldade
Fácil" \
"conversao-volume,facil"

# ============================================
# CONVERSÕES DE TEMPO
# ============================================

criar_issue "Implementar: Horas para Minutos" \
"## Descrição
Converter horas para minutos.

## Arquivo
\`src/conversoes_tempo/horas_minutos.c\`

## Fórmula
\`min = h × 60\`

## Exemplo de uso
\`\`\`
=== HORAS PARA MINUTOS ===

Digite o tempo em horas: 2.5

2.50 horas = 150.00 minutos
\`\`\`

## Dificuldade
Fácil" \
"conversao-tempo,facil"

criar_issue "Implementar: Minutos para Segundos" \
"## Descrição
Converter minutos para segundos.

## Arquivo
\`src/conversoes_tempo/minutos_segundos.c\`

## Fórmula
\`s = min × 60\`

## Exemplo de uso
\`\`\`
=== MINUTOS PARA SEGUNDOS ===

Digite o tempo em minutos: 5

5.00 minutos = 300.00 segundos
\`\`\`

## Dificuldade
Fácil" \
"conversao-tempo,facil"

criar_issue "Implementar: Dias para Horas" \
"## Descrição
Converter dias para horas.

## Arquivo
\`src/conversoes_tempo/dias_horas.c\`

## Fórmula
\`h = dias × 24\`

## Exemplo de uso
\`\`\`
=== DIAS PARA HORAS ===

Digite o tempo em dias: 7

7.00 dias = 168.00 horas
\`\`\`

## Dificuldade
Fácil" \
"conversao-tempo,facil"

criar_issue "Implementar: Semanas para Dias" \
"## Descrição
Converter semanas para dias.

## Arquivo
\`src/conversoes_tempo/semanas_dias.c\`

## Fórmula
\`dias = semanas × 7\`

## Exemplo de uso
\`\`\`
=== SEMANAS PARA DIAS ===

Digite o tempo em semanas: 4

4.00 semanas = 28.00 dias
\`\`\`

## Dificuldade
Fácil" \
"conversao-tempo,facil"

# ============================================
# CONVERSÕES DE DADOS
# ============================================

criar_issue "Implementar: Bytes para Kilobytes" \
"## Descrição
Converter bytes para kilobytes.

## Arquivo
\`src/conversoes_dados/bytes_kb.c\`

## Fórmula
\`KB = bytes / 1024\`

## Exemplo de uso
\`\`\`
=== BYTES PARA KILOBYTES ===

Digite o valor em bytes: 2048

2048.00 bytes = 2.00 KB
\`\`\`

## Dificuldade
Fácil" \
"conversao-dados,facil"

criar_issue "Implementar: Kilobytes para Megabytes" \
"## Descrição
Converter kilobytes para megabytes.

## Arquivo
\`src/conversoes_dados/kb_mb.c\`

## Fórmula
\`MB = KB / 1024\`

## Exemplo de uso
\`\`\`
=== KILOBYTES PARA MEGABYTES ===

Digite o valor em kilobytes: 5120

5120.00 KB = 5.00 MB
\`\`\`

## Dificuldade
Fácil" \
"conversao-dados,facil"

criar_issue "Implementar: Megabytes para Gigabytes" \
"## Descrição
Converter megabytes para gigabytes.

## Arquivo
\`src/conversoes_dados/mb_gb.c\`

## Fórmula
\`GB = MB / 1024\`

## Exemplo de uso
\`\`\`
=== MEGABYTES PARA GIGABYTES ===

Digite o valor em megabytes: 2048

2048.00 MB = 2.00 GB
\`\`\`

## Dificuldade
Fácil" \
"conversao-dados,facil"

criar_issue "Implementar: Gigabytes para Terabytes" \
"## Descrição
Converter gigabytes para terabytes.

## Arquivo
\`src/conversoes_dados/gb_tb.c\`

## Fórmula
\`TB = GB / 1024\`

## Exemplo de uso
\`\`\`
=== GIGABYTES PARA TERABYTES ===

Digite o valor em gigabytes: 1024

1024.00 GB = 1.00 TB
\`\`\`

## Dificuldade
Fácil" \
"conversao-dados,facil"

# ============================================
# GEOMETRIA
# ============================================

criar_issue "Implementar: Área do Círculo" \
"## Descrição
Calcular a área de um círculo dado o raio.

## Arquivo
\`src/geometria/area_circulo.c\`

## Fórmula
\`A = π × r²\`

Use \`M_PI\` de \`math.h\` para o valor de π.

## Exemplo de uso
\`\`\`
=== ÁREA DO CÍRCULO ===

Digite o raio: 5

Área do círculo = 78.54
\`\`\`

## Dificuldade
Fácil" \
"geometria,facil"

criar_issue "Implementar: Perímetro do Círculo" \
"## Descrição
Calcular o perímetro (circunferência) de um círculo dado o raio.

## Arquivo
\`src/geometria/perimetro_circulo.c\`

## Fórmula
\`P = 2 × π × r\`

## Exemplo de uso
\`\`\`
=== PERÍMETRO DO CÍRCULO ===

Digite o raio: 5

Perímetro do círculo = 31.42
\`\`\`

## Dificuldade
Fácil" \
"geometria,facil"

criar_issue "Implementar: Área do Retângulo" \
"## Descrição
Calcular a área de um retângulo.

## Arquivo
\`src/geometria/area_retangulo.c\`

## Fórmula
\`A = base × altura\`

## Exemplo de uso
\`\`\`
=== ÁREA DO RETÂNGULO ===

Digite a base: 10
Digite a altura: 5

Área do retângulo = 50.00
\`\`\`

## Dificuldade
Fácil" \
"geometria,facil"

criar_issue "Implementar: Perímetro do Retângulo" \
"## Descrição
Calcular o perímetro de um retângulo.

## Arquivo
\`src/geometria/perimetro_retangulo.c\`

## Fórmula
\`P = 2 × (base + altura)\`

## Exemplo de uso
\`\`\`
=== PERÍMETRO DO RETÂNGULO ===

Digite a base: 10
Digite a altura: 5

Perímetro do retângulo = 30.00
\`\`\`

## Dificuldade
Fácil" \
"geometria,facil"

criar_issue "Implementar: Área do Triângulo" \
"## Descrição
Calcular a área de um triângulo.

## Arquivo
\`src/geometria/area_triangulo.c\`

## Fórmula
\`A = (base × altura) / 2\`

## Exemplo de uso
\`\`\`
=== ÁREA DO TRIÂNGULO ===

Digite a base: 10
Digite a altura: 6

Área do triângulo = 30.00
\`\`\`

## Dificuldade
Fácil" \
"geometria,facil"

criar_issue "Implementar: Área do Trapézio" \
"## Descrição
Calcular a área de um trapézio.

## Arquivo
\`src/geometria/area_trapezio.c\`

## Fórmula
\`A = ((base maior + base menor) × altura) / 2\`

## Exemplo de uso
\`\`\`
=== ÁREA DO TRAPÉZIO ===

Digite a base maior: 10
Digite a base menor: 6
Digite a altura: 4

Área do trapézio = 32.00
\`\`\`

## Dificuldade
Fácil" \
"geometria,facil"

criar_issue "Implementar: Volume do Cubo" \
"## Descrição
Calcular o volume de um cubo.

## Arquivo
\`src/geometria/volume_cubo.c\`

## Fórmula
\`V = lado³\`

## Exemplo de uso
\`\`\`
=== VOLUME DO CUBO ===

Digite o lado: 3

Volume do cubo = 27.00
\`\`\`

## Dificuldade
Fácil" \
"geometria,facil"

criar_issue "Implementar: Volume da Esfera" \
"## Descrição
Calcular o volume de uma esfera.

## Arquivo
\`src/geometria/volume_esfera.c\`

## Fórmula
\`V = (4/3) × π × r³\`

## Exemplo de uso
\`\`\`
=== VOLUME DA ESFERA ===

Digite o raio: 3

Volume da esfera = 113.10
\`\`\`

## Dificuldade
Médio" \
"geometria,medio"

# ============================================
# CÁLCULOS FINANCEIROS
# ============================================

criar_issue "Implementar: Juros Simples" \
"## Descrição
Calcular juros simples.

## Arquivo
\`src/financeiro/juros_simples.c\`

## Fórmula
\`J = C × i × t\`
\`M = C + J\`

Onde:
- C = Capital inicial
- i = Taxa de juros (em decimal, ex: 5% = 0.05)
- t = Tempo (em meses ou anos)
- J = Juros
- M = Montante final

## Exemplo de uso
\`\`\`
=== JUROS SIMPLES ===

Digite o capital inicial: 1000
Digite a taxa de juros (% ao mês): 2
Digite o tempo (meses): 12

Juros: R$ 240.00
Montante final: R$ 1240.00
\`\`\`

## Dificuldade
Médio" \
"financeiro,medio"

criar_issue "Implementar: Juros Compostos" \
"## Descrição
Calcular juros compostos.

## Arquivo
\`src/financeiro/juros_compostos.c\`

## Fórmula
\`M = C × (1 + i)^t\`
\`J = M - C\`

## Exemplo de uso
\`\`\`
=== JUROS COMPOSTOS ===

Digite o capital inicial: 1000
Digite a taxa de juros (% ao mês): 2
Digite o tempo (meses): 12

Montante final: R$ 1268.24
Juros: R$ 268.24
\`\`\`

## Dificuldade
Médio" \
"financeiro,medio"

criar_issue "Implementar: Desconto Percentual" \
"## Descrição
Calcular o preço final após aplicar um desconto percentual.

## Arquivo
\`src/financeiro/desconto_percentual.c\`

## Fórmula
\`Preço Final = Preço Original × (1 - desconto/100)\`

## Exemplo de uso
\`\`\`
=== DESCONTO PERCENTUAL ===

Digite o preço original: 200
Digite o desconto (%): 15

Desconto: R$ 30.00
Preço final: R$ 170.00
\`\`\`

## Dificuldade
Fácil" \
"financeiro,facil"

criar_issue "Implementar: Aumento Percentual" \
"## Descrição
Calcular o preço final após aplicar um aumento percentual.

## Arquivo
\`src/financeiro/aumento_percentual.c\`

## Fórmula
\`Preço Final = Preço Original × (1 + aumento/100)\`

## Exemplo de uso
\`\`\`
=== AUMENTO PERCENTUAL ===

Digite o preço original: 100
Digite o aumento (%): 25

Aumento: R$ 25.00
Preço final: R$ 125.00
\`\`\`

## Dificuldade
Fácil" \
"financeiro,facil"

criar_issue "Implementar: Regra de Três Simples" \
"## Descrição
Calcular o valor desconhecido usando regra de três simples.

## Arquivo
\`src/financeiro/regra_de_tres.c\`

## Fórmula
Se A está para B, então C está para X.
\`X = (B × C) / A\`

## Exemplo de uso
\`\`\`
=== REGRA DE TRÊS SIMPLES ===

Se A está para B, então C está para X.

Digite o valor de A: 5
Digite o valor de B: 10
Digite o valor de C: 15

X = 30.00
\`\`\`

## Dificuldade
Médio" \
"financeiro,medio"

criar_issue "Implementar: Divisão de Conta" \
"## Descrição
Calcular a divisão de uma conta entre várias pessoas, com gorjeta opcional.

## Arquivo
\`src/financeiro/divisao_conta.c\`

## Exemplo de uso
\`\`\`
=== DIVISÃO DE CONTA ===

Digite o valor total da conta: 150
Digite o número de pessoas: 4
Digite a porcentagem de gorjeta (0 se não houver): 10

Valor da conta: R$ 150.00
Gorjeta (10%): R$ 15.00
Total com gorjeta: R$ 165.00
Valor por pessoa: R$ 41.25
\`\`\`

## Dificuldade
Fácil" \
"financeiro,facil"

# ============================================
# CÁLCULOS ÚTEIS
# ============================================

criar_issue "Implementar: IMC (Índice de Massa Corporal)" \
"## Descrição
Calcular o IMC e mostrar a classificação.

## Arquivo
\`src/calculos_uteis/imc.c\`

## Fórmula
\`IMC = peso / altura²\`

## Classificação
- Abaixo de 18.5: Abaixo do peso
- 18.5 a 24.9: Peso normal
- 25.0 a 29.9: Sobrepeso
- 30.0 a 34.9: Obesidade grau I
- 35.0 a 39.9: Obesidade grau II
- 40.0 ou mais: Obesidade grau III

## Exemplo de uso
\`\`\`
=== IMC (ÍNDICE DE MASSA CORPORAL) ===

Digite seu peso (kg): 70
Digite sua altura (m): 1.75

Seu IMC: 22.86
Classificação: Peso normal
\`\`\`

## Dificuldade
Médio" \
"calculos-uteis,medio"

criar_issue "Implementar: Média Aritmética" \
"## Descrição
Calcular a média aritmética de 3 números.

## Arquivo
\`src/calculos_uteis/media_aritmetica.c\`

## Fórmula
\`Média = (n1 + n2 + n3) / 3\`

## Exemplo de uso
\`\`\`
=== MÉDIA ARITMÉTICA ===

Digite o primeiro número: 7
Digite o segundo número: 8
Digite o terceiro número: 9

Média: 8.00
\`\`\`

## Dificuldade
Fácil" \
"calculos-uteis,facil"

criar_issue "Implementar: Média Ponderada" \
"## Descrição
Calcular a média ponderada de 3 valores com seus respectivos pesos.

## Arquivo
\`src/calculos_uteis/media_ponderada.c\`

## Fórmula
\`Média = (v1×p1 + v2×p2 + v3×p3) / (p1 + p2 + p3)\`

## Exemplo de uso
\`\`\`
=== MÉDIA PONDERADA ===

Digite o valor 1: 7
Digite o peso 1: 2
Digite o valor 2: 8
Digite o peso 2: 3
Digite o valor 3: 9
Digite o peso 3: 5

Média ponderada: 8.30
\`\`\`

## Dificuldade
Médio" \
"calculos-uteis,medio"

criar_issue "Implementar: Velocidade Média" \
"## Descrição
Calcular a velocidade média.

## Arquivo
\`src/calculos_uteis/velocidade_media.c\`

## Fórmula
\`V = distância / tempo\`

## Exemplo de uso
\`\`\`
=== VELOCIDADE MÉDIA ===

Digite a distância percorrida (km): 150
Digite o tempo gasto (horas): 2

Velocidade média: 75.00 km/h
\`\`\`

## Dificuldade
Fácil" \
"calculos-uteis,facil"

criar_issue "Implementar: Consumo de Combustível" \
"## Descrição
Calcular o consumo de combustível em km/L.

## Arquivo
\`src/calculos_uteis/consumo_combustivel.c\`

## Fórmula
\`Consumo = distância / litros\`

## Exemplo de uso
\`\`\`
=== CONSUMO DE COMBUSTÍVEL ===

Digite a distância percorrida (km): 500
Digite a quantidade de combustível (litros): 40

Consumo: 12.50 km/L
\`\`\`

## Dificuldade
Fácil" \
"calculos-uteis,facil"

criar_issue "Implementar: Idade em Dias" \
"## Descrição
Calcular a idade aproximada em dias.

## Arquivo
\`src/calculos_uteis/idade_em_dias.c\`

## Fórmula
\`dias = anos × 365\` (aproximado)

## Exemplo de uso
\`\`\`
=== IDADE EM DIAS ===

Digite sua idade em anos: 25

Sua idade aproximada: 9125 dias
\`\`\`

## Dificuldade
Médio" \
"calculos-uteis,medio"

criar_issue "Implementar: Fatorial" \
"## Descrição
Calcular o fatorial de um número.

## Arquivo
\`src/calculos_uteis/fatorial.c\`

## Fórmula
\`n! = n × (n-1) × (n-2) × ... × 2 × 1\`
\`0! = 1\`

## Requisitos
- Validar que n >= 0
- Usar um loop para calcular

## Exemplo de uso
\`\`\`
=== FATORIAL ===

Digite um número inteiro não-negativo: 5

5! = 120
\`\`\`

## Caso de erro
\`\`\`
Digite um número: -3

Erro: O fatorial não está definido para números negativos!
\`\`\`

## Dificuldade
Médio" \
"calculos-uteis,medio"

criar_issue "Implementar: Verificar Número Primo" \
"## Descrição
Verificar se um número é primo.

## Arquivo
\`src/calculos_uteis/numero_primo.c\`

## Definição
Um número primo é aquele que só é divisível por 1 e por ele mesmo.

## Requisitos
- Validar que n > 1
- Verificar divisibilidade até √n

## Exemplo de uso
\`\`\`
=== VERIFICAR NÚMERO PRIMO ===

Digite um número inteiro: 17

17 é um número primo!
\`\`\`

\`\`\`
Digite um número inteiro: 20

20 NÃO é um número primo.
20 é divisível por 2.
\`\`\`

## Dificuldade
Médio" \
"calculos-uteis,medio"

echo ""
echo "=========================================="
echo -e "${GREEN}  Processo concluído!${NC}"
echo "=========================================="
echo ""
echo "Total de issues criadas: 76"
echo ""
echo "Para ver as issues criadas, acesse:"
echo "  gh issue list"
echo ""
