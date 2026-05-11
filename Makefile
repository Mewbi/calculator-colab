# Makefile para Calculadora Colaborativa
# Projeto educacional para ensino de Git e GitHub

CC = gcc
CFLAGS = -Wall -Wextra -g -Isrc
LDFLAGS = -lm

# Diretórios
SRC_DIR = src
BUILD_DIR = build

# Encontrar todos os arquivos .c recursivamente
SOURCES = $(shell find $(SRC_DIR) -name '*.c')

# Gerar nomes dos objetos mantendo estrutura de diretórios
OBJECTS = $(patsubst $(SRC_DIR)/%.c,$(BUILD_DIR)/%.o,$(SOURCES))

# Nome do executável
TARGET = calculadora

# Regra padrão
all: $(TARGET)

# Criar o executável
$(TARGET): $(OBJECTS)
	@echo "Linkando $(TARGET)..."
	$(CC) $(OBJECTS) -o $(TARGET) $(LDFLAGS)
	@echo ""
	@echo "=========================================="
	@echo "  Compilação concluída com sucesso!"
	@echo "  Execute com: ./calculadora"
	@echo "=========================================="

# Compilar cada arquivo .c em .o
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	@echo "Compilando $<..."
	$(CC) $(CFLAGS) -c $< -o $@

# Limpar arquivos gerados
clean:
	@echo "Limpando arquivos compilados..."
	rm -rf $(BUILD_DIR) $(TARGET)
	@echo "Limpeza concluída!"

# Recompilar tudo
rebuild: clean all

# Executar o programa
run: $(TARGET)
	./$(TARGET)

# Mostrar ajuda
help:
	@echo ""
	@echo "=== Calculadora Colaborativa - Comandos Make ==="
	@echo ""
	@echo "  make          - Compila o projeto"
	@echo "  make run      - Compila e executa o projeto"
	@echo "  make clean    - Remove arquivos compilados"
	@echo "  make rebuild  - Limpa e recompila tudo"
	@echo "  make help     - Mostra esta mensagem de ajuda"
	@echo ""

.PHONY: all clean rebuild run help
