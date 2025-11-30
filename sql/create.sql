PRAGMA foreign_keys = ON;

---------------------------------------
-- TABELA: AUTOR
---------------------------------------
CREATE TABLE AUTOR (
    id_autor INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    nacionalidade VARCHAR(50)
);

---------------------------------------
-- TABELA: LIVRO
---------------------------------------
CREATE TABLE LIVRO (
    id_livro INTEGER PRIMARY KEY,
    titulo VARCHAR(200),
    ano INTEGER,
    categoria VARCHAR(50)
);

---------------------------------------
-- TABELA: LIVRO_AUTOR  (N:N)
---------------------------------------
CREATE TABLE LIVRO_AUTOR (
    id_livro INTEGER,
    id_autor INTEGER,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id_livro),
    FOREIGN KEY (id_autor) REFERENCES AUTOR(id_autor)
);

---------------------------------------
-- TABELA: USUARIO
---------------------------------------
CREATE TABLE USUARIO (
    id_usuario INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    status VARCHAR(20)
);

---------------------------------------
-- TABELA: EXEMPLAR  (1:N com LIVRO)
---------------------------------------
CREATE TABLE EXEMPLAR (
    id_exemplar INTEGER PRIMARY KEY,
    id_livro INTEGER NOT NULL,
    codigo_interno VARCHAR(30) UNIQUE,
    estado VARCHAR(30),
    disponibilidade VARCHAR(20),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id_livro)
);

---------------------------------------
-- TABELA: EMPRESTIMO (1:N USUARIO / 1:N EXEMPLAR)
---------------------------------------
CREATE TABLE EMPRESTIMO (
    id_emprestimo INTEGER PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_exemplar INTEGER NOT NULL,
    data_emprestimo DATE,
    data_prev_devolucao DATE,
    data_devolucao DATE,
    status VARCHAR(20),
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
    FOREIGN KEY (id_exemplar) REFERENCES EXEMPLAR(id_exemplar)
);

---------------------------------------
-- TABELA: MULTA (1:1 com EMPRESTIMO)
---------------------------------------
CREATE TABLE MULTA (
    id_multa INTEGER PRIMARY KEY,
    id_emprestimo INTEGER UNIQUE,
    valor INTEGER,
    status_multa VARCHAR(20),
    FOREIGN KEY (id_emprestimo) REFERENCES EMPRESTIMO(id_emprestimo)
);

---------------------------------------
-- TABELA: RESERVA (USUARIO 1:N / EXEMPLAR 1:N)
---------------------------------------
CREATE TABLE RESERVA (
    id_reserva INTEGER PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_exemplar INTEGER NOT NULL,
    data_reserva DATE,
    status_reserva VARCHAR(20),
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
    FOREIGN KEY (id_exemplar) REFERENCES EXEMPLAR(id_exemplar)
);
