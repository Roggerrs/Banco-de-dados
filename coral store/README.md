# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Coral Store**

Este README descreve de forma objetiva as **cardinalidades** e os **relacionamentos** entre **Customers**, **Addresses**, **Regions**, **Orders**, **Products** e a tabela associativa **orders_products**, conforme o diagrama apresentado.

---

## 🔹 1. Customer → Address (1:N)

Um Customer pode ter vários endereços cadastrados.

* Cada **Address** pertence a **um único Customer**.
* Um **Customer** pode possuir **muitos Addresses**.

**Resumo:**

```
CUSTOMER (1) --------< (N) ADDRESS
```

---

## 🔹 2. Region → Address (1:N)

Endereços estão associados a regiões.

* Cada **Address** pertence a **uma única Region**.
* Uma **Region** pode conter **vários Addresses**.

**Resumo:**

```
REGION (1) --------< (N) ADDRESS
```

---

## 🔹 3. Customer → Order (1:N)

Um Customer pode realizar muitos pedidos (Orders).

* Cada **Order** pertence a **um único Customer**.
* Um **Customer** pode criar **várias Orders**.

**Resumo:**

```
CUSTOMER (1) --------< (N) ORDER
```

---

## 🔹 4. Address → Order (1:N)

Uma Order é associada a um endereço de entrega.

* Cada **Order** utiliza **um único Address**.
* Um **Address** pode ser usado em **várias Orders**.

**Resumo:**

```
ADDRESS (1) --------< (N) ORDER
```

---

## 🔹 5. Order ↔ Product (N:N via tabela associativa)

Um pedido pode conter vários produtos e um produto pode estar em vários pedidos.

* A relação N:N é modelada pela tabela `orders_products`.
* Cada linha em `orders_products` liga **um Product** a **uma Order**.

**Resumo:**

```
ORDER (1) ----< (N) orders_products (N) >---- (1) PRODUCT
```

---

## ✔ Visão Geral do Modelo

Representação geral dos principais relacionamentos:

```
CUSTOMER (1)
      |
      | 1:N
      v
ADDRESS (N)
      |
      | 1:N
      v
ORDER (N)
      |
      | 1:N (via associativa)
      v
orders_products (N)
      ^
      |
PRODUCT (1)
```

```
REGION (1)
      |
      | 1:N
      v
ADDRESS (N)
```

