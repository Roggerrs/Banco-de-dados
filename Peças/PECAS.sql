-- APAGA O BANCO (SE JÁ EXISTIR)
DROP DATABASE IF EXISTS projeto_estoque;

-- CRIA O BANCO
CREATE DATABASE projeto_estoque;
USE projeto_estoque;

-- =============================
-- TABELA: CORREDOR
-- =============================
CREATE TABLE CORREDOR (
    ID_CORREDOR INT NOT NULL AUTO_INCREMENT,
    NOME_CORREDOR VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_CORREDOR)
);

-- =============================
-- TABELA: RECEPTACULO
-- =============================
CREATE TABLE RECEPTACULO (
    ID_RECEPTACULO INT NOT NULL AUTO_INCREMENT,
    NOME_RECEPTACULO VARCHAR(50) NOT NULL,
    ID_CORREDOR INT NOT NULL,
    PRIMARY KEY (ID_RECEPTACULO),
    CONSTRAINT FK_RECEPTACULO_CORREDOR
        FOREIGN KEY (ID_CORREDOR)
        REFERENCES CORREDOR(ID_CORREDOR)
);

-- =============================
-- TABELA: PECA
-- =============================
CREATE TABLE PECA (
    ID_PECA INT NOT NULL AUTO_INCREMENT,
    DESCRICAO_PECA VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_PECA)
);

-- =============================
-- TABELA: ESTOQUE
-- (Relaciona PEÇA x RECEPTÁCULO + QUANTIDADE)
-- =============================
CREATE TABLE ESTOQUE (
    ID_ESTOQUE INT NOT NULL AUTO_INCREMENT,
    ID_PECA INT NOT NULL,
    ID_RECEPTACULO INT NOT NULL,
    QUANTIDADE INT NOT NULL DEFAULT 0,

    PRIMARY KEY (ID_ESTOQUE),

    CONSTRAINT FK_ESTOQUE_PECA
        FOREIGN KEY (ID_PECA)
        REFERENCES PECA(ID_PECA),

    CONSTRAINT FK_ESTOQUE_RECEPTACULO
        FOREIGN KEY (ID_RECEPTACULO)
        REFERENCES RECEPTACULO(ID_RECEPTACULO)
);

-- =============================
-- INSERTS DE EXEMPLO
-- =============================

-- Corredores
INSERT INTO CORREDOR (NOME_CORREDOR)
VALUES ('Corredor A'), ('Corredor B'), ('Corredor C');

-- Peças
INSERT INTO PECA (DESCRICAO_PECA)
VALUES ('Parafuso 10mm'), ('Porca 8mm'), ('Arruela Grande'), ('Engrenagem X');

-- Receptáculos
INSERT INTO RECEPTACULO (NOME_RECEPTACULO, ID_CORREDOR)
VALUES
 ('R1', 1),
 ('R2', 1),
 ('R3', 2),
 ('R4', 3);

-- Estoque
INSERT INTO ESTOQUE (ID_PECA, ID_RECEPTACULO, QUANTIDADE)
VALUES
 (1, 1, 20),
 (2, 2, 50),
 (3, 3, 10),
 (4, 4, 100),
 (1, 3, 5);   -- exemplo: mesma peça em outro receptáculo

-- =============================
-- Consulta geral (para testar)
-- =============================
SELECT 
    p.DESCRICAO_PECA,
    r.NOME_RECEPTACULO,
    c.NOME_CORREDOR,
    e.QUANTIDADE
FROM ESTOQUE e
JOIN PECA p ON e.ID_PECA = p.ID_PECA
JOIN RECEPTACULO r ON e.ID_RECEPTACULO = r.ID_RECEPTACULO
JOIN CORREDOR c ON r.ID_CORREDOR = c.ID_CORREDOR;
