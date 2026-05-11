# 🧮 Calculadora Colaborativa

Bem-vindo ao projeto **Calculadora Colaborativa**! Este é um projeto educacional criado para ensinar estudantes de Engenharia de Software a utilizar **Git**, **GitHub** e a colaborar em projetos **open source**.

## 📖 Sobre o Projeto

Este projeto consiste em uma calculadora de linha de comando (CLI) escrita em C. A interface está completa, mas **nenhuma funcionalidade está implementada**! O objetivo é que cada estudante implemente uma funcionalidade diferente, aprendendo na prática como contribuir para projetos open source.

### 📋 Funcionalidades Disponíveis

| Categoria | Quantidade | Funcionalidades |
|-----------|------------|-----------------|
| ➕ Operações Básicas | 10 | Soma, Subtração, Multiplicação, Divisão, etc. |
| 📐 Trigonometria | 8 | Seno, Cosseno, Tangente, etc. |
| 📊 Logaritmos | 6 | Log Natural, Log Base 10, Exponencial, etc. |
| 🌡️ Conversões de Temperatura | 4 | Celsius↔Fahrenheit, Celsius↔Kelvin |
| 📏 Conversões de Comprimento | 6 | Metros↔Centímetros, Km↔Milhas, etc. |
| ⚖️ Conversões de Peso | 4 | Kg↔Libras, Gramas↔Onças |
| 📐 Conversões de Área | 4 | m²↔pés², Hectares↔Acres, etc. |
| 🫙 Conversões de Volume | 4 | Litros↔Galões, ml↔Onças fluidas, etc. |
| ⏰ Conversões de Tempo | 4 | Horas↔Minutos, Dias↔Horas, etc. |
| 💾 Conversões de Dados | 4 | Bytes↔KB, KB↔MB, MB↔GB, GB↔TB |
| 📐 Geometria | 8 | Área/Perímetro de círculo, retângulo, etc. |
| 💰 Cálculos Financeiros | 6 | Juros simples/compostos, descontos, etc. |
| 🔢 Cálculos Úteis | 8 | IMC, Média, Fatorial, Número Primo, etc. |

---

## ⚙️ Pré-requisitos

Antes de começar, você precisa ter instalado em sua máquina:

- **Git** - [Download Git](https://git-scm.com/downloads)
- **GCC (Compilador C)** - Normalmente já vem instalado no Linux/Mac. No Windows, use [MinGW](https://www.mingw-w64.org/) ou WSL
- **Make** - Ferramenta de build (já vem instalado no Linux/Mac)
- **Conta no GitHub** - [Criar conta](https://github.com/signup)

### ✅ Verificando a instalação

```bash
git --version
gcc --version
make --version
```

---

## 🚀 Guia Completo: Como Contribuir

### 📝 Passo 1: Configurar o Git (apenas na primeira vez)

Abra o terminal e configure seu nome e email:

```bash
git config --global user.name "Seu Nome Completo"
git config --global user.email "seu.email@exemplo.com"
```

### 🔑 Passo 2: Criar um Token de Acesso no GitHub

O GitHub não aceita mais senha para operações Git. Você precisa criar um **Personal Access Token**.

1. Acesse o GitHub e faça login
2. Clique na sua foto de perfil (canto superior direito)
3. Vá em **Settings** (Configurações)
4. No menu lateral esquerdo, role até o final e clique em **Developer settings**
5. Clique em **Personal access tokens** → **Tokens (classic)**
6. Clique em **Generate new token** → **Generate new token (classic)**
7. Dê um nome ao token (ex: "Calculadora Colaborativa")
8. Selecione a validade (ex: 90 dias)
9. Marque as permissões:
   - ✅ `repo` (acesso completo a repositórios)
10. Clique em **Generate token**
11. **IMPORTANTE**: Copie o token agora! Ele não será mostrado novamente.

> ⚠️ **Guarde o token em um lugar seguro!** Você vai usá-lo como senha quando o Git pedir.

### 🎯 Passo 3: Escolher uma Issue (Funcionalidade)

1. Acesse a página de **Issues** do repositório
2. Procure uma issue que ainda não tenha ninguém atribuído
3. Comente na issue: "Eu quero implementar esta funcionalidade!"
4. Aguarde o professor/mantenedor atribuir a issue a você

### 🍴 Passo 4: Fazer Fork do Repositório

O **Fork** cria uma cópia do repositório na sua conta do GitHub.

1. Acesse o repositório original no GitHub
2. Clique no botão **Fork** (canto superior direito)
3. Mantenha as configurações padrão e clique em **Create fork**

Agora você tem uma cópia do repositório em: `https://github.com/SEU_USUARIO/calculator-colab`

### 📥 Passo 5: Clonar o Repositório (Baixar para seu computador)

```bash
# Substitua SEU_USUARIO pelo seu nome de usuário do GitHub
git clone https://github.com/SEU_USUARIO/calculator-colab.git
```

Quando pedir senha (caso necessário), use o **token** que você criou no Passo 2.

Entre na pasta do projeto:

```bash
cd calculator-colab
```

### 🌿 Passo 6: Criar uma Branch

Nunca trabalhe diretamente na branch `main`! Crie uma branch específica para sua funcionalidade:

```bash
# Substitua "nome-da-funcionalidade" pelo nome da sua funcionalidade
# Exemplos: feature/soma, feature/imc, feature/celsius-fahrenheit
git checkout -b feature/nome-da-funcionalidade
```

### 🔨 Passo 7: Compilar e Testar o Projeto

Antes de fazer alterações, verifique se o projeto compila:

```bash
make
```

Execute a calculadora:

```bash
./calculadora
```

Navegue até a funcionalidade que você vai implementar e veja a mensagem "Essa funcionalidade ainda não está implementada :("

### 💻 Passo 8: Implementar a Funcionalidade

Localize o arquivo da sua funcionalidade. Por exemplo, se você vai implementar a **soma**:

```
src/operacoes_basicas/soma.c
```

Abra o arquivo e implemente a funcionalidade. Exemplo de implementação:

```c
#include <stdio.h>
#include "soma.h"

void soma() {
    double num1, num2, resultado;

    printf("\n=== SOMA ===\n\n");

    printf("Digite o primeiro número: ");
    scanf("%lf", &num1);

    printf("Digite o segundo número: ");
    scanf("%lf", &num2);

    resultado = num1 + num2;

    printf("\nResultado: %.2lf + %.2lf = %.2lf\n", num1, num2, resultado);
}
```

**Importante:**
- A função não recebe parâmetros e não retorna nada
- Leia os valores necessários dentro da função usando `scanf()`
- Imprima o resultado dentro da função usando `printf()`
- Trate possíveis erros (ex: divisão por zero)

### 🧪 Passo 9: Testar sua Implementação

Compile novamente e teste:

```bash
make
./calculadora
```

Verifique se sua funcionalidade está funcionando corretamente.

### ➕ Passo 10: Adicionar as Alterações ao Git

Veja quais arquivos foram modificados:

```bash
git status
```

Adicione o arquivo modificado:

```bash
# Substitua pelo caminho do seu arquivo
git add src/operacoes_basicas/soma.c
```

### 💾 Passo 11: Fazer o Commit

O commit salva suas alterações com uma mensagem descritiva:

```bash
git commit -m "Implementa funcionalidade de soma"
```

**Dicas para mensagens de commit:**
- Use verbos no imperativo: "Implementa", "Adiciona", "Corrige"
- Seja breve e descritivo
- Exemplos:
  - "Implementa cálculo de IMC"
  - "Adiciona conversão de Celsius para Fahrenheit"
  - "Implementa função de fatorial"

### 📤 Passo 12: Enviar para o GitHub (Push)

Envie suas alterações para o seu fork no GitHub:

```bash
git push origin feature/nome-da-funcionalidade
```

Se pedir usuário e senha:
- **Usuário**: seu nome de usuário do GitHub
- **Senha**: o **token** que você criou (NÃO é sua senha do GitHub!)

### 🔀 Passo 13: Criar o Pull Request (PR)

1. Acesse seu fork no GitHub: `https://github.com/SEU_USUARIO/calculator-colab`
2. Você verá um banner amarelo dizendo que você fez um push recente
3. Clique no botão **Compare & pull request**
4. Preencha o título e a descrição:
   - **Título**: "Implementa funcionalidade de soma"
   - **Descrição**: Explique o que você implementou e como testar
     - Proof of Work: Coloque uma seção com prints mostrando que o código implementado funciona
5. Clique em **Create pull request**

### ⏳ Passo 14: Aguardar Revisão

O professor/mantenedor irá revisar seu código. Ele pode:
- ✅ **Aprovar e fazer merge** - Parabéns! Sua contribuição foi aceita!
- 💬 **Solicitar alterações** - Faça as correções pedidas e adicione novos commits

Se precisar fazer correções:

```bash
# Faça as alterações necessárias no código
git add src/operacoes_basicas/soma.c
git commit -m "Corrige formatação do resultado"
git push origin feature/nome-da-funcionalidade
```

O PR será atualizado automaticamente com os novos commits.

---

## 📁 Estrutura do Projeto

```
calculator-colab/
├── README.md                 # Este arquivo
├── CONTRIBUTING.md           # Guia de contribuição
├── ISSUES.md                 # Lista de todas as funcionalidades
├── Makefile                  # Script de compilação
├── criar_issues.sh           # Script para criar issues no GitHub
└── src/
    ├── main.c                # Arquivo principal com menus
    ├── operacoes_basicas/    # Soma, subtração, etc.
    ├── trigonometria/        # Seno, cosseno, etc.
    ├── logaritmos/           # Logaritmos e exponenciais
    ├── conversoes_temperatura/
    ├── conversoes_comprimento/
    ├── conversoes_peso/
    ├── conversoes_area/
    ├── conversoes_volume/
    ├── conversoes_tempo/
    ├── conversoes_dados/
    ├── geometria/            # Áreas e volumes
    ├── financeiro/           # Juros, descontos
    └── calculos_uteis/       # IMC, média, fatorial
```

---

## 🛠️ Comandos Úteis

### 🔨 Compilação

```bash
make          # Compila o projeto
make run      # Compila e executa
make clean    # Remove arquivos compilados
make rebuild  # Limpa e recompila
make help     # Mostra ajuda
```

### 📚 Git

```bash
git status              # Ver arquivos modificados
git add arquivo.c       # Adicionar arquivo
git commit -m "msg"     # Salvar alterações
git push origin branch  # Enviar para o GitHub
git pull                # Baixar atualizações
git branch              # Ver branches
git checkout branch     # Mudar de branch
git log                 # Ver histórico de commits
```

---

## 💡 Dicas Importantes

1. 🌿 **Sempre crie uma branch** - Nunca trabalhe diretamente na `main`
2. 📦 **Faça commits pequenos** - Commits menores são mais fáceis de revisar
3. 🧪 **Teste antes de fazer push** - Certifique-se que o código compila e funciona
4. 📖 **Leia as mensagens de erro** - Elas geralmente indicam o problema
5. 🤝 **Peça ajuda** - Se tiver dúvidas, pergunte ao professor ou colegas

---

## ❌ Problemas Comuns

### 🔐 "Permission denied" ao fazer push
- Verifique se você está usando o token, não a senha
- Recrie o token se necessário

### 📂 "fatal: not a git repository"
- Você não está dentro da pasta do projeto
- Use `cd calculator-colab`

### ⚔️ Conflitos de merge
- Isso acontece quando alguém modificou o mesmo arquivo
- Peça ajuda ao professor para resolver

### 🔴 O código não compila
- Leia a mensagem de erro
- Verifique se não há erros de sintaxe
- Certifique-se de que incluiu os headers necessários

