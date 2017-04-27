-- DML - Data Manipulation Language --

# inserir dados na tabela
INSERT INTO pessoas(nome, nascimento, sexo, peso, altura, nascionalidade)
values('Leonardo', '1994-10-10', 'M', '62.5', '1.72', 'Brasil');

INSERT INTO pessoas(id, nome, nascimento, sexo, peso, altura, nascionalidade)
values(DEFAULT, 'Luciele', '1999-09-28', 'F', '58.5', '1.70', DEFAULT);

INSERT INTO pessoas values(DEFAULT, 'Joruto', '2001-12-26', 'M', '40', '1.72', DEFAULT);

INSERT INTO pessoas values
(DEFAULT, 'Fabio', '1985-01-02', 'M', '65', '1.72', 'Argentina'),
(DEFAULT, 'Katia', '1966-03-04', 'F', '78', '1.68', 'EUA'),
(DEFAULT, 'Fernando', '1961-05-06', 'M', '86', '1.71', 'Paraguai');

INSERT INTO cursos VALUES
('1','HTML4','Curso HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Protoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscrítos','5','2','2018');

INSERT INTO gafanhoto_assiste_curso values (DEFAULT, '1994-10-10', '1', '2');













































































































































