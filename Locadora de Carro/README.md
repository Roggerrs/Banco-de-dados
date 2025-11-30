
# Modelo ER – Cardinalidades e Relacionamentos

**Módulo: Locadora de Carros**

Este README descreve de forma objetiva as **cardinalidades** e os **relacionamentos** entre **Tipo de Veículo**, **Veículo**, **Automóvel**, **Ônibus**, **Cliente**, **Escritório** e **Contrato de Aluguel**, conforme o modelo relacional apresentado.

---

## 🔹 1. Tipo de Veículo → Veículo (1:N)

Um Tipo de Veículo pode ser associado a vários Veículos.

* Cada **Veículo** possui um único **Tipo de Veículo**.
* Um **Tipo de Veículo** pode estar vinculado a **muitos Veículos**.

**Resumo:**

```
TIPO_VEICULO (1) --------< (N) VEICULO
```

---

## 🔹 2. Tipo de Veículo → Automóvel (1:1 – especialização)

Automóvel é uma **especialização** de Tipo de Veículo.

* Cada **Automóvel** corresponde a **um único Tipo de Veículo**.
* Um **Tipo de Veículo** pode ser especializado como **Automóvel**.

**Resumo:**

```
TIPO_VEICULO (1) -------- (1) AUTOMOVEL
```

---

## 🔹 3. Tipo de Veículo → Ônibus (1:1 – especialização)

Ônibus também é uma **especialização** de Tipo de Veículo.

* Cada **Ônibus** corresponde a **um único Tipo de Veículo**.
* Um **Tipo de Veículo** pode ser especializado como **Ônibus**.

**Resumo:**

```
TIPO_VEICULO (1) -------- (1) ONIBUS
```

---

## 🔹 4. Veículo → Contrato de Aluguel (1:N)

Um Veículo pode estar presente em vários contratos ao longo do tempo.

* Um **Contrato** utiliza **um único Veículo**.
* Um **Veículo** pode aparecer em **muitos Contratos** (em diferentes períodos).

**Resumo:**

```
VEICULO (1) --------< (N) CONTRATO_DE_ALUGUEL
```

---

## 🔹 5. Cliente → Contrato de Aluguel (1:N)

Um Cliente pode realizar vários contratos.

* Cada **Contrato** pertence a **um Cliente**.
* Um **Cliente** pode ter **múltiplos Contratos** registrados.

**Resumo:**

```
CLIENTE (1) --------< (N) CONTRATO_DE_ALUGUEL
```

---

## 🔹 6. Escritório → Contrato de Aluguel (1:N)

Um Escritório pode emitir vários contratos.

* Cada **Contrato de Aluguel** está associado a **um Escritório**.
* Um **Escritório** pode gerar **vários Contratos**.

**Resumo:**

```
ESCRITORIO (1) --------< (N) CONTRATO_DE_ALUGUEL
```

---

# ✔ Visão Geral do Modelo

### Tipos e Instâncias de Veículos

```
TIPO_VEICULO (1)
     | 1:N
     v
  VEICULO (N)
```

### Especializações

```
TIPO_VEICULO (1)
     |
     | 1:1
     v
AUTOMOVEL (1)

TIPO_VEICULO (1)
     |
     | 1:1
     v
ONIBUS (1)
```

### Contratos

```
VEICULO (1)
      |
      | 1:N
      v
CONTRATO_DE_ALUGUEL (N)
      ^
      |
CLIENTE (1)
```

```
ESCRITORIO (1)
       |
       | 1:N
       v
CONTRATO_DE_ALUGUEL (N)
```

---
