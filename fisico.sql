/* Lógico_1: */

CREATE TABLE aluno (
    data_nascimento date,
    id_aluno int PRIMARY KEY,
    turma varchar,
    nome varchar,
    matricula int
);

CREATE TABLE eletiva (
    quant_vagas varchar,
    nome_eletiva varchar,
    id_eletiva int PRIMARY KEY,
    nome_prof varchar
);

CREATE TABLE turma (
    id_turma int PRIMARY KEY,
    curso varchar,
    modalidade int,
    nome_turma varchar,
    quant_vagas varchar
);

CREATE TABLE eletiva_aluno (
    fk_aluno_id_aluno int,
    fk_eletiva_id_eletiva int
);

CREATE TABLE turma_aluno (
    fk_aluno_id_aluno int,
    fk_turma_id_turma int
);
 
ALTER TABLE eletiva_aluno ADD CONSTRAINT FK_eletiva_aluno_1
    FOREIGN KEY (fk_aluno_id_aluno)
    REFERENCES aluno (id_aluno)
    ON DELETE RESTRICT;
 
ALTER TABLE eletiva_aluno ADD CONSTRAINT FK_eletiva_aluno_2
    FOREIGN KEY (fk_eletiva_id_eletiva)
    REFERENCES eletiva (id_eletiva)
    ON DELETE RESTRICT;
 
ALTER TABLE turma_aluno ADD CONSTRAINT FK_turma_aluno_1
    FOREIGN KEY (fk_aluno_id_aluno)
    REFERENCES aluno (id_aluno)
    ON DELETE RESTRICT;
 
ALTER TABLE turma_aluno ADD CONSTRAINT FK_turma_aluno_2
    FOREIGN KEY (fk_turma_id_turma)
    REFERENCES turma (id_turma)
    ON DELETE RESTRICT;