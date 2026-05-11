# 🤝 Guia de Contribuição

Obrigado por querer contribuir com a **Calculadora Colaborativa**! Este documento contém todas as informações necessárias para você fazer sua primeira contribuição.

## 📜 Código de Conduta

- 🤗 Seja respeitoso com os outros contribuidores
- 👍 Aceite críticas construtivas de forma positiva
- 🎯 Foque em ajudar e aprender junto com os colegas

## 📝 Padrão de Código

### 🏗️ Estrutura das Funções

Todas as funções devem seguir este padrão:

```c
#include <stdio.h>
#include "nome_da_funcao.h"

void nome_da_funcao() {
    // 1. Declarar variáveis
    double valor1, valor2, resultado;

    // 2. Exibir título da funcionalidade
    printf("\n=== TÍTULO DA FUNCIONALIDADE ===\n\n");

    // 3. Ler valores do usuário
    printf("Digite o valor: ");
    scanf("%lf", &valor1);

    // 4. Realizar o cálculo
    resultado = /* cálculo */;

    // 5. Exibir o resultado
    printf("\nResultado: %.2lf\n", resultado);
}
```

### ⚠️ Regras Importantes

1. 🚫 **Não modifique outros arquivos** - Apenas o arquivo `.c` da sua funcionalidade
2. 🚫 **Não altere o arquivo `.h`** - Ele já está configurado corretamente
3. 🚫 **Não modifique o `main.c`** - A interface já está pronta
4. ✅ **Trate erros** - Por exemplo, verifique divisão por zero

### 🛡️ Exemplo: Tratamento de Erro

```c
void divisao() {
    double num1, num2, resultado;

    printf("\n=== DIVISÃO ===\n\n");

    printf("Digite o dividendo: ");
    scanf("%lf", &num1);

    printf("Digite o divisor: ");
    scanf("%lf", &num2);

    // Tratamento de erro: divisão por zero
    if (num2 == 0) {
        printf("\nErro: Não é possível dividir por zero!\n");
        return;
    }

    resultado = num1 / num2;
    printf("\nResultado: %.2lf / %.2lf = %.2lf\n", num1, num2, resultado);
}
```

## 💾 Padrão de Commits

Use mensagens de commit claras e descritivas:

```
Implementa [nome da funcionalidade]
```

Exemplos:
- `Implementa funcionalidade de soma`
- `Implementa conversão de Celsius para Fahrenheit`
- `Implementa cálculo de IMC`
- `Implementa verificação de número primo`

## 🌿 Padrão de Branches

Crie branches com o prefixo `feature/` seguido do nome da funcionalidade:

```
feature/soma
feature/imc
feature/celsius-fahrenheit
feature/area-circulo
```

## 🔀 Padrão de Pull Request

### 📌 Título
```
Implementa [nome da funcionalidade]
```

### 📝 Descrição
```markdown
## Descrição
Implementação da funcionalidade de [nome].

## Funcionalidade
- [Descreva o que a funcionalidade faz]

## Como testar
1. Compile com `make`
2. Execute `./calculadora`
3. Navegue até [caminho no menu]
4. Teste com os valores X e Y

## Issue relacionada
Closes #[número da issue]
```

## ✅ Checklist antes do Pull Request

- [ ] O código compila sem erros (`make`)
- [ ] A funcionalidade foi testada e funciona corretamente
- [ ] Apenas o arquivo `.c` da funcionalidade foi modificado
- [ ] A mensagem de commit segue o padrão
- [ ] O nome da branch segue o padrão

## 📚 Bibliotecas Permitidas

Você pode usar as seguintes bibliotecas padrão do C:

- `<stdio.h>` - Entrada e saída (printf, scanf)
- `<stdlib.h>` - Funções utilitárias (abs, etc.)
- `<math.h>` - Funções matemáticas (sin, cos, sqrt, pow, log, etc.)
- `<string.h>` - Manipulação de strings (se necessário)

Exemplo de uso de math.h:

```c
#include <stdio.h>
#include <math.h>
#include "raiz_quadrada.h"

void raiz_quadrada() {
    double num, resultado;

    printf("\n=== RAIZ QUADRADA ===\n\n");

    printf("Digite um número: ");
    scanf("%lf", &num);

    if (num < 0) {
        printf("\nErro: Não existe raiz quadrada de número negativo!\n");
        return;
    }

    resultado = sqrt(num);
    printf("\nRaiz quadrada de %.2lf = %.4lf\n", num, resultado);
}
```

## ❓ Dúvidas Frequentes

### 📄 Posso modificar o arquivo .h?
Não. O arquivo header já está configurado corretamente.

### ➕ Posso adicionar novas funcionalidades?
Não neste projeto. O objetivo é implementar as funcionalidades já existentes.

### 📋 Posso modificar o menu (main.c)?
Não. O menu já está pronto e funcional.

### 🔴 Meu código não compila, o que fazer?
1. Leia a mensagem de erro com atenção
2. Verifique se há erros de sintaxe (falta de `;`, `}`, etc.)
3. Verifique se incluiu os headers necessários
4. Peça ajuda ao professor ou colegas

### 🔄 Como sincronizar meu fork com o repositório original?

```bash
# Adicione o repositório original como "upstream" (apenas uma vez)
git remote add upstream https://github.com/Mewbi/calculator-colab.git

# Baixe as atualizações do repositório original
git fetch upstream

# Mude para a branch main
git checkout main

# Atualize sua main com as mudanças do original
git merge upstream/main

# Envie as atualizações para seu fork
git push origin main
```
