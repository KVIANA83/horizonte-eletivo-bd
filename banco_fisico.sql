/* Lógico_1: */

CREATE TABLE alunos (
    id_alunos int PRIMARY KEY,
    matricula int,
    nome_aluno varchar,
    data_nascimento date,
    sexo varchar,
    raca_cor varchar,
    num_classe int,
    curso varchar,
    turma varchar
);

CREATE TABLE eletiva (
    id_eletiva int PRIMARY KEY,
    nome_eletiva varchar,
    nome_professor varchar,
    quant_vagas int
);

CREATE TABLE turmas (
    id_turmas int PRIMARY KEY,
    nome_turma varchar,
    curso varchar,
    modalidade varchar,
    quant_vagas int
);

CREATE TABLE aluno_eletiva (
    fk_eletiva_id_eletiva int,
    fk_alunos_id_alunos int
);

CREATE TABLE turma_aluno (
    fk_turmas_id_turmas int,
    fk_eletiva_id_eletiva int
);
 
ALTER TABLE aluno_eletiva ADD CONSTRAINT FK_aluno_eletiva_1
    FOREIGN KEY (fk_eletiva_id_eletiva)
    REFERENCES eletiva (id_eletiva)
    ON DELETE RESTRICT;
 
ALTER TABLE aluno_eletiva ADD CONSTRAINT FK_aluno_eletiva_2
    FOREIGN KEY (fk_alunos_id_alunos)
    REFERENCES alunos (id_alunos)
    ON DELETE RESTRICT;
 
ALTER TABLE turma_aluno ADD CONSTRAINT FK_turma_aluno_1
    FOREIGN KEY (fk_turmas_id_turmas)
    REFERENCES turmas (id_turmas)
    ON DELETE RESTRICT;
 
ALTER TABLE turma_aluno ADD CONSTRAINT FK_turma_aluno_2
    FOREIGN KEY (fk_eletiva_id_eletiva)
    REFERENCES eletiva (id_eletiva)
    ON DELETE RESTRICT;