---------------------------------------
-- UPDATES
---------------------------------------

-- 1) Marcar exemplar como emprestado
UPDATE EXEMPLAR
SET disponibilidade = 'emprestado'
WHERE id_exemplar = 1;

-- 2) Atualizar status de usuário para ativo
UPDATE USUARIO
SET status = 'ativo'
WHERE id_usuario = 3;

-- 3) Quitar multa pendente
UPDATE MULTA
SET status_multa = 'paga'
WHERE id_multa = 1;

---------------------------------------
-- DELETES
---------------------------------------

-- 1) Remover reservas canceladas
DELETE FROM RESERVA
WHERE status_reserva = 'cancelada';

-- 2) Excluir multas pagas
DELETE FROM MULTA
WHERE status_multa = 'paga';

-- 3) Excluir usuários inativos
DELETE FROM USUARIO
WHERE status = 'inativo';
