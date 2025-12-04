-- Arquivo base para reconhecimento de SQL no GitHub

CREATE TABLE exemplo (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
