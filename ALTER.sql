-- DDL - Data Definition Language --

# Altera tabela adicionando coluna
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

# Altera tabela removendo coluna
ALTER TABLE pessoas
DROP COLUMN profissao;

# Altera tabela adicionando coluna depois de
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;

# Altera tabela adicionando coluna primeira possição
ALTER TABLE pessoas ADD COLUMN codigo int FIRST;
ALTER TABLE cursos ADD COLUMN id_curso int FIRST;

# Altera tabela modificando coluna
ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(30);

# Altera tabela mudando coluna (podendo trocar nome da coluna)
ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(30);

# Mudar nome da tabela
ALTER TABLE pessoas
RENAME TO gafanhotos;

# Alterar tabela adicionando uma chave primaria
ALTER TABLE cursos ADD PRIMARY KEY (id_curso);

# Alterar tabela adicionando uma coluna
ALTER TABLE gafanhotos ADD COLUMN cursopreferido int;

# Alterar tabela adicionando uma chave estrangeira
ALTER TABLE gafanhotos ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(id_curso);

























































































































































