------------------------------------------
-- INSERINDO AUTORES
------------------------------------------
INSERT INTO AUTOR (id_autor, nome, nacionalidade) VALUES
(1, 'George Orwell', 'Inglês'),
(2, 'J. K. Rowling', 'Britânica'),
(3, 'Machado de Assis', 'Brasileiro'),
(4, 'Clarice Lispector', 'Brasileira');

------------------------------------------
-- INSERINDO LIVROS
------------------------------------------
INSERT INTO LIVRO (id_livro, titulo, ano, categoria) VALUES
(1, '1984', 1949, 'Ficção'),
(2, 'Harry Potter e a Pedra Filosofal', 1997, 'Fantasia'),
(3, 'Dom Casmurro', 1899, 'Romance'),
(4, 'A Hora da Estrela', 1977, 'Romance');

------------------------------------------
-- TABELA ASSOCIATIVA LIVRO_AUTOR (N:N)
------------------------------------------
INSERT INTO LIVRO_AUTOR (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

------------------------------------------
-- USUÁRIOS
------------------------------------------
INSERT INTO USUARIO (id_usuario, nome, email, status) VALUES
(1, 'Ana Silva', 'ana@gmail.com', 'ativo'),
(2, 'João Pereira', 'joao@gmail.com', 'ativo'),
(3, 'Carla Gomes', 'carla@gmail.com', 'inativo'),
(4, 'Marcos Souza', 'marcos@gmail.com', 'ativo');

------------------------------------------
-- EXEMPLARES (1:N com LIVRO)
------------------------------------------
INSERT INTO EXEMPLAR (id_exemplar, id_livro, codigo_interno, estado, disponibilidade) VALUES
(1, 1, '1984-01', 'bom', 'disponível'),
(2, 1, '1984-02', 'regular', 'emprestado'),
(3, 2, 'HP-01', 'ótimo', 'disponível'),
(4, 3, 'DC-01', 'bom', 'disponível'),
(5, 4, 'AE-01', 'bom', 'disponível');

------------------------------------------
-- EMPRÉSTIMOS
------------------------------------------
INSERT INTO EMPRESTIMO (id_emprestimo, id_usuario, id_exemplar, data_emprestimo, data_prev_devolucao, data_devolucao, status) VALUES
(1, 2, 2, '2025-01-05', '2025-01-12', NULL, 'ativo'),
(2, 1, 3, '2025-01-01', '2025-01-10', '2025-01-09', 'finalizado'),
(3, 4, 1, '2025-01-08', '2025-01-15', NULL, 'atrasado');

------------------------------------------
-- MULTAS
------------------------------------------
INSERT INTO MULTA (id_multa, id_emprestimo, valor, status_multa) VALUES
(1, 3, 20, 'pendente'),
(2, 2, 10, 'paga');

------------------------------------------
-- RESERVAS
------------------------------------------
INSERT INTO RESERVA (id_reserva, id_usuario, id_exemplar, data_reserva, status_reserva) VALUES
(1, 1, 1, '2025-01-08', 'ativa'),
(2, 3, 4, '2025-01-09', 'cancelada'),
(3, 4, 5, '2025-01-10', 'ativa');
