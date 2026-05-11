# 📋 Lista de Funcionalidades (Issues)

Este documento contém todas as 70 funcionalidades disponíveis para implementação. Cada funcionalidade corresponde a uma issue no GitHub.

---

## ➕ Operações Básicas (10 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 1 | Soma | `src/operacoes_basicas/soma.c` | 🟢 Fácil | Soma dois números informados pelo usuário |
| 2 | Subtração | `src/operacoes_basicas/subtracao.c` | 🟢 Fácil | Subtrai o segundo número do primeiro |
| 3 | Multiplicação | `src/operacoes_basicas/multiplicacao.c` | 🟢 Fácil | Multiplica dois números |
| 4 | Divisão | `src/operacoes_basicas/divisao.c` | 🟢 Fácil | Divide o primeiro número pelo segundo (tratar divisão por zero) |
| 5 | Resto da Divisão | `src/operacoes_basicas/resto_divisao.c` | 🟢 Fácil | Calcula o resto da divisão entre dois números inteiros |
| 6 | Potência | `src/operacoes_basicas/potencia.c` | 🟢 Fácil | Calcula base elevada ao expoente (usar pow() de math.h) |
| 7 | Raiz Quadrada | `src/operacoes_basicas/raiz_quadrada.c` | 🟢 Fácil | Calcula a raiz quadrada (usar sqrt() de math.h, tratar números negativos) |
| 8 | Raiz Cúbica | `src/operacoes_basicas/raiz_cubica.c` | 🟢 Fácil | Calcula a raiz cúbica (usar cbrt() de math.h) |
| 9 | Valor Absoluto | `src/operacoes_basicas/valor_absoluto.c` | 🟢 Fácil | Retorna o valor absoluto de um número (usar fabs() de math.h) |
| 10 | Inverso | `src/operacoes_basicas/inverso.c` | 🟢 Fácil | Calcula 1/x (tratar x = 0) |

---

## 📐 Trigonometria (8 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 11 | Seno | `src/trigonometria/seno.c` | 🟡 Médio | Calcula o seno de um ângulo em graus (converter para radianos) |
| 12 | Cosseno | `src/trigonometria/cosseno.c` | 🟡 Médio | Calcula o cosseno de um ângulo em graus |
| 13 | Tangente | `src/trigonometria/tangente.c` | 🟡 Médio | Calcula a tangente de um ângulo em graus |
| 14 | Arco Seno | `src/trigonometria/arco_seno.c` | 🟡 Médio | Calcula o arco seno (resultado em graus, validar entrada -1 a 1) |
| 15 | Arco Cosseno | `src/trigonometria/arco_cosseno.c` | 🟡 Médio | Calcula o arco cosseno (resultado em graus, validar entrada -1 a 1) |
| 16 | Arco Tangente | `src/trigonometria/arco_tangente.c` | 🟡 Médio | Calcula o arco tangente (resultado em graus) |
| 17 | Seno Hiperbólico | `src/trigonometria/seno_hiperbolico.c` | 🟡 Médio | Calcula o seno hiperbólico (usar sinh() de math.h) |
| 18 | Cosseno Hiperbólico | `src/trigonometria/cosseno_hiperbolico.c` | 🟡 Médio | Calcula o cosseno hiperbólico (usar cosh() de math.h) |

💡 **Dica:** Para converter graus para radianos: `radianos = graus * M_PI / 180.0`

---

## 📊 Logaritmos e Exponenciais (6 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 19 | Logaritmo Natural | `src/logaritmos/logaritmo_natural.c` | 🟡 Médio | Calcula ln(x) - validar x > 0 |
| 20 | Logaritmo Base 10 | `src/logaritmos/logaritmo_base10.c` | 🟡 Médio | Calcula log₁₀(x) - validar x > 0 |
| 21 | Logaritmo Base 2 | `src/logaritmos/logaritmo_base2.c` | 🟡 Médio | Calcula log₂(x) - validar x > 0 |
| 22 | Logaritmo Base N | `src/logaritmos/logaritmo_base_n.c` | 🟡 Médio | Calcula logₙ(x) usando mudança de base: logₙ(x) = ln(x)/ln(n) |
| 23 | Exponencial | `src/logaritmos/exponencial.c` | 🟢 Fácil | Calcula e^x (usar exp() de math.h) |
| 24 | Exponencial Base 10 | `src/logaritmos/exponencial_base10.c` | 🟢 Fácil | Calcula 10^x (usar pow(10, x)) |

---

## 🌡️ Conversões de Temperatura (4 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 25 | Celsius → Fahrenheit | `src/conversoes_temperatura/celsius_fahrenheit.c` | 🟢 Fácil | F = C × 9/5 + 32 |
| 26 | Fahrenheit → Celsius | `src/conversoes_temperatura/fahrenheit_celsius.c` | 🟢 Fácil | C = (F - 32) × 5/9 |
| 27 | Celsius → Kelvin | `src/conversoes_temperatura/celsius_kelvin.c` | 🟢 Fácil | K = C + 273.15 |
| 28 | Kelvin → Celsius | `src/conversoes_temperatura/kelvin_celsius.c` | 🟢 Fácil | C = K - 273.15 |

---

## 📏 Conversões de Comprimento (6 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 29 | Metros → Centímetros | `src/conversoes_comprimento/metros_centimetros.c` | 🟢 Fácil | cm = m × 100 |
| 30 | Centímetros → Metros | `src/conversoes_comprimento/centimetros_metros.c` | 🟢 Fácil | m = cm / 100 |
| 31 | Quilômetros → Milhas | `src/conversoes_comprimento/km_milhas.c` | 🟢 Fácil | milhas = km × 0.621371 |
| 32 | Milhas → Quilômetros | `src/conversoes_comprimento/milhas_km.c` | 🟢 Fácil | km = milhas × 1.60934 |
| 33 | Metros → Pés | `src/conversoes_comprimento/metros_pes.c` | 🟢 Fácil | pés = m × 3.28084 |
| 34 | Pés → Metros | `src/conversoes_comprimento/pes_metros.c` | 🟢 Fácil | m = pés × 0.3048 |

---

## ⚖️ Conversões de Peso (4 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 35 | Quilogramas → Libras | `src/conversoes_peso/kg_libras.c` | 🟢 Fácil | lb = kg × 2.20462 |
| 36 | Libras → Quilogramas | `src/conversoes_peso/libras_kg.c` | 🟢 Fácil | kg = lb × 0.453592 |
| 37 | Gramas → Onças | `src/conversoes_peso/gramas_oncas.c` | 🟢 Fácil | oz = g × 0.035274 |
| 38 | Onças → Gramas | `src/conversoes_peso/oncas_gramas.c` | 🟢 Fácil | g = oz × 28.3495 |

---

## 🏠 Conversões de Área (4 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 39 | Metros² → Pés² | `src/conversoes_area/m2_pes2.c` | 🟢 Fácil | pés² = m² × 10.7639 |
| 40 | Hectares → Acres | `src/conversoes_area/hectares_acres.c` | 🟢 Fácil | acres = hectares × 2.47105 |
| 41 | Quilômetros² → Milhas² | `src/conversoes_area/km2_milhas2.c` | 🟢 Fácil | mi² = km² × 0.386102 |
| 42 | Centímetros² → Polegadas² | `src/conversoes_area/cm2_polegadas2.c` | 🟢 Fácil | in² = cm² × 0.155 |

---

## 🫙 Conversões de Volume (4 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 43 | Litros → Galões | `src/conversoes_volume/litros_galoes.c` | 🟢 Fácil | gal = L × 0.264172 (galões americanos) |
| 44 | Galões → Litros | `src/conversoes_volume/galoes_litros.c` | 🟢 Fácil | L = gal × 3.78541 |
| 45 | Mililitros → Onças Fluidas | `src/conversoes_volume/ml_oncas_fluidas.c` | 🟢 Fácil | fl oz = ml × 0.033814 |
| 46 | Metros Cúbicos → Litros | `src/conversoes_volume/m3_litros.c` | 🟢 Fácil | L = m³ × 1000 |

---

## ⏰ Conversões de Tempo (4 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 47 | Horas → Minutos | `src/conversoes_tempo/horas_minutos.c` | 🟢 Fácil | min = h × 60 |
| 48 | Minutos → Segundos | `src/conversoes_tempo/minutos_segundos.c` | 🟢 Fácil | s = min × 60 |
| 49 | Dias → Horas | `src/conversoes_tempo/dias_horas.c` | 🟢 Fácil | h = dias × 24 |
| 50 | Semanas → Dias | `src/conversoes_tempo/semanas_dias.c` | 🟢 Fácil | dias = semanas × 7 |

---

## 💾 Conversões de Dados (4 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 51 | Bytes → Kilobytes | `src/conversoes_dados/bytes_kb.c` | 🟢 Fácil | KB = bytes / 1024 |
| 52 | Kilobytes → Megabytes | `src/conversoes_dados/kb_mb.c` | 🟢 Fácil | MB = KB / 1024 |
| 53 | Megabytes → Gigabytes | `src/conversoes_dados/mb_gb.c` | 🟢 Fácil | GB = MB / 1024 |
| 54 | Gigabytes → Terabytes | `src/conversoes_dados/gb_tb.c` | 🟢 Fácil | TB = GB / 1024 |

---

## 📐 Geometria (8 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 55 | Área do Círculo | `src/geometria/area_circulo.c` | 🟢 Fácil | A = π × r² (usar M_PI de math.h) |
| 56 | Perímetro do Círculo | `src/geometria/perimetro_circulo.c` | 🟢 Fácil | P = 2 × π × r |
| 57 | Área do Retângulo | `src/geometria/area_retangulo.c` | 🟢 Fácil | A = base × altura |
| 58 | Perímetro do Retângulo | `src/geometria/perimetro_retangulo.c` | 🟢 Fácil | P = 2 × (base + altura) |
| 59 | Área do Triângulo | `src/geometria/area_triangulo.c` | 🟢 Fácil | A = (base × altura) / 2 |
| 60 | Área do Trapézio | `src/geometria/area_trapezio.c` | 🟢 Fácil | A = ((base maior + base menor) × altura) / 2 |
| 61 | Volume do Cubo | `src/geometria/volume_cubo.c` | 🟢 Fácil | V = lado³ |
| 62 | Volume da Esfera | `src/geometria/volume_esfera.c` | 🟡 Médio | V = (4/3) × π × r³ |

---

## 💰 Cálculos Financeiros (6 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 63 | Juros Simples | `src/financeiro/juros_simples.c` | 🟡 Médio | J = C × i × t (Capital, taxa, tempo) |
| 64 | Juros Compostos | `src/financeiro/juros_compostos.c` | 🟡 Médio | M = C × (1 + i)^t (Montante final) |
| 65 | Desconto Percentual | `src/financeiro/desconto_percentual.c` | 🟢 Fácil | Calcula preço final após desconto |
| 66 | Aumento Percentual | `src/financeiro/aumento_percentual.c` | 🟢 Fácil | Calcula preço final após aumento |
| 67 | Regra de Três Simples | `src/financeiro/regra_de_tres.c` | 🟡 Médio | Se A está para B, então C está para X |
| 68 | Divisão de Conta | `src/financeiro/divisao_conta.c` | 🟢 Fácil | Divide valor total entre N pessoas (com gorjeta opcional) |

---

## 🔢 Cálculos Úteis (8 funcionalidades)

| # | Funcionalidade | Arquivo | Dificuldade | Descrição |
|---|---------------|---------|-------------|-----------|
| 69 | IMC | `src/calculos_uteis/imc.c` | 🟡 Médio | IMC = peso / altura² (mostrar classificação) |
| 70 | Média Aritmética | `src/calculos_uteis/media_aritmetica.c` | 🟢 Fácil | Média de 3 números |
| 71 | Média Ponderada | `src/calculos_uteis/media_ponderada.c` | 🟡 Médio | Média ponderada de 3 valores com seus pesos |
| 72 | Velocidade Média | `src/calculos_uteis/velocidade_media.c` | 🟢 Fácil | V = distância / tempo |
| 73 | Consumo de Combustível | `src/calculos_uteis/consumo_combustivel.c` | 🟢 Fácil | Calcula km/L dado distância e litros |
| 74 | Idade em Dias | `src/calculos_uteis/idade_em_dias.c` | 🟡 Médio | Calcula idade aproximada em dias (anos × 365) |
| 75 | Fatorial | `src/calculos_uteis/fatorial.c` | 🟡 Médio | Calcula n! (usar loop, validar n >= 0) |
| 76 | Verificar Número Primo | `src/calculos_uteis/numero_primo.c` | 🟡 Médio | Verifica se um número é primo |

