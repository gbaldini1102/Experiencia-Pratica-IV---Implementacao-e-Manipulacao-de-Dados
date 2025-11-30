--------------------------------------------------
-- 1) Livros com seus autores
--------------------------------------------------
SELECT l.titulo, a.nome AS autor
FROM LIVRO l
JOIN LIVRO_AUTOR la ON la.id_livro = l.id_livro
JOIN AUTOR a ON a.id_autor = la.id_autor
ORDER BY l.titulo ASC;

--------------------------------------------------
-- 2) Exemplares disponíveis ordenados por estado
--------------------------------------------------
SELECT id_exemplar, codigo_interno, estado, disponibilidade
FROM EXEMPLAR
WHERE disponibilidade = 'disponível'
ORDER BY estado;

--------------------------------------------------
-- 3) Empréstimos atrasados com nome do usuário
--------------------------------------------------
SELECT e.id_emprestimo, u.nome, e.data_emprestimo
FROM EMPRESTIMO e
JOIN USUARIO u ON u.id_usuario = e.id_usuario
WHERE e.status = 'atrasado'
ORDER BY e.data_emprestimo DESC;

--------------------------------------------------
-- 4) Listar reservas mais recentes (LIMIT)
--------------------------------------------------
SELECT *
FROM RESERVA
ORDER BY data_reserva DESC
LIMIT 3;

--------------------------------------------------
-- 5) Multas pendentes com nome do usuário
--------------------------------------------------
SELECT m.id_multa, m.valor, u.nome AS usuario
FROM MULTA m
JOIN EMPRESTIMO e ON e.id_emprestimo = m.id_emprestimo
JOIN USUARIO u ON u.id_usuario = e.id_usuario
WHERE m.status_multa = 'pendente';
