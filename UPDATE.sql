-- DML - Data Manipulation Language --

# Atualiza a tabela configurando o novo valor da columa enquanto o 
UPDATE cursos SET nome = 'HTML5' WHERE id_curso = '1';
UPDATE cursos SET nome = 'PHP', ano = '2015' WHERE id_curso = '4';
UPDATE cursos SET nome = 'Java', ano = '2015', carga = '40' WHERE id_curso = '5' LIMIT 1;
UPDATE cursos SET ano = '2018', carga = '0' WHERE ano = '2050' LIMIT 1;
