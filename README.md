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

## Como Executar

1. Instalar o SQLite (caso não tenha)

  '''- Linux (Ubuntu/Debian): sudo apt install sqlite3'''

  '''- Windows: baixar o executável em https://www.sqlite.org/download.html'''

 ''' - macOS: brew install sqlite'''

2. Acessar a pasta do projeto

  Entre no diretório onde estão os arquivos:
  
  - cd biblioteca-db

3. Criar o banco de dados no SQLite

  Digite no terminal:
  
 ''' - sqlite3 biblioteca.db'''
  
  Isso abrirá o console do SQLite e criará o arquivo do banco.

4. Executar o script de criação das tabelas

  Dentro do SQLite, rode:

  '''.read sql/create.sql'''

5. Inserir os dados iniciais

  Ainda no SQLite, rode:

  '''.read sql/insert.sql'''

6. Executar as consultas de exemplo

  '''.read sql/select.sql'''

7. Executar os comandos de UPDATE e DELETE
  
  '''.read sql/update_delete.sql'''

8. Para reconstruir:

  ''' - .read sql/create.sql'''
  .read sql/insert.sql'''

9. Sair do SQLite

'''.exit'''
