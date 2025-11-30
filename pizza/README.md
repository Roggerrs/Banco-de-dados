
# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Sistema de Pizza**

Este README descreve de forma objetiva as **cardinalidades** e os **relacionamentos** entre **Pizzas**, **Bordas**, **Massas**, **Sabores**, **Pizza_Sabor**, **Pedidos** e **Status**, conforme o diagrama apresentado.

---

## 🔹 1. Borda → Pizza (1:N)

Uma borda pode ser usada em várias pizzas.

* Cada **Pizza** utiliza **uma única Borda**.
* Uma **Borda** pode estar associada a **muitas Pizzas**.

**Resumo:**

```
BORDA (1) --------< (N) PIZZA
```

---

## 🔹 2. Massa → Pizza (1:N)

Uma massa pode ser utilizada em diversas pizzas.

* Cada **Pizza** usa **uma única Massa**.
* Uma **Massa** pode aparecer em **várias Pizzas**.

**Resumo:**

```
MASSA (1) --------< (N) PIZZA
```

---

## 🔹 3. Pizza ↔ Sabor (N:N via tabela associativa)

Uma Pizza pode conter vários Sabores.
Um Sabor pode ser utilizado em várias Pizzas.

* A relação N:N é representada pela tabela `pizza_sabor`.
* Cada entrada em `pizza_sabor` liga **um Sabor** a **uma Pizza**.

**Resumo:**

```
PIZZA (1) ----< (N) PIZZA_SABOR (N) >---- (1) SABOR
```

---

## 🔹 4. Pizza → Pedido (1:N)

Cada pedido está associado a uma única pizza.

* Cada **Pedido** referencia **uma única Pizza**.
* Uma **Pizza** pode aparecer em **vários Pedidos**.

**Resumo:**

```
PIZZA (1) --------< (N) PEDIDO
```

---

## 🔹 5. Status → Pedido (1:N)

Um Status representa o estado de vários pedidos.

* Cada **Pedido** possui **um único Status**.
* Um **Status** pode ser atribuído a **vários Pedidos**.

**Resumo:**

```
STATUS (1) --------< (N) PEDIDO
```

---

## ✔ Visão Geral do Modelo

Representação geral dos relacionamentos principais:

```
BORDA (1)
      |
      | 1:N
      v
PIZZA (N)
      ^
      | 1:N
      |
MASSA (1)
```

```
PIZZA (1)
      |
      | 1:N (via associativa)
      v
PIZZA_SABOR (N)
      ^
      |
SABOR (1)
```

```
PIZZA (1)
      |
      | 1:N
      v
PEDIDO (N)
      |
      | 1:N
      v
STATUS (1)
```
