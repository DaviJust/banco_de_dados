CREATE DATABASE RESILIA;

USE RESILIA;

CREATE TABLE Curso (
  id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  nome VARCHAR(255),
  duracao INTEGER,
  valor FLOAT,
  carga_horaria INTEGER);

CREATE TABLE Turma (
  codigo_turma INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  id_curso INTEGER,
  sala INTEGER,
  turno VARCHAR(5),
  FOREIGN KEY (id_curso) REFERENCES Curso(id));

CREATE TABLE Modulo (
  id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  id_curso INTEGER,
  titulo VARCHAR(50),
  descricao TINYTEXT,
  FOREIGN KEY (id_curso) REFERENCES Curso(id));

CREATE TABLE Aluno (
  matricula INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  codigo_turma INTEGER,
  nome TINYTEXT,
  email VARCHAR(100),
  telefone VARCHAR(11),
  data_matricula DATE,
  cep VARCHAR(9),
  frequencia FLOAT,
  media FLOAT,
  status_ativo TINYINT,
  FOREIGN KEY (codigo_turma) REFERENCES Turma(codigo_turma));

CREATE TABLE Facilitador (
  id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  id_modulo INTEGER,
  nome TINYTEXT,
  especialidade VARCHAR(100),
  email VARCHAR(100),
  telefone VARCHAR(11),
  FOREIGN KEY (id_modulo) REFERENCES Modulo(id));

CREATE TABLE Relacao_Turma_Facilitador (
  id_facilitador INTEGER,
  codigo_turma INTEGER,
  FOREIGN KEY (id_facilitador) REFERENCES Facilitador(id),
  FOREIGN KEY (codigo_turma) REFERENCES Turma(codigo_turma));

CREATE TABLE Relacao_Modulo_Curso (
  id_modulo INTEGER,
  id_curso INTEGER,
  FOREIGN KEY (id_curso) REFERENCES Curso(id),
  FOREIGN KEY (id_modulo) REFERENCES Modulo(id));

CREATE TABLE Log_aluno (
  data_alteracao DATETIME,
  matricula_aluno INTEGER,
  status_antigo TINYINT,
  novo_status TINYINT,
  FOREIGN KEY (matricula_aluno) REFERENCES Aluno(matricula));