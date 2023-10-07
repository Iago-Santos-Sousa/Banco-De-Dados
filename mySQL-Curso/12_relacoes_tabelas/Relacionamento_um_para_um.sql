CREATE DATABASE relacoes;
USE relacoes;

CREATE TABLE estudantes (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    turma VARCHAR(5)
);
    
CREATE TABLE contatos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telefone VARCHAR(20),
    estudante_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);

INSERT INTO estudantes (nome, turma) VALUES ('Matheus', "304d");
INSERT INTO estudantes (nome, turma) VALUES ('João', "101a");

INSERT INTO contatos (telefone, estudante_id) VALUES ('(48)9999-9999', 1);
INSERT INTO contatos (telefone, estudante_id) VALUES ('(50)8888-8888', 2);

SELECT * FROM contatos;

-- cada estudante tem um telefone(contato) e cada contato pertence a um estudante.