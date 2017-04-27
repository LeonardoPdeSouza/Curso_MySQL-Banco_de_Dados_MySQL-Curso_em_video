-- DDL - Data Definition Language --

# Criar banco de dados
CREATE DATABASE cadastro;

# Criar tabela - definição 1
CREATE TABLE pessoas (
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nascionalidade varchar(20)
);

# Criar banco de dados com codificação de caracteres e collation padrão
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

# Criar tabela com codificação de caracteres - definição 2
CREATE TABLE pessoas (
id int NOT NULL AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nascionalidade varchar(20) DEFAULT 'Brasil',
PRIMARY KEY(id)
) DEFAULT CHARSET = utf8;

# Cria uma tabela se ela não existir
CREATE TABLE IF NOT EXISTS cursos (
nome varchar(30) NOT NULL UNIQUE, #unico
descricao text,
carga int UNSIGNED, # remove sinal
total_aula int UNSIGNED,
ano year DEFAULT '2017'
) DEFAULT CHARSET = utf8;

CREATE TABLE gafanhoto_assiste_curso (
id int NOT NULL AUTO_INCREMENT,
data date,
idgafanhoto int,
idcurso int,
PRIMARY KEY(id),
FOREIGN KEY(idgafanhoto) REFERENCES gafanhotos(id),
FOREIGN KEY(idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;











































































































































