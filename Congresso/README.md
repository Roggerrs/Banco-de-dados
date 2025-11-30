# Modelo ER – Cardinalidades e Relacionamentos

Este README descreve de forma clara e objetiva as cardinalidades e os relacionamentos do modelo envolvendo **Congresso**, **Grupo de Trabalho**, **Artigo** e **Autor**.

---

## 🔹 1. Congresso → Grupo de Trabalho (N:N)

Um Congresso pode estar associado a vários Grupos de Trabalho.

* Cada **Grupo de Trabalho** pode participar de **vários Congressos**.
* Cada **Congresso** pode conter **diversos Grupos de Trabalho**.
* A relação é representada pela tabela intermediária **CONGRESSO_has_GRUPO_TRABALHO**.

**Resumo:**

```
CONGRESSO (1) >--------< (N) CONGRESSO_has_GRUPO_TRABALHO (N) >--------< (1) GRUPO_TRABALHO
```

---

## 🔹 2. Congresso → Artigo (1:N)

Um Congresso pode ter vários Artigos submetidos.

* Cada **Artigo** pertence a **um único Congresso**.
* Um **Congresso** pode possuir **diversos Artigos** registrados.

**Resumo:**

```
CONGRESSO (1) --------< (N) ARTIGO
```

---

## 🔹 3. Artigo → Autor (N:N)

Um Artigo pode ser escrito por diversos Autores.

* Cada **Autor** pode participar da escrita de **vários Artigos**.
* Cada **Artigo** pode ter **um ou vários Autores**.
* A relação é representada pela tabela intermediária **AUTOR_has_ARTIGO**.

**Resumo:**

```
AUTOR (1) >--------< (N) AUTOR_has_ARTIGO (N) >--------< (1) ARTIGO
```

---

## 🔹 4. Visão Geral do Modelo

A combinação dos relacionamentos forma a estrutura:

```
CONGRESSO (1)
      |
      | 1:N
      v
   ARTIGO (N) >--------< (N) AUTOR
                     N:N

CONGRESSO (1) >--------< (N) GRUPO_TRABALHO
                N:N
```

* **Congresso** organiza o evento.
* **Grupo de Trabalho** representa áreas temáticas dentro do congresso.
* **Artigo** é enviado ao congresso.
* **Autor** é quem escreve o artigo.

---
