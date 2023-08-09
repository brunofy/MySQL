/*Criar bases) de dados*/
/*No MySQL*/
/*Mostrar bases de dados existentes*/
Show databases;

/*Exercício 3*/
/*Pergunta 1*/
Create database Firma;

/*Pergunta 2*/
/*Usar uma base de dados*/
Use Firma;

/*Pergunta 3*/
/*Criar a tabela cliente*/
create table Cliente(
	Nome Varchar(30),
	Sexo Char(1),
	Email Varchar(30),
	Nif Char(9),
	Telefone Varchar(30),
	Endereço Varchar(100)
	);
	
/*Pergunta 4*/
/*Ver as tabelas existentes*/
show tables;

/*Puergunta 5*/
/*Mostrar a descrição da tabela*/
desc cliente;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Nome      | varchar(30)  | YES  |     | NULL    |       |
| Sexo      | char(1)      | YES  |     | NULL    |       |
| Email     | varchar(30)  | YES  |     | NULL    |       |
| Nif       | char(9)      | YES  |     | NULL    |       |
| Telefone  | varchar(30)  | YES  |     | NULL    |       |
| Endereço  | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+

/*Pergunta 6*/
/*utilizar a base de dados firma*/
use firma;
/*inserir os registos na tabela cliente*/
/*sem enumerar os nomes dos campos*/
insert into Cliente Value
('João','M','joao@gmail.com',199999854,'962352333','Rua do Cerco - Porto');

insert into Cliente Value
('Celia','F','celia@gmail.com',188555258,'935658987','Rua do Chelo - Braga'),
('Jorge','M',Null,155256458,'918562321','Rua do Bom Retiro - Penafiel');

/*Inserir os registos na tabela cliente*/
/*enumerando os nomes dos campos*/

insert into Cliente (Nome,Sexo,Endereço,Nif) values
('Liliana','F','Rua Senador Machado Soares - Lisboa',111222333);

/*Fim do Exercício 3*/

/*Exercício 4*/
/*Pergunta 1*/

/*Mostrar todas as bases*/
show databases;

/*Pergunta 2*/
/*Selecionar ou usar a base de dados Firma*/
use firma;

/*Pergunta 3*/
/*Mostrar tabelas que constituem uma base de dados*/
show tables;
+-----------------+
| Tables_in_firma |
+-----------------+
| cliente         |
+-----------------+

/*Pergunta 4*/
/*Mostra a estrutura da tabela cliente*/
desc cliente;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Nome      | varchar(30)  | YES  |     | NULL    |       |
| Sexo      | char(1)      | YES  |     | NULL    |       |
| Email     | varchar(30)  | YES  |     | NULL    |       |
| Nif       | char(9)      | YES  |     | NULL    |       |
| Telefone  | varchar(30)  | YES  |     | NULL    |       |
| Endereço  | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+

/*Numa base de dados posso fazer Projeção, Seleção, Junção*/
/*O comando Select faz a projeçáo de dados no ecrã*/


/*Pergunta 5*/
/*Mostre a data e a hora atual*/
select now();
+---------------------+
| now()               |
+---------------------+
| 2023-06-19 20:43:46 |
+---------------------+
1 row in set (0.00 sec)

/*Pergunta 6*/
/*Mostre a data e a hora atual substituindo o campo now pelo texto data_hora*/
Select now() as data_hora;
+---------------------+
| data_hora           |
+---------------------+
| 2023-06-19 20:46:40 |
+---------------------+


/*Pergunta 7*/
/*Mostre a data e a hora atual substituindo o campo now pelo texto data_hora
mostrar ainda uma coluna com o nome do utilizador e o cargo*/
Select now() as data_hora, 'Eduardo Fernandes' as Formando;
+---------------------+-------------------+
| data_hora           | Formando          |
+---------------------+-------------------+
| 2023-06-19 21:13:44 | Eduardo Fernandes |
+---------------------+-------------------+


/*Pergunta 8*/
/*Mostre todos os campos da tabela cliente*/
select * from cliente;
+---------+------+-----------------+-----------+-----------+-------------------------------------+
| Nome    | Sexo | Email           | Nif       | Telefone  | Endereço                            |
+---------+------+-----------------+-----------+-----------+-------------------------------------+
| João    | M    | joao@gmail.com  | 199999854 | 962352333 | Rua do Cerco - Porto                |
| Celia   | F    | celia@gmail.com | 188555258 | 935658987 | Rua do Chelo - Braga                |
| Jorge   | M    | NULL            | 155256458 | 918562321 | Rua do Bom Retiro - Penafiel        |
| Liliana | F    | NULL            | 111222333 | NULL      | Rua Senador Machado Soares - Lisboa |
+---------+------+-----------------+-----------+-----------+-------------------------------------+

/*Pergunta 9*/
/*Na tabela cliente mostrar os cmapos Nome, Sexo, Email*/
select Nome, Sexo, Email from cliente;
+---------+------+-----------------+
| Nome    | Sexo | Email           |
+---------+------+-----------------+
| João    | M    | joao@gmail.com  |
| Celia   | F    | celia@gmail.com |
| Jorge   | M    | NULL            |
| Liliana | F    | NULL            |
+---------+------+-----------------+

/*Pergunta 10*/
/*Na tabela cliente mostrar os cmapos Nome, Sexo, Email mas o nome aparece como cliente*/
Select Nome as Cliente, Sexo, Email from cliente;
+---------+------+-----------------+
| Cliente | Sexo | Email           |
+---------+------+-----------------+
| João    | M    | joao@gmail.com  |
| Celia   | F    | celia@gmail.com |
| Jorge   | M    | NULL            |
| Liliana | F    | NULL            |
+---------+------+-----------------+

/*Pergunta 11*/

select now() as data_hora, 'Ana Marques' as Secretária, Nome, Sexo, Email, endereço from Cliente;
+---------------------+-------------+---------+------+-----------------+-------------------------------------+
| data_hora           | Secretária  | Nome    | Sexo | Email           | endereço                            |
+---------------------+-------------+---------+------+-----------------+-------------------------------------+
| 2023-06-19 21:43:11 | Ana Marques | João    | M    | joao@gmail.com  | Rua do Cerco - Porto                |
| 2023-06-19 21:43:11 | Ana Marques | Celia   | F    | celia@gmail.com | Rua do Chelo - Braga                |
| 2023-06-19 21:43:11 | Ana Marques | Jorge   | M    | NULL            | Rua do Bom Retiro - Penafiel        |
| 2023-06-19 21:43:11 | Ana Marques | Liliana | F    | NULL            | Rua Senador Machado Soares - Lisboa |
+---------------------+-------------+---------+------+-----------------+-------------------------------------+

/*Pergunta 12*/
/*Na tabela cliente mostrar os campos Nome, Email onde o sexo seja M*/
select Nome, Sexo, Email from cliente 
where Sexo = 'M';
+-------+------+----------------+
| Nome  | Sexo | Email          |
+-------+------+----------------+
| João  | M    | joao@gmail.com |
| Jorge | M    | NULL           |
+-------+------+----------------+

/*Pergunta 13*/
/*Na tabela cliente mostrar os campos Nome, Email onde o sexo seja F*/
select Nome, Email from cliente 
where Sexo = 'F';
+---------+-----------------+
| Nome    | Email           |
+---------+-----------------+
| Celia   | celia@gmail.com |
| Liliana | NULL            |
+---------+-----------------+


/*Pergunta 14*/
/*Abordagem errada*/
select Nome, Endereço from cliente
where endereço = 'Braga';

/*Abordagem Certa*/
select Nome, Endereço from cliente
where endereço like '%Braga%';
+-------+----------------------+
| Nome  | Endereço             |
+-------+----------------------+
| Celia | Rua do Chelo - Braga |
+-------+----------------------+

/*Pergunta 15*/
/*Da Tabela cliente mostre todos os campos para o clinete Jorge mostre ainda a data e hora da consulta*/ 
select now()as data_hora, Nome, Sexo, Email, Telefone, Nif, Endereço from cliente
where nome = 'Jorge';
+---------------------+-------+------+-------+-----------+-----------+------------------------------+
| data_hora           | Nome  | Sexo | Email | Telefone  | Nif       | Endereço                     |
+---------------------+-------+------+-------+-----------+-----------+------------------------------+
| 2023-06-19 22:15:36 | Jorge | M    | NULL  | 918562321 | 155256458 | Rua do Bom Retiro - Penafiel |
+---------------------+-------+------+-------+-----------+-----------+------------------------------+

select now()as 'Data Hora', Nome, Sexo, Email, Telefone, Nif, Endereço from cliente
where nome = 'Jorge';
+---------------------+-------+------+-------+-----------+-----------+------------------------------+
| Data Hora           | Nome  | Sexo | Email | Telefone  | Nif       | Endereço                     |
+---------------------+-------+------+-------+-----------+-----------+------------------------------+
| 2023-06-19 22:21:03 | Jorge | M    | NULL  | 918562321 | 155256458 | Rua do Bom Retiro - Penafiel |
+---------------------+-------+------+-------+-----------+-----------+------------------------------+

/*fim do exercicio 4*/

/*Exercício 5*/
/*Pergunta 1*/
use firma;
Create table dados(
	Cod_Dados Int not null Auto_Increment,
	Nome Varchar(30),
	Nif Char(9),
	Primary key (Cod_Dados),
	Unique Key a (Nif)
	);
	
	
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| Cod_Dados | int(11)     | NO   | PRI | NULL    | auto_increment |
| Nome      | varchar(30) | YES  |     | NULL    |                |
| Nif       | char(9)     | YES  | UNI | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

/*Pergunta 2*/
/*Inserir Elementos na tabela dados*/
Insert into dados (Nome, Nif) VALUES
('Joana', 111222333),
('Ana', 111222331),
('Maria', 111558882),
('Antero', 111222355);

Select * from dados;

+-----------+--------+-----------+
| Cod_Dados | Nome   | Nif       |
+-----------+--------+-----------+
|         1 | Joana  | 111222333 |
|         2 | Ana    | 111222331 |
|         3 | Maria  | 111558882 |
|         4 | Antero | 111222355 |
+-----------+--------+-----------+


/*Pergunta 3*/
/*Inserir elemtnos na tabela dados utilizando o campo cod_dados*/
Insert into dados (Cod_dados, Nome, Nif) VALUES
(default, 'Pedro', 111255333);

/*Pergunta 5*/
/*Inserir dados testando o campo para o NIF*/
/*errada*/
Insert into dados (Cod_dados, Nome, Nif) VALUES
(default, 'Julio', 111255333);

/*correta*/
Insert into dados (Cod_dados, Nome, Nif) VALUES
(default, 'Julio', 111255331);

/*Pergunta 6*/

select *from dados;
+-----------+--------+-----------+
| Cod_Dados | Nome   | Nif       |
+-----------+--------+-----------+
|         1 | Joana  | 111222333 |
|         2 | Ana    | 111222331 |
|         3 | Maria  | 111558882 |
|         4 | Antero | 111222355 |
|         5 | Pedro  | 111255333 |
|         7 | Julio  | 111255331 |
+-----------+--------+-----------+


/*Pergunta 7*/
/*Inserir a coluna Profissão na tabela dados campo com um maximo de 10 carateres*/

Alter table dados
add column Profissão Varchar(10);
/*Pergunta 8 e 9*/
desc dados;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| Cod_Dados  | int(11)     | NO   | PRI | NULL    | auto_increment |
| Nome       | varchar(30) | YES  |     | NULL    |                |
| Nif        | char(9)     | YES  | UNI | NULL    |                |
| Profissão  | varchar(10) | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

select * from dados;
+-----------+--------+-----------+------------+
| Cod_Dados | Nome   | Nif       | Profissão  |
+-----------+--------+-----------+------------+
|         1 | Joana  | 111222333 | NULL       |
|         2 | Ana    | 111222331 | NULL       |
|         3 | Maria  | 111558882 | NULL       |
|         4 | Antero | 111222355 | NULL       |
|         5 | Pedro  | 111255333 | NULL       |
|         7 | Julio  | 111255331 | NULL       |
+-----------+--------+-----------+------------+


/*Apagar uma coluna, coluna profissão*/
Alter table dados
drop column Profissão;

/*Pergunta 10*/
desc dados;
select * from dados;

/*Pergunta 11*/
/*Criar uma coluna Apelido depois da coluna nome com o máximo
de 10 carateres*/
Alter table dados
add column Apelido Varchar(10) after Nome;

/*Pergunta 12*/

desc dados;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| Cod_Dados | int(11)     | NO   | PRI | NULL    | auto_increment |
| Nome      | varchar(30) | YES  |     | NULL    |                |
| Apelido   | varchar(10) | YES  |     | NULL    |                |
| Nif       | char(9)     | YES  | UNI | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
select * from dados;
+-----------+--------+---------+-----------+
| Cod_Dados | Nome   | Apelido | Nif       |
+-----------+--------+---------+-----------+
|         1 | Joana  | NULL    | 111222333 |
|         2 | Ana    | NULL    | 111222331 |
|         3 | Maria  | NULL    | 111558882 |
|         4 | Antero | NULL    | 111222355 |
|         5 | Pedro  | NULL    | 111255333 |
|         7 | Julio  | NULL    | 111255331 |
+-----------+--------+---------+-----------+



/*Pergunta 13*/
/*Acrecentar a coluna codigo a 1º posiçao da tabela dados*/
Alter table dados
add column Codigo char(3);

/*pergunta 18*/
/* inserir os sobrenomes na tabela dados*/
update dados
set sobrenome = 'Nogueira'
Where cod_dados = 1;

update dados
set sobrenome = 'Silva'
Where Nome = 'Julio'
limit 1;


























