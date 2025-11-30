

# 🔵 **MODELO LÓGICO — RELACIONAMENTOS E CARDINALIDADES**

A seguir está a explicação completa, **sem SELECTs**, apenas descrição dos relacionamentos.

---

# 🏬 **1. Unidade_tb → Pedido_tb (1:N)**

### ✔ Relacionamento:

Uma **unidade** pode ter **vários pedidos**.

### ✔ Cardinalidade:

* **Unidade (1)** —— possui ——> **(N) Pedidos**
* No pedido existe: `unidade_tb_id` como chave estrangeira apontando para `unidade_tb.id`.

### ✔ Interpretação:

Cada pedido é feito **em uma única unidade**, mas uma unidade pode ter vários pedidos ao longo do tempo.

---

# 👤 **2. Funcionario_tb → Pedido_tb (1:N)**

### ✔ Relacionamento:

Um **funcionário** pode registrar **vários pedidos**.

### ✔ Cardinalidade:

* **Funcionário (1)** —— registra ——> **(N) Pedidos**
* No pedido existe: `funcionario_tb_id` como FK.

### ✔ Interpretação:

Cada pedido é lançado por **um funcionário**, mas um mesmo funcionário pode lançar vários pedidos.

---

# 📦 **3. Pedido_tb → Item_tb (1:N)**

### ✔ Relacionamento:

Um **pedido** possui **vários itens**.

### ✔ Cardinalidade:

* **Pedido (1)** —— contém ——> **(N) Itens**
* Na tabela item existe: `pedido_tb_id` como FK.

### ✔ Interpretação:

Cada item está ligado a **um pedido**, mas um pedido pode ter **quantos itens forem necessários**.

---

# 🍔 **4. Produto_tb → Item_tb (1:N)**

### ✔ Relacionamento:

Cada item representa **um produto**, e esse produto pode aparecer em vários pedidos.

### ✔ Cardinalidade:

* **Produto (1)** —— aparece em ——> **(N) Itens**
* Na tabela item existe: `produto_tb_id` como FK.

### ✔ Interpretação:

O mesmo produto (ex: Pizza Calabresa, Refrigerante, etc.) pode existir em diversos pedidos, porém **cada item só pode referenciar 1 produto**.

---

# 🎯 **RESUMO GERAL**

| Tabela Pai     | Tabela Filha | Cardinalidade | Explicação                             |
| -------------- | ------------ | ------------- | -------------------------------------- |
| unidade_tb     | pedido_tb    | 1 → N         | Uma unidade tem muitos pedidos         |
| funcionario_tb | pedido_tb    | 1 → N         | Um funcionário registra muitos pedidos |
| pedido_tb      | item_tb      | 1 → N         | Um pedido tem vários itens             |
| produto_tb     | item_tb      | 1 → N         | Um produto aparece em vários itens     |

---

# 🔥 MODELO VISUAL (ER SIMPLIFICADO)

```
unidade_tb (1) ----< (N) pedido_tb >---- (1) funcionario_tb
                             |
                             V
                        (N) item_tb >---- (1) produto_tb
```

