CREATE TABLE professores (
    id_professor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    registro VARCHAR(20) UNIQUE NOT NULL,
    especialidade VARCHAR(50)
);

CREATE TABLE disciplinas (
    id_disciplina SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE alunos (
    id_aluno SERIAL PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE
);


CREATE TABLE turmas (
    id_turma SERIAL PRIMARY KEY,
    ano INT NOT NULL,
    semestre INT NOT NULL,
    id_professor INT,    
    id_disciplina INT,   
    

    CONSTRAINT fk_turma_professor FOREIGN KEY (id_professor) REFERENCES professores (id_professor),
    CONSTRAINT fk_turma_disciplina FOREIGN KEY (id_disciplina) REFERENCES disciplinas (id_disciplina)
);


CREATE TABLE matriculas (
    id_matricula SERIAL PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    nota NUMERIC(4, 2),


    CONSTRAINT fk_matricula_aluno FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno),
    CONSTRAINT fk_matricula_turma FOREIGN KEY (id_turma) REFERENCES turmas (id_turma)
);

SELECT * FROM disciplinas;

-- Só os melhores

INSERT INTO professores (nome, registro, especialidade) VALUES
('Mestre Yoda', 'REG001', 'Filosofia'),
('Professor Girafales', 'REG002', 'Matemática');

INSERT INTO disciplinas (nome, carga_horaria) VALUES
('Filosofia Jedi', 60),
('Matemática Avançada', 80);

INSERT INTO alunos (matricula, nome, data_nascimento) VALUES
('ALU01', 'Harry Potter', '1980-07-31'),
('ALU02', 'Luke Skywalker', '1977-05-25');

INSERT INTO turmas (ano, semestre, id_professor, id_disciplina) VALUES
(2024, 1, 1, 1),
(2024, 1, 2, 2);

INSERT INTO matriculas (id_aluno, id_turma, nota) VALUES
(2, 1, 9.5),
(1, 2, 7.0);