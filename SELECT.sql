-- DQL - Data Query Language --

# Seleciona todos os registro da tabela
SELECT * FROM pessoas;
SELECT * FROM gafanhotos;
SELECT * FROM cursos;

# Selecione todos os registros ordenado (desc = decrecente / asc = acendente)
SELECT * FROM cursos ORDER BY nome ASC;

# Selecione os registros filtrados com ordenado (Padrão - asc = acendente)
SELECT nome, ano , carga FROM cursos ORDER BY nome;

# Selecione todos os registros enquanto .. ordenado (Padrão - asc = acendente)
SELECT * FROM cursos WHERE ano = '2017' ORDER BY nome;

# Selecione todos os registros enquanto .. ser entre .. e .. com ordenações (desc = decrecente / asc = acendente)
SELECT * FROM cursos WHERE ano BETWEEN 2007 AND 2017 ORDER BY ano desc, nome asc;

# Selecione todos os registros enquanto .. está em .. com ordenações (desc = decrecente / asc = acendente)
SELECT * FROM cursos WHERE ano IN (2016,2017) ORDER BY ano desc, nome asc;

# Selecione todos os registros enquanto .. e enqunto .. 
SELECT * FROM cursos WHERE carga > 35 AND totaulas < 30;

# Selecione todos os registros enquanto .. ou enqunto .. 
SELECT * FROM cursos WHERE carga > 35 OR totaulas < 30;

# Selecione todos os registros enquanto .. seja parecido com .. no inicio(% = coringa - vale por qualquer caracter) 
SELECT * FROM cursos WHERE nome LIKE 'p%';

/* Selecione todos os registros enquanto .. não seja parecido com .. no inicio e final
(% = coringa - vale por qualquer caracter) */
SELECT * FROM cursos WHERE nome NOT LIKE '%a%';

/* Selecione todos os registros enquanto .. seja parecido com .. no inicio e final e qualquer caractere no final
( % = coringa - vale por qualquer caracter)
( _ = corringa - exige ter algum caractere) */
SELECT * FROM cursos WHERE nome LIKE 'ph%p_';

# Seleciona registro sem repetições ( distinguindo ocorrencias repetidas )
SELECT DISTINCT nacionalidade FROM gafanhotos;

# Seleciona todos registro fazendo a contagem deles
SELECT COUNT(*) FROM gafanhotos;

# Seleciona o maior valor de todos os registros de
SELECT MAX(carga) FROM cursos;

# Seleciona o menor valor de todos os registros de
SELECT MIN(carga) FROM cursos;

# Seleciona somatorio de todos os registros de
SELECT SUM(totaulas) FROM cursos;

# Seleciona a media de todos os registros de
SELECT AVG(totaulas) FROM cursos;

# Selecione total de aulas contabilizando quantas ocorrencias agrupando por
SELECT totaulas, COUNT(*) FROM cursos
GROUP BY totaulas;

/* Selecione o ano contabilizando quantas ocorrencias agrupando por ..
tendo a contabilização de ocorrencias maior que 5 
(HAVING = pode user usado pelo grupo */
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano HAVING COUNT(ano) >= 5;

/*	Seleciona a carga contabilizando quantas ocorrencias de .. enquanto .. agrupado por ..
sendo .. ( select ..)	*/
SELECT carga, COUNT(*) FROM cursos WHERE ano > 2015 GROUP BY carga 
HAVING carga > (SELECT AVG(carga) FROM cursos);

/* Seleciona registros da tabela .. juntando com tabela .. ligando as chaves primaria*/
SELECT gafanhotos.nome, cursos.nome, cursos.ano 
FROM gafanhotos JOIN cursos 
ON cursos.idcurso =  gafanhotos.cursopreferido;

/* Seleciona registros da tabela .. juntando com tabela .. 
dando apelidos as tabelas .. ligando as chaves primaria
(AS = apelida tabelas) (INNER JOIN = seleciona somente os registro com ligações) */
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g INNER JOIN cursos AS c 
ON c.idcurso =  g.cursopreferido;

/* Seleciona registros da tabela .. juntando com tabela .. 
dando apelidos as tabelas .. ligando as chaves primaria
(AS = apelida tabelas) (LEFT JOIN = seleciona todos registro com ligações da tabela a esquerda) */
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g LEFT JOIN cursos AS c 
ON c.idcurso =  g.cursopreferido;

/* Seleciona registros da tabela .. juntando com tabela .. 
dando apelidos as tabelas .. ligando as chaves primaria
(AS = apelida tabelas) (RIGHT JOIN = seleciona todos registro com ligações da tabela a direita) */
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g RIGHT JOIN cursos AS c 
ON c.idcurso =  g.cursopreferido;

/* Selecione pelos .. da tabela .. juntando a .. dando apelido de .. juntando a tabela .. */
SELECT g.nome, c.nome FROM gafanhotos AS g JOIN gafanhoto_assiste_curso AS a
ON g.id = a.idgafanhoto
INNER JOIN cursos c
ON c.idcurso = a.idcurso; 





















































































