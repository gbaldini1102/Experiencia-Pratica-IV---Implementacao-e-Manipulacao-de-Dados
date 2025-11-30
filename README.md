# Experiencia-Pratica-IV---Implementacao-e-Manipulacao-de-Dados

Sistema de Banco de Dados de Biblioteca  

Entrega dos arquivos relacionados a experiência prática número 4.

---

O banco de dados foi projetado para atender às necessidades de um sistema de biblioteca, incluindo:

- Cadastro de livros e autores  
- Controle de exemplares  
- Registro de usuários  
- Empréstimos e devoluções  
- Multas associadas  
- Reservas de exemplares  

Todas as tabelas foram normalizadas até a **Terceira Forma Normal (3FN)**.

---

O DER completo encontra-se em:

📂 `docs/logico.png`

Ele inclui todas as entidades, atributos, relacionamentos e cardinalidades.

---

## Scripts SQL

Os scripts estão organizados na pasta **/sql**.

### **create.sql — Criação das Tabelas**
Contém todos os comandos `CREATE TABLE` com:

- PKs  
- FKs  
- Restrições  
- Relacionamentos exatamente como no DER  

---

### **insert.sql — Inserção de Dados**
Popula o banco com dados iniciais das tabelas:

- AUTOR  
- LIVRO  
- LIVRO_AUTOR  
- USUARIO  
- EXEMPLAR  
- EMPRESTIMO  
- MULTA  
- RESERVA  

---

### **select.sql — Consultas SQL**
Contém de 2 a 5 consultas utilizando:

- SELECT com JOIN  
- WHERE  
- ORDER BY  
- LIMIT  
- Filtros e ordenações relevantes  

---

### **update_delete.sql — Atualizações e Remoções**
Inclui ao menos:

- 3 comandos `UPDATE` com condições  
- 3 comandos `DELETE` com condições  

---
