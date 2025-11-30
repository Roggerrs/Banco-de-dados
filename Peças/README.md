# Modelo ER – Cardinalidades e Relacionamentos

Este README descreve de forma clara e objetiva as cardinalidades e os relacionamentos do modelo envolvendo **Corredor**, **Receptáculo**, **Peça** e **Estoque**.

---

## 🔹 1. Corredor → Receptáculo (1:N)

**Um Corredor possui vários Receptáculos.**

* Cada **Receptáculo** pertence a **um único Corredor**.
* Um **Corredor** pode conter **diversos Receptáculos**.

**Resumo:**

```
CORREDOR (1) --------< (N) RECEPTACULO
```

---

## 🔹 2. Receptáculo → Estoque (1:N)

**Um Receptáculo pode armazenar várias linhas de estoque.**

* Cada linha na tabela **Estoque** pertence a **um único Receptáculo**.
* Um **Receptáculo** pode conter **diferentes peças**, cada uma registrada como uma linha na tabela Estoque.

**Atributos importantes nesta relação:**

* **ID_RECEPTACULO** — referência ao receptáculo.
* **QUANTIDADE** — indica quantas unidades de determinada peça estão naquele receptáculo.

**Resumo:**

```
RECEPTACULO (1) --------< (N) ESTOQUE
```

---

## 🔹 3. Peça → Estoque (1:N)

**Uma peça pode estar armazenada em diversos receptáculos.**

* Cada linha na tabela **Estoque** se refere a **uma única Peça**.
* Uma **Peça** pode aparecer em **vários Receptáculos**, cada um com sua própria quantidade.

**Resumo:**

```
PECA (1) --------< (N) ESTOQUE
```

---

## 🔹 Atributo Quantidade

O atributo **`QUANTIDADE`** pertence à tabela **ESTOQUE**, pois ela representa:

✔ qual peça
✔ está em qual receptáculo
✔ **e em que quantidade**

Exemplo de linha na tabela ESTOQUE:

| ID_ESTOQUE | ID_PECA | ID_RECEPTACULO | QUANTIDADE |
| ---------- | ------- | -------------- | ---------- |
| 15         | 3       | 12             | 27         |

---

## 🔹 4. Visão Geral do Modelo

A combinação dos relacionamentos forma a estrutura:

```
CORREDOR (1)
     |
     | 1:N
     |
RECEPTACULO (N)
     |
     | 1:N
     |
ESTOQUE (N) >-------- 1 (PECA)
        |
        |-- QUANTIDADE
```

* **Corredor** organiza a estrutura física.
* **Receptáculo** identifica uma posição dentro do corredor.
* **Peça** representa o item armazenado.
* **Estoque** registra *qual peça está em qual receptáculo*, com a **quantidade correspondente**.

---

## ✔ Conclusão

O modelo utiliza cardinalidades simples e diretas, focadas em organização física e armazenamento.
A tabela **ESTOQUE** funciona como ligação entre **PEÇA** e **RECEPTÁCULO**, permitindo:

* uma peça estar em vários receptáculos,
* um receptáculo armazenar vários tipos de peças,
* controlar **quantidades independentes** por local.




