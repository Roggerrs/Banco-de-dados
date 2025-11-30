# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Produto**

Este README descreve de forma objetiva as cardinalidades e os relacionamentos do modelo envolvendo **Tipo de Produto**, **Produto**, **Similaridade entre Produtos**, **Item de Venda**, **Venda**, **Empregado** e **Registradora**, conforme o diagrama apresentado.

---

## 🔹 1. Tipo de Produto → Produto (1:N)

Um Tipo de Produto agrupa vários produtos.

* Cada **Produto** pertence a **um único Tipo de Produto**.
* Um **Tipo de Produto** pode conter **diversos Produtos**.

**Resumo:**

```
TIPO_PRODUTO (1) --------< (N) PRODUTO
```

---

## 🔹 2. Produto → Item de Venda (1:N)

Um Produto pode aparecer em vários itens de venda.

* Cada **Item de Venda** refere-se a **um único Produto**.
* Um **Produto** pode ser vendido em **várias vendas** (itens).

**Resumo:**

```
PRODUTO (1) --------< (N) ITEM_VENDA
```

---

## 🔹 3. Venda → Item de Venda (1:N)

Uma Venda contém vários itens (cada item é um produto/quantidade).

* Cada **Item de Venda** pertence a **uma única Venda**.
* Uma **Venda** pode ter **vários Itens**.

**Resumo:**

```
VENDA (1) --------< (N) ITEM_VENDA
```

---

## 🔹 4. Venda → Empregado (N:1)

Um Empregado pode registrar várias vendas.

* Cada **Venda** é registrada por **um único Empregado**.
* Um **Empregado** pode registrar **diversas Vendas**.

**Resumo:**

```
EMPREGADO (1) --------< (N) VENDA
```

---

## 🔹 5. Venda → Registradora (N:1)

Uma Venda é associada a uma Registradora (caixa).

* Cada **Venda** é vinculada a **uma Registradora**.
* Uma **Registradora** pode registrar **muitas Vendas**.

**Resumo:**

```
REGISTRADORA (1) --------< (N) VENDA
```

---

## 🔹 6. Produto ↔ Produto (N:N) — Similaridade

Produtos semelhantes são representados por uma relação N:N via `PRODUTO_has_SIMILAR` (ou tabela `SIMILAR` conforme modelagem).

* Um **Produto** pode ser similar a **vários outros Produtos**.
* A relação de similaridade é implementada por uma tabela associativa.

**Resumo:**

```
PRODUTO (1) >--------< (N) PRODUTO_has_SIMILAR (N) >--------< (1) PRODUTO
```

(ou, dependendo do modelo: `PRODUTO ↔ SIMILAR ↔ PRODUTO`)

---

## 🔹 7. Atributos importantes da relação Item de Venda

A tabela **ITEM_VENDA** armazena atributos do item dentro da venda:

* **QUANTIDADE_ITEM** — quantos do produto foram vendidos naquele item.
* **PRECO_ITEM** — preço unitário efetivo do item (pode diferir do preço tabelado do produto).

**Resumo:**

```
ITEM_VENDA
  | QUANTIDADE_ITEM
  | PRECO_ITEM
```

---

## ✔ Visão Geral do Modelo

Representação geral dos principais relacionamentos:

```
TIPO_PRODUTO (1)
     | 1:N
     v
  PRODUTO (N)
     | 1:N
     v
  ITEM_VENDA (N) >--------< (1) VENDA
                    ^
                    |
               EMPREGADO (1)
                    |
                    |
             REGISTRADORA (1)
```

```
PRODUTO (1)
   | N:N (via associativa)
   v
PRODUTO_has_SIMILAR (N)
   ^
   |
PRODUTO (1)
```

