# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Gestão de Farmácia**

Este README descreve de forma objetiva as cardinalidades e os relacionamentos entre **Fabricante**, **Produto**, **Medicamento**, **Perfumaria**, **Venda**, **Receita Médica**, **Venda de Medicamento** e **Venda de Perfumaria**, conforme o diagrama apresentado.

---

## 🔹 1. Fabricante → Produto (1:N)

Um Fabricante produz diversos produtos.

* Cada **Produto** pertence a **um único Fabricante**.
* Um **Fabricante** pode fornecer **muitos Produtos**.

**Resumo:**

```
FABRICANTE (1) --------< (N) PRODUTO
```

---

## 🔹 2. Produto → Medicamento (1:1)

Quando um Produto é do tipo Medicamento, seus dados específicos ficam na tabela MEDICAMENTO.

* Cada **Medicamento** corresponde a **um único Produto**.
* Um **Produto** pode ter **um único Medicamento vinculado** (quando TIPO_PRODUTO = Medicamento).

**Resumo:**

```
PRODUTO (1) -------- (1) MEDICAMENTO
```

---

## 🔹 3. Produto → Perfumaria (1:1)

Quando o Produto é do tipo Perfumaria, seus detalhes ficam na tabela PERFUMARIA.

* Cada **Perfumaria** corresponde a **um único Produto**.
* Um **Produto** pode ter **uma única Perfumaria vinculada**.

**Resumo:**

```
PRODUTO (1) -------- (1) PERFUMARIA
```

---

## 🔹 4. Venda → Venda de Medicamento (1:N)

Uma venda pode envolver vários itens de medicamentos.

* Cada **Venda de Medicamento** está associada a **uma única Venda**.
* Uma **Venda** pode ter **vários registros de Venda de Medicamento**.

**Resumo:**

```
VENDA (1) --------< (N) VENDA_MEDICAMENTO
```

---

## 🔹 5. Venda → Venda de Perfumaria (1:N)

Uma venda também pode conter itens de perfumaria.

* Cada **Venda de Perfumaria** pertence a **uma única Venda**.
* Uma **Venda** pode ter **muitos itens de Perfumaria**.

**Resumo:**

```
VENDA (1) --------< (N) VENDA_PERFUMARIA
```

---

## 🔹 6. Receita Médica → Venda de Medicamento (1:N)

Uma receita pode autorizar a venda de múltiplos medicamentos.

* Cada **Venda de Medicamento** pertence a **uma única Receita Médica**.
* Uma **Receita Médica** pode estar associada a **vários medicamentos vendidos**.

**Resumo:**

```
RECEITA_MEDICA (1) --------< (N) VENDA_MEDICAMENTO
```

---

## 🔹 7. Medicamento → Venda de Medicamento (1:N)

Um Medicamento pode aparecer em diversas vendas.

* Cada **Venda de Medicamento** está ligada a **um único Medicamento**.
* Um **Medicamento** pode ter **várias vendas registradas**.

**Resumo:**

```
MEDICAMENTO (1) --------< (N) VENDA_MEDICAMENTO
```

---

## 🔹 8. Perfumaria → Venda de Perfumaria (1:N)

Um item de perfumaria pode ser vendido em várias ocasiões.

* Cada **Venda de Perfumaria** referencia **um único item de Perfumaria**.
* Um item de **Perfumaria** pode ser vendido **várias vezes**.

**Resumo:**

```
PERFUMARIA (1) --------< (N) VENDA_PERFUMARIA
```

---

## ✔ Visão Geral do Modelo

Representação geral dos relacionamentos principais:

```
FABRICANTE (1)
      |
      | 1:N
      v
PRODUTO (N)
     | \
     |  \ 
     |   \ 1:1
     |    --> MEDICAMENTO
     | 1:1
     -----> PERFUMARIA
```

```
RECEITA_MEDICA (1)
       |
       | 1:N
       v
VENDA_MEDICAMENTO (N)
       ^
       | N:1
MEDICAMENTO (1)
```

```
VENDA (1)
   | 1:N                   | 1:N
   v                       v
VENDA_MEDICAMENTO (N)   VENDA_PERFUMARIA (N)
```

```
PERFUMARIA (1)
      |
      | 1:N
      v
VENDA_PERFUMARIA (N)
```

---
