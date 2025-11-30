
# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Gestão Escolar**

Este README descreve de forma clara e objetiva as cardinalidades e os relacionamentos do modelo envolvendo **Alunos**, **Locais**, **Disciplinas**, **Turmas** e **Matrículas**, conforme o diagrama apresentado.

---

## 🔹 1. Local → Aluno (1:N)

Um Local representa o campus, sede ou unidade onde um aluno está registrado.

* Cada **Aluno** pertence a **um único Local**.
* Um **Local** pode ter **vários Alunos** associados.

**Resumo:**

```
LOCAL (1) --------< (N) ALUNO
```

---

## 🔹 2. Disciplina → Turma (1:N)

Cada disciplina pode ser ofertada em várias turmas diferentes.

* Cada **Turma** pertence a **uma única Disciplina**.
* Uma **Disciplina** pode possuir **diversas Turmas**.

**Resumo:**

```
DISCIPLINA (1) --------< (N) TURMA
```

---

## 🔹 3. Aluno → Matrícula → Turma (N:N)

O relacionamento entre Aluno e Turma é **muitos-para-muitos**, representado pela tabela associativa **MATRICULA**.

* Um **Aluno** pode se matricular em **várias Turmas**.
* Uma **Turma** pode ter **vários Alunos** matriculados.
* A tabela **MATRICULA** registra também o **ano letivo** e a **nota final**.

**Resumo:**

```
ALUNO (1) >--------< (N) MATRICULA (N) >--------< (1) TURMA
```

---

## 🔹 4. Matrícula → Ano Letivo / Nota Final (atributos da relação)

A tabela **MATRICULA** não é apenas um vínculo entre Aluno e Turma.
Ela possui informações específicas do relacionamento:

* **ANO_LETIVO** – ano da matrícula
* **NOTA_FINAL** – desempenho do aluno naquela turma

**Resumo:**

```
MATRICULA
   | ANO_LETIVO
   | NOTA_FINAL
```

---

## ✔ Visão Geral do Modelo

Representação geral dos principais relacionamentos:

```
LOCAL (1)
   | 1:N
   v
ALUNO (N)
      \
       \  N:N
        \ 
         MATRICULA (N)
        /
       /  N:N
TURMA (N)
   ^
   | 1:N
DISCIPLINA (1)
```

---
