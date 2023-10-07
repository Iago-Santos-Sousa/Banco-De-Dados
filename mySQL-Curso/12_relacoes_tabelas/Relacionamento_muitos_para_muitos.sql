CREATE TABLE materias (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

CREATE TABLE estudante_materia (
-- tabela pivô, que relaciona a tabela materias com a de estudantes.
	estudante_id INT NOT NULL,
    materia_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY (materia_id) REFERENCES materias(id)
);

INSERT INTO materias (nome) VALUES ("Matemática");
INSERT INTO materias (nome) VALUES ("Quimíca");
INSERT INTO materias (nome) VALUES ("Física");

SELECT * FROM materias;

INSERT INTO estudantes (nome, turma) VALUES ("Maria", "202b");
INSERT INTO estudantes (nome, turma) VALUES ("Amanda", "184c");

SELECT * FROM estudantes;

-- estudante 1
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 1);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 3);

-- estudante 2
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 1);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 3);

SELECT estudantes.nome, estudante_materia.materia_id AS "Química" FROM estudantes
JOIN estudante_materia ON estudante_materia.estudante_id = estudantes.id
AND estudante_materia.materia_id = 2;