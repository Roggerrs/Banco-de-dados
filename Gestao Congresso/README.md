# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Gestão de Congresso**

Este README descreve de forma objetiva as **cardinalidades** e os **relacionamentos** entre **Pessoa**, **Congresso**, **Sessão**, **Artigo**, **Tema**, **Revisão**, **Grupo de Trabalho** e as tabelas associativas, conforme o diagrama apresentado.

---

## 🔹 1. Pessoa → Pessoa participa de Congresso (1:N através de tabela associativa)

Uma Pessoa pode participar de vários Congressos.

* Cada **linha** em `PESSOA_has_CONGRESSO` liga uma pessoa a um congresso.
* Uma **Pessoa** pode participar de **vários Congressos**.
* Um **Congresso** pode ter **várias Pessoas inscritas**.

**Resumo:**

```
PESSOA (1) ----< (N) PESSOA_has_CONGRESSO >---- (1) CONGRESSO
```

---

## 🔹 2. Congresso → Sessão (1:N)

Um Congresso possui várias Sessões.

* Cada **Sessão** pertence a **um único Congresso**.
* Um **Congresso** pode ter **múltiplas Sessões**.

**Resumo:**

```
CONGRESSO (1) --------< (N) SESSAO
```

---

## 🔹 3. Congresso → Grupo de Trabalho (1:N através de tabela associativa)

Um Congresso pode ter vários Grupos de Trabalho.

* Cada relação é registrada em `CONGRESSO_has_GRUPO_TRABALHO`.
* Um **Grupo de Trabalho** pode participar de **vários Congressos**.
* Um **Congresso** pode incluir **vários Grupos de Trabalho**.

**Resumo:**

```
CONGRESSO (1) ----< (N) CONGRESSO_has_GRUPO_TRABALHO >---- (1) GRUPO_TRABALHO
```

---

## 🔹 4. Artigo → Pessoa (1:N através de tabela associativa)

Um Artigo pode ter vários autores.

* A tabela `ARTIGO_has_PESSOA` liga artigos às pessoas.
* Um **Artigo** pode ter **vários Autores**.
* Uma **Pessoa** pode estar associada a **vários Artigos**.

**Resumo:**

```
PESSOA (1) ----< (N) ARTIGO_has_PESSOA >---- (1) ARTIGO
```

---

## 🔹 5. Artigo → Tema (1:N através de tabela associativa)

Um Artigo pode ser associado a vários Temas.

* Cada relação está em `ARTIGO_has_TEMA`.
* Um **Artigo** pode ter **vários Temas**.
* Um **Tema** pode se aplicar a **vários Artigos**.

**Resumo:**

```
TEMA (1) ----< (N) ARTIGO_has_TEMA >---- (1) ARTIGO
```

---

## 🔹 6. Sessão → Artigo (1:N através da tabela associativa)

Uma Sessão pode apresentar vários Artigos.

* Cada linha em `ARTIGO_has_SESSAO` liga um artigo a uma sessão.
* Uma **Sessão** pode apresentar **muitos Artigos**.
* Um **Artigo** pode ser apresentado em **uma única Sessão** (no seu modelo atual).

**Resumo:**

```
SESSAO (1) ----< (N) ARTIGO_has_SESSAO >---- (1) ARTIGO
```

---

## 🔹 7. Pessoa → Revisão (1:N)

Uma Pessoa pode realizar várias revisões.

* Cada **Revisão** pertence a **uma Pessoa**.
* Uma **Pessoa** pode realizar **várias Revisões**.

**Resumo:**

```
PESSOA (1) --------< (N) REVISAO
```

---

## 🔹 8. Revisão → Artigo (1:N através de tabela associativa)

Uma revisão pode avaliar vários artigos.

* Cada relação é registrada em `REVISAO_has_ARTIGO`.
* Uma **Revisão** pode estar relacionada a **vários Artigos**.
* Um **Artigo** pode ser avaliado em **várias Revisões**.

**Resumo:**

```
REVISAO (1) ----< (N) REVISAO_has_ARTIGO >---- (1) ARTIGO
```

---

## ✔ Visão Geral do Modelo

Representação geral dos principais relacionamentos:

```
PESSOA (1)
      |
      | 1:N (via associativa)
      v
PESSOA_has_CONGRESSO (N)
      ^
      |
CONGRESSO (1)
```

```
CONGRESSO (1)
      |
      | 1:N
      v
SESSAO (N)
```

```
CONGRESSO (1)
      |
      | 1:N (via associativa)
      v
CONGRESSO_has_GRUPO_TRABALHO (N)
      ^
      |
GRUPO_TRABALHO (1)
```

```
ARTIGO (1)
   | 1:N               | 1:N
   v                   v
ARTIGO_has_PESSOA     ARTIGO_has_TEMA
        ^                   ^
        |                   |
     PESSOA (1)         TEMA (1)
```

```
SESSAO (1)
      |
      | 1:N
      v
ARTIGO_has_SESSAO (N)
      ^
      |
   ARTIGO (1)
```

```
PESSOA (1)
      |
      | 1:N
      v
REVISAO (N)
      |
      | 1:N (via associativa)
      v
REVISAO_has_ARTIGO (N)
      ^
      |
   ARTIGO (1)
```

---
