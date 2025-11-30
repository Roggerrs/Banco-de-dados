# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Desconto de Catálogo**

Este README descreve de forma clara e objetiva as cardinalidades e os relacionamentos do modelo envolvendo **Categorias**, **Produtos**, **Descontos de Catálogo**, **Clientes**, **Pedidos** e outras entidades relacionadas.

---

## 🔹 1. Categoria → Clientes (1:N)

Uma Categoria pode agrupar vários Clientes.

* Cada **Cliente** pertence a **uma única Categoria**.
* Uma **Categoria** pode ter **diversos Clientes** associados.

**Resumo:**

```
CATEGORIES (1) --------< (N) CUSTOMERS
```

---

## 🔹 2. Categoria → Descontos de Catálogo (1:N)

Uma Categoria pode ter vários descontos ativos.

* Cada **Desconto de Catálogo** pertence a **uma Categoria**.
* Uma **Categoria** pode ter **diversos Descontos**.

**Resumo:**

```
CATEGORIES (1) --------< (N) CATALOG_DISCOUNT
```

---

## 🔹 3. Produto → Categoria (N:1)

Um Produto está vinculado diretamente a uma Categoria.

* Cada **Produto** pertence a **uma única Categoria**.
* Uma **Categoria** pode conter **diversos Produtos**.

**Resumo:**

```
CATEGORIES (1) --------< (N) PRODUCTS
```

---

## 🔹 4. Produto → Avaliações (1:N)

Um Produto pode receber diversas avaliações dos clientes.

* Cada **Avaliação** pertence a **um único Produto**.
* Um **Produto** pode ter **várias Avaliações**.

**Resumo:**

```
PRODUCTS (1) --------< (N) REVIEWS
```

---

## 🔹 5. Cliente → Avaliações (1:N)

Um Cliente pode avaliar diversos produtos.

* Cada **Avaliação** pertence a **um único Cliente**.
* Um **Cliente** pode fazer **várias Avaliações**.

**Resumo:**

```
CUSTOMERS (1) --------< (N) REVIEWS
```

---

## 🔹 6. Pedido → Cliente (N:1)

Um Cliente pode fazer vários pedidos.

* Cada **Pedido** é feito por **um único Cliente**.
* Um **Cliente** pode ter **diversos Pedidos** registrados.

**Resumo:**

```
CUSTOMERS (1) --------< (N) ORDERS
```

---

## 🔹 7. Pedido → Endereço (N:1)

Um Pedido está vinculado a um endereço específico.

* Cada **Pedido** possui **um único Endereço**.
* Um **Endereço** pode estar vinculado a **vários Pedidos**.

**Resumo:**

```
ADDRESSES (1) --------< (N) ORDERS
```

---

## 🔹 8. Cliente → Endereços (1:N)

Um Cliente pode ter vários Endereços cadastrados.

* Cada **Endereço** pertence a **um único Cliente**.
* Um **Cliente** pode registrar **diversos Endereços**.

**Resumo:**

```
CUSTOMERS (1) --------< (N) ADDRESSES
```

---

## 🔹 9. Endereço → Detalhes do Endereço (1:1)

Cada Endereço possui um conjunto de detalhes específicos.

* Um **Endereço** possui **um único registro** em **addresses_details**.
* Um **addresses_details** pertence a **um único Endereço**.

**Resumo:**

```
ADDRESSES (1) -------- (1) ADDRESSES_DETAILS
```

---

## 🔹 10. Região → Endereço Detalhado (1:N)

Cada região contém vários endereços detalhados.

* Cada **Endereço Detalhado** pertence a **uma Região**.
* Uma **Região** pode ter **vários Endereços** cadastrados.

**Resumo:**

```
REGION (1) --------< (N) ADDRESSES_DETAILS
```

---

## 🔹 11. País → Endereço Detalhado (1:N)

Cada país agrupa vários endereços.

**Resumo:**

```
COUNTRIES (1) --------< (N) ADDRESSES_DETAILS
```

---

## 🔹 12. Pedido → Cupom (N:1)

Um Pedido pode utilizar um Cupom.

* Cada **Pedido** pode ter **um Cupom**.
* Um **Cupom** pode ser usado em **vários Pedidos**.

**Resumo:**

```
COUPONS (1) --------< (N) ORDERS
```

---

## 🔹 13. Pedido → Produtos (N:N)

O relacionamento Pedido ↔ Produto é **muitos-para-muitos** por meio da tabela **orders_products**.

* Um **Pedido** pode ter vários **Produtos**.
* Um **Produto** pode aparecer **em vários Pedidos**.

**Resumo:**

```
ORDERS (1) >--------< (N) ORDERS_PRODUCTS (N) >--------< (1) PRODUCTS
```

---

## 🔹 14. Produto → Atributos (N:N)

Um Produto pode ter vários atributos técnicos.

* Um **Atributo** pode ser compartilhado por **vários Produtos**.
* A relação é via **product_attributes**.

**Resumo:**

```
PRODUCTS (1) >--------< (N) PRODUCT_ATTRIBUTES (N) >--------< (1) ATTRIBUTES
```

---

## ✔ Visão Geral do Modelo

Representação geral dos principais relacionamentos:

```
CATEGORIES (1)
   | 1:N
   v
CUSTOMERS (N) -----< ORDERS (N) >-----< PRODUCTS (N)
                         |                 |
                         |                 v
                       COUPONS            REVIEWS
```

```
PRODUCTS (1)
   | 1:N
   v
REVIEWS (N)
```

```
CATALOG_DISCOUNT (N)
      ^
      | 1:N
CATEGORIES (1)
```

```
ADDRESSES (N) ---- (1) ADDRESSES_DETAILS (1)
     ^
     |
CUSTOMERS (1)
```

---
