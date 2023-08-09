/*Criar bases de dados*/
/*No MySQL*/
/*Mostrar bases de dados existentes*/
Show databases;

/*Exercício 3*/
/*Pergunta 1*/
/*Criar base de dados*/
Create database Firma;

/*Pergunta 2*/
/*usar uma base de dados*/
use firma;

/*Pergunta 3*/
/*criar a tabela cliente*/
create table Cliente(
	Nome Varchar(30),
	Sexo Char(1),
	Email Varchar(30),
	Nif char(9),
	Telefone Varchar(30),
	Endereço Varchar(100)
	);
 
/*Pergunta 4*/

/*ver as tabelas existentes*/
show tables;

/*Pergunta 5*/
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
/*Inserir os registos na tabela cliente*/
/*sem enumerar os nomes dos campos*/
insert into Cliente Values('João', 'M', 'joao@gmail', 199999854,
'962352333','Rua do Cerco - Porto');

insert into Cliente Values
('Célia', 'F', 'celia@gmail', 188555258, '935658987', 'Rua do Chelo - Braga'),
('Jorge', 'M', Null, 155256458, '918562321', 'Rua do Bom Retiro - Penafiel');

/*Inserir os registos na tabela cliente*/
/*enumerando os nomes dos campos*/

insert into Cliente (Nome, Sexo, Endereço, Nif) values
('Liliana', 'F', 'Rua Senador Machado Soares - Lisboa', 111222333);

/*Fim do Exercício 3*/

/*Exercício 4*/
/*Pergunta 1*/

/*Mostrar todas as base de dados*/
show databases; 

/*Pergunta 2*/
/*Selecionar ou usar a base de dados Firma*/
use firma;

/*Pergunta 3*/
/*mostrar tabelas que constituem uma base de dados*/
show tables;
+-----------------+
| Tables_in_firma |
+-----------------+
| cliente         |
+-----------------+

/*Pergunta 4*/
/*Mostrar a estrutura da tabela cliente*/
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
/*O Comando Select - faz a projeção de dados no ecrã*/

/*Pergunta 5*/
/*Mostre a data e a hora atual*/
Select now();
+---------------------+
| now()               |
+---------------------+
| 2023-06-19 20:43:22 |
+---------------------+

/*Pergunta 6*/
/*Mostre a data e a hora atual substituindo o campo now pelo texto data_hora*/
Select now() as data_hora;
+---------------------+
| data_hora           |
+---------------------+
| 2023-06-19 20:46:38 |
+---------------------+

/*Pergunta 7*/
/*Mostre a data e a hora atual substituindo o campo now pelo texto data_hora
mostre ainda una coluna com o nome do utilizador e o cargo*/
Select now() as data_hora, 'Luis Vieira' as Formador;
+---------------------+-------------+
| data_hora           | Formador    |
+---------------------+-------------+
| 2023-06-19 21:13:39 | Luis Vieira |
+---------------------+-------------+

/*Pergunta 8*/
/*mostra todos os campos da tabela cliente*/

select * from cliente;
+---------+------+-------------+-----------+-----------+-------------------------------------+
| Nome    | Sexo | Email       | Nif       | Telefone  | Endereço                            |
+---------+------+-------------+-----------+-----------+-------------------------------------+
| João    | M    | joao@gmail  | 199999854 | 962352333 | Rua do Cerco - Porto                |
| Célia   | F    | celia@gmail | 188555258 | 935658987 | Rua do Chelo - Braga                |
| Jorge   | M    | NULL        | 155256458 | 918562321 | Rua do Bom Retiro - Penafiel        |
| Liliana | F    | NULL        | 111222333 | NULL      | Rua Senador Machado Soares - Lisboa |
+---------+------+-------------+-----------+-----------+-------------------------------------+

/*Pergunta 9*/
/*Na tabela cliente mostrar os campos Nome, Sexo, Email*/
select Nome, Sexo, Email from cliente;
+---------+------+-------------+
| Nome    | Sexo | Email       |
+---------+------+-------------+
| João    | M    | joao@gmail  |
| Célia   | F    | celia@gmail |
| Jorge   | M    | NULL        |
| Liliana | F    | NULL        |
+---------+------+-------------+

/*Pergunta 10*/
/*Na tabela cliente mostrar os campos Nome, Sexo, Email mas o campo nome
aparece como Cliente*/
select Nome as Cliente, Sexo, Email from cliente;
+---------+------+-------------+
| Cliente | Sexo | Email       |
+---------+------+-------------+
| João    | M    | joao@gmail  |
| Célia   | F    | celia@gmail |
| Jorge   | M    | NULL        |
| Liliana | F    | NULL        |
+---------+------+-------------+
/*Pergunta 11*/
select now() as data_hora, 'Ana Marques' as Secretária, Nome, Sexo, Email, endereço
from Cliente;
+---------------------+-------------+---------+------+-------------+-------------------------------------+
| data_hora           | Secretária  | Nome    | Sexo | Email       | endereço                            |
+---------------------+-------------+---------+------+-------------+-------------------------------------+
| 2023-06-19 21:43:00 | Ana Marques | João    | M    | joao@gmail  | Rua do Cerco - Porto                |
| 2023-06-19 21:43:00 | Ana Marques | Célia   | F    | celia@gmail | Rua do Chelo - Braga                |
| 2023-06-19 21:43:00 | Ana Marques | Jorge   | M    | NULL        | Rua do Bom Retiro - Penafiel        |
| 2023-06-19 21:43:00 | Ana Marques | Liliana | F    | NULL        | Rua Senador Machado Soares - Lisboa |
+---------------------+-------------+---------+------+-------------+-------------------------------------+

/*Pergunta 12*/
/*Na tabela cliente mostrar os campos Nome, Sexo, Email onde o sexo seja M*/
select Nome, Sexo, Email from cliente
Where Sexo = 'M';
+-------+------+------------+
| Nome  | Sexo | Email      |
+-------+------+------------+
| João  | M    | joao@gmail |
| Jorge | M    | NULL       |
+-------+------+------------+

/*Pergunta 13*/
/*Na tabela cliente mostrar os campos Nome, Sexo, Email onde o sexo seja F,
Mas sem mostrar o campo/coluna sexo*/
select Nome,Email from cliente
Where Sexo = 'F';
+---------+-------------+
| Nome    | Email       |
+---------+-------------+
| Célia   | celia@gmail |
| Liliana | NULL        |
+---------+-------------+

/*Pergunta 14*/
/*Abordagem errada*/
Select Nome, Endereço from Cliente
Where endereço = 'Braga';

/*Abordagem Certa*/
Select Nome, Endereço from Cliente
Where endereço like '%Braga%';
+--------+----------------------+
| Nome   | Endereço             |
+--------+----------------------+
| Célia  | Rua do Chelo - Braga |
+--------+----------------------+

/*Pergunta 15*/
/*Da tabela cliente mostre todos os campos para o cliente Jorge mostre ainda
a data e hora da consulta.*/
select now()as data_hora, Nome, Sexo, Email, Telefone, Nif, Endereço from cliente
where nome = 'Jorge';

select now()as 'Data Hora', Nome, Sexo, Email, Telefone, Nif, Endereço from cliente
where nome = 'Jorge' and nif = 155256458;
+---------------------+-------+------+-------+-----------+-----------+------------------------------+
| data hora           | Nome  | Sexo | Email | Telefone  | Nif       | Endereço                     |
+---------------------+-------+------+-------+-----------+-----------+------------------------------+
| 2023-06-19 22:17:08 | Jorge | M    | NULL  | 918562321 | 155256458 | Rua do Bom Retiro - Penafiel |
+---------------------+-------+------+-------+-----------+-----------+------------------------------+

/*Fim do Exercício do 4*/

/*Exercício 5*/
/*Pergunta 1*/
use firma;
Create table dados (
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
/*Inserir elementos na tabela dados*/
Insert into dados (Nome, Nif) VALUES
('Joana', 111222333),
('Ana', 111222331),
('Alice', 111222354),
('Maria', 111558882),
('Antero', 111222355);

select * from dados;
+-----------+--------+-----------+
| Cod_Dados | Nome   | Nif       |
+-----------+--------+-----------+
|         1 | Joana  | 111222333 |
|         2 | Ana    | 111222331 |
|         3 | Alice  | 111222354 |
|         4 | Maria  | 111558882 |
|         5 | Antero | 111222355 |
+-----------+--------+-----------+

/*Pergunta 3*/
/*Inserir elementos na tabela dados utilizando o campo cod_dados*/
Insert into dados (Cod_dados, Nome, Nif) VALUES
(default, 'Pedro', 111255333);

/*Pergunta 4*/
select * from dados;
+-----------+--------+-----------+
| Cod_Dados | Nome   | Nif       |
+-----------+--------+-----------+
|         1 | Joana  | 111222333 |
|         2 | Ana    | 111222331 |
|         3 | Alice  | 111222354 |
|         4 | Maria  | 111558882 |
|         5 | Antero | 111222355 |
|         6 | Pedro  | 111255333 |
+-----------+--------+-----------+

/*Pergunta 5*/
/*Inserir dodos testando o campo unico para o NIF*/
/*Com erro*/
Insert into dados (Cod_dados, Nome, Nif) VALUES
(default, 'Julio', 111255333);

/*sem erro*/
Insert into dados (Cod_dados, Nome, Nif) VALUES
(default, 'Julio', 111255331);

/*Pergunta 6*/
select * from dados;
+-----------+--------+-----------+
| Cod_Dados | Nome   | Nif       |
+-----------+--------+-----------+
|         1 | Joana  | 111222333 |
|         2 | Ana    | 111222331 |
|         3 | Alice  | 111222354 |
|         4 | Maria  | 111558882 |
|         5 | Antero | 111222355 |
|         6 | Pedro  | 111255333 |
|         8 | Julio  | 111255331 |
+-----------+--------+-----------+

/*Pergunta 7*/
/*Inserir a coluna Profissão na tabela dados campo com um máximo de 10 carateres*/

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


Select * from dados;
+-----------+--------+-----------+------------+
| Cod_Dados | Nome   | Nif       | Profissão  |
+-----------+--------+-----------+------------+
|         1 | Joana  | 111222333 | NULL       |
|         2 | Ana    | 111222331 | NULL       |
|         3 | Alice  | 111222354 | NULL       |
|         4 | Maria  | 111558882 | NULL       |
|         5 | Antero | 111222355 | NULL       |
|         6 | Pedro  | 111255333 | NULL       |
|         8 | Julio  | 111255331 | NULL       |
+-----------+--------+-----------+------------+

/*Pergunta 10*/
/*Apagar uma coluna, coluna profissão*/

Alter table dados
drop column Profissão;

desc dados;
select * from dados;

/*Pergunta 11*/
/*Criar uma coluna Aplido depois da coluna nome com o máximo de 10 carateres*/
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
|         3 | Alice  | NULL    | 111222354 |
|         4 | Maria  | NULL    | 111558882 |
|         5 | Antero | NULL    | 111222355 |
|         6 | Pedro  | NULL    | 111255333 |
|         8 | Julio  | NULL    | 111255331 |
+-----------+--------+---------+-----------+

/*Pergunta 13*/
/*Acrescentar a coluna código a 1º posição da tabela dados*/
Alter table dados
add column Codigo char(3) first; 

/*Pergunta 14*/

desc dados;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| Codigo    | char(3)     | YES  |     | NULL    |                |
| Cod_Dados | int(11)     | NO   | PRI | NULL    | auto_increment |
| Nome      | varchar(30) | YES  |     | NULL    |                |
| Apelido   | varchar(10) | YES  |     | NULL    |                |
| Nif       | char(9)     | YES  | UNI | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

select * from dados;
+--------+-----------+--------+---------+-----------+
| Codigo | Cod_Dados | Nome   | Apelido | Nif       |
+--------+-----------+--------+---------+-----------+
| NULL   |         1 | Joana  | NULL    | 111222333 |
| NULL   |         2 | Ana    | NULL    | 111222331 |
| NULL   |         3 | Alice  | NULL    | 111222354 |
| NULL   |         4 | Maria  | NULL    | 111558882 |
| NULL   |         5 | Antero | NULL    | 111222355 |
| NULL   |         6 | Pedro  | NULL    | 111255333 |
| NULL   |         8 | Julio  | NULL    | 111255331 |
+--------+-----------+--------+---------+-----------+

/*Pergunta 15*/
/*Apagar a coluna codigo*/
Alter table dados
drop column codigo;

desc dados;
select * from dados;

/*Pergunta 16*/
/*Alterar a coluna Apelido para comprimento para 6*/
Alter table dados
modify column Apelido Varchar(6);

desc dados;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| Cod_Dados | int(11)     | NO   | PRI | NULL    | auto_increment |
| Nome      | varchar(30) | YES  |     | NULL    |                |
| Apelido   | varchar(6)  | YES  |     | NULL    |                |
| Nif       | char(9)     | YES  | UNI | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

/*Alterar a coluna Apelido para Sobrenome e comprimento para 16*/
Alter table dados
change column Apelido Sobrenome Varchar(16);

desc dados;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| Cod_Dados | int(11)     | NO   | PRI | NULL    | auto_increment |
| Nome      | varchar(30) | YES  |     | NULL    |                |
| Sobrenome | varchar(16) | YES  |     | NULL    |                |
| Nif       | char(9)     | YES  | UNI | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

/*Pergunta 17*/
Select * from dados;
+-----------+--------+-----------+-----------+
| Cod_Dados | Nome   | Sobrenome | Nif       |
+-----------+--------+-----------+-----------+
|         1 | Joana  | NULL      | 111222333 |
|         2 | Ana    | NULL      | 111222331 |
|         3 | Alice  | NULL      | 111222354 |
|         4 | Maria  | NULL      | 111558882 |
|         5 | Antero | NULL      | 111222355 |
|         6 | Pedro  | NULL      | 111255333 |
|         8 | Julio  | NULL      | 111255331 |
+-----------+--------+-----------+-----------+

/*Pergunta 18*/
/*Inserir os sobrenomes na tabela dados*/

update dados
set sobrenome = 'Nogueira'
Where Cod_dados = 1;

update dados
set sobrenome = 'Moço Bonito'
Where Nome = 'Julio'
limit 1;

Select * from dados;
+-----------+--------+--------------+-----------+
| Cod_Dados | Nome   | Sobrenome    | Nif       |
+-----------+--------+--------------+-----------+
|         1 | Joana  | Nogueira     | 111222333 |
|         2 | Ana    | NULL         | 111222331 |
|         3 | Alice  | NULL         | 111222354 |
|         4 | Maria  | NULL         | 111558882 |
|         5 | Antero | NULL         | 111222355 |
|         6 | Pedro  | NULL         | 111255333 |
|         8 | Julio  | Moço Bonito  | 111255331 |
+-----------+--------+--------------+-----------+
update dados
set sobrenome = 'Batista'
Where Nome = 'Ana'
limit 1;

update dados
set sobrenome = 'Ferreira'
Where Nome = 'Maria'
limit 1;

/*Pergunta 19*/

Insert into dados (cod_dados, Nome, Sobrenome, Nif) VALUES
(default, 'Antero', 'Frangueiro', 111255344);

/*Pergunta 20*/
/*Apagar um elemento de uma tabela*/

delete from dados 
where Cod_Dados = 9;

/*Fim do exercício 5*/

/*Exercício 6*/
/*Pergunta 1*/
create database Turismo;

/*Pergunta 2*/
use Turismo

/*Criar a tabela Cliente*/
Create table Cliente(
	Nr_Cliente Int Auto_Increment Primary Key Not Null,
	Nome Varchar(30) Not Null,
	Apelido Varchar (10) Not Null,
	Morada Varchar (50) Not Null,
	Telefone Char (11) Not Null,
	Data_Nascimento Date Not Null,
	Sexo enum('M','F')
	);

/*Pergunta 3*/

desc Cliente;

+-----------------+---------------+------+-----+---------+----------------+
| Field           | Type          | Null | Key | Default | Extra          |
+-----------------+---------------+------+-----+---------+----------------+
| Nr_Cliente      | int(11)       | NO   | PRI | NULL    | auto_increment |
| Nome            | varchar(30)   | NO   |     | NULL    |                |
| Apelido         | varchar(10)   | NO   |     | NULL    |                |
| Morada          | varchar(50)   | NO   |     | NULL    |                |
| Telefone        | char(11)      | NO   |     | NULL    |                |
| Data_Nascimento | date          | NO   |     | NULL    |                |
| Sexo            | enum('M','F') | YES  |     | NULL    |                |
+-----------------+---------------+------+-----+---------+----------------+

Alter table Cliente
change column Sexo Sexo enum('M', 'F') Not Null;
+-----------------+---------------+------+-----+---------+----------------+
| Field           | Type          | Null | Key | Default | Extra          |
+-----------------+---------------+------+-----+---------+----------------+
| Nr_Cliente      | int(11)       | NO   | PRI | NULL    | auto_increment |
| Nome            | varchar(30)   | NO   |     | NULL    |                |
| Apelido         | varchar(10)   | NO   |     | NULL    |                |
| Morada          | varchar(50)   | NO   |     | NULL    |                |
| Telefone        | char(11)      | NO   |     | NULL    |                |
| Data_Nascimento | date          | NO   |     | NULL    |                |
| Sexo            | enum('M','F') | NO   |     | NULL    |                |
+-----------------+---------------+------+-----+---------+----------------+

/*Pergunta 4*/
/*Inserir dados na tabela cliente*/
Insert Into Cliente Values
(Null, 'João Paulo', 'Santos', 'Rua Chá, 12', '215.236.138', 19580815, 'M'),
(Null, 'Maria Beatriz', 'Cardoso', 'Av. Lidador, 85', '221.978.125', 19401025, 'F'),
(Null, 'Tatiana', 'Azevedo', 'Av. Lisboa', '133.193.003', 19600101, 'F'),
(Null, 'José Alberto', 'Fangueiro', 'Rua da Praia 4', '253.215.362', 19801225, 'M');

/*Pergunta 5*/
select * from cliente;
+------------+---------------+-----------+-----------------+-------------+-----------------+------+
| Nr_Cliente | Nome          | Apelido   | Morada          | Telefone    | Data_Nascimento | Sexo |
+------------+---------------+-----------+-----------------+-------------+-----------------+------+
|          1 | João Paulo    | Santos    | Rua Chá, 12     | 215.236.138 | 1958-08-15      | M    |
|          2 | Maria Beatriz | Cardoso   | Av. Lidador, 85 | 221.978.125 | 1940-10-25      | F    |
|          3 | Tatiana       | Azevedo   | Av. Lisboa      | 133.193.003 | 1960-01-01      | F    |
|          4 | José Alberto  | Fangueiro | Rua da Praia 4  | 253.215.362 | 1980-12-25      | M    |
+------------+---------------+-----------+-----------------+-------------+-----------------+------+

/*Pergunta 6*/

Alter table Cliente
Add Column Nif char(10) After Apelido;

/*Inserindo Nifs para os clientes*/

update Cliente set Nif = 123123123 WHERE Nr_Cliente = 1;
update Cliente set Nif = 321321321 WHERE Nr_Cliente = 2;
update Cliente set Nif = 231213123 Where Nr_Cliente = 3;
update Cliente set Nif = 132132132 Where Nr_Cliente = 4;

/*Pergunta 7*/
/*Mostre todos os campos da tabela Cliente*/
+------------+---------------+-----------+-----------+-----------------+-------------+-----------------+------+
| Nr_Cliente | Nome          | Apelido   | Nif       | Morada          | Telefone    | Data_Nascimento | Sexo |
+------------+---------------+-----------+-----------+-----------------+-------------+-----------------+------+
|          1 | João Paulo    | Santos    | 123123123 | Rua Chá, 12     | 215.236.138 | 1958-08-15      | M    |
|          2 | Maria Beatriz | Cardoso   | 321321321 | Av. Lidador, 85 | 221.978.125 | 1940-10-25      | F    |
|          3 | Tatiana       | Azevedo   | 231213123 | Av. Lisboa      | 133.193.003 | 1960-01-01      | F    |
|          4 | José Alberto  | Fangueiro | 132132132 | Rua da Praia 4  | 253.215.362 | 1980-12-25      | M    |
+------------+---------------+-----------+-----------+-----------------+-------------+-----------------+------+

/*Fim do Exercício *6/

/*Algumas operações com datas*/
/*Calcular a idade de uma pessoa com duas datas tendo o ano como referência*/

select year("2023-06-22")- year("1913-10-19") As "A idade da pessoa é";
+----------------------+
| A idade da pessoa é  |
+----------------------+
|                  110 |
+----------------------+
/*Mostra a data atual*/
select curdate() as "Data Atual";


select Timestampdiff(year, "1913-10-19",curdate())as "A iadade da pessoa é";
+-----------------------+
| A iadade da pessoa é  |
+-----------------------+
|                   109 |
+-----------------------+

/*Exercício 7*/
/*Pergunta 1*/
use Turismo;

/*Pergunta 2*/
select * from cliente;
+------------+---------------+-----------+-----------+-----------------+-------------+-----------------+------+
| Nr_Cliente | Nome          | Apelido   | Nif       | Morada          | Telefone    | Data_Nascimento | Sexo |
+------------+---------------+-----------+-----------+-----------------+-------------+-----------------+------+
|          1 | João Paulo    | Santos    | 123123123 | Rua Chá, 12     | 215.236.138 | 1958-08-15      | M    |
|          2 | Maria Beatriz | Cardoso   | 321321321 | Av. Lidador, 85 | 221.978.125 | 1940-10-25      | F    |
|          3 | Tatiana       | Azevedo   | 231213123 | Av. Lisboa      | 133.193.003 | 1960-01-01      | F    |
|          4 | José Alberto  | Fangueiro | 132132132 | Rua da Praia 4  | 253.215.362 | 1980-12-25      | M    |
+------------+---------------+-----------+-----------+-----------------+-------------+-----------------+------+

/*Pergunta 3*/
/*A idade do Mateus que nasceu em 1983-07-15*/
select timestampdiff (year, "1983-07-15", curdate()) as "A idade do Mateus é:";

/*Pergunta 4*/
/*Calcular a idade das pessoas da tabela cliente*/
select Nome, timestampdiff(year, Data_Nascimento, Curdate()) as Idade 
from Cliente;
+---------------+-------+
| Nome          | Idade |
+---------------+-------+
| João Paulo    |    64 |
| Maria Beatriz |    82 |
| Tatiana       |    63 |
| José Alberto  |    42 |
+---------------+-------+

/*Pergunta 5*/
/*Calcular a idade das pessoas da tabela cliente com filtro ao nome do Cliente*/
select Nome, timestampdiff(year, Data_Nascimento, Curdate()) as Idade 
from Cliente
Where nome = "Tatiana" or nome = "João Paulo";
+-------------+-------+
| Nome        | Idade |
+-------------+-------+
| João Paulo  |    64 |
| Tatiana     |    63 |
+-------------+-------+

select Nome, timestampdiff(year, Data_Nascimento, Curdate()) as Idade 
from Cliente
Where nome like "%Paulo%"; /* % substitui qualquer coisa*/

+-------------+-------+
| Nome        | Idade |
+-------------+-------+
| João Paulo  |    64 |
+-------------+-------+

/*Pergunta 6*/
/*Calcular a idade das pessoas da tabela cliente com filtro a data de nascimento do
 Cliente*/
select Nome, timestampdiff(year, Data_Nascimento, Curdate()) as Idade 
from Cliente
Where year(data_nascimento) > 1958; 
+---------------+-------+
| Nome          | Idade |
+---------------+-------+
| Tatiana       |    63 |
| José Alberto  |    42 |
+---------------+-------+

/*Pergunta 7*/
/*Calcular a idade das pessoas em meses da tabela cliente*/ 
select Nome, timestampdiff(month, Data_Nascimento, Curdate()) as "Idade em Meses" 
from Cliente;
+---------------+----------------+
| Nome          | Idade em Meses |
+---------------+----------------+
| João Paulo    |            778 |
| Maria Beatriz |            992 |
| Tatiana       |            761 |
| José Alberto  |            510 |
+---------------+----------------+

/*Pergunta 8*/
/*Calcular a idade das pessoas em dias da tabela cliente*/ 
select Nome, timestampdiff(day, Data_Nascimento, Curdate()) as "Idade em Dias" 
from Cliente;
+---------------+---------------+
| Nome          | Idade em Dias |
+---------------+---------------+
| João Paulo    |         23691 |
| Maria Beatriz |         30194 |
| Tatiana       |         23187 |
| José Alberto  |         15523 |
+---------------+---------------+

select Nome, timestampdiff(hour, Data_Nascimento, Curtime()) as "Idade em Dias" 
from Cliente;
+---------------+---------------+
| Nome          | Idade em Dias |
+---------------+---------------+
| João Paulo    |        568605 |
| Maria Beatriz |        724677 |
| Tatiana       |        556509 |
| José Alberto  |        372573 |
+---------------+---------------+

/*Pergunta 9*/
/*O ano da data atual com 2 digitos*/
select date_format (curdate(), "%y") as "Ano";
+------+
| Ano  |
+------+
| 23   |
+------+

/*Pergunta 10*/
/*O ano da data 2021-06-15 com 2 digitos*/
/* Nota IMPORTANTE: a diferença entre a data de 2 e 4 digitos é o Y minusculo e maiusculo*/ 

select date_format ("2021-06-15", "%y") as "Ano";
+------+
| Ano  |
+------+
| 21   |
+------+

/*Pergunta 11*/
/*obter os anos das datas anteriores mas com 4 digitos*/

select date_format (curdate(), "%Y") as "Ano";
+------+
| Ano  |
+------+
| 2023 |
+------+

select date_format ("2021-06-15", "%Y") as "Ano";
+------+
| Ano  |
+------+
| 2021 |
+------+

/*Pergunta 12*/
/*vai converter a data 2021-06-15 no formato dd-mm-aaaa*/
select date_format("2021-06-15", "%d-%m-%Y") as "A data é";
+------------+
| A data é   |
+------------+
| 15-06-2021 |
+------------+

/*Pergunta 13*/
/*vai converter a data 2022-12-26 no formato dd-mm-aaaa com o mês por extenso*/
select date_format("2022-12-26", "%d-%M-%Y") as "A data é";
+------------------+
| A data é         |
+------------------+
| 26-December-2022 |
+------------------+

/*Pergunta 14*/
/*vai converter a data 2022-12-26 no formato dd-mm-aaaa com o mês por extenso
com o dia da semana no inicio da data*/
select date_format("2022-12-26", "%W,%d-%M-%Y") as "A data é";
+-------------------------+
| A data é                |
+-------------------------+
| Monday,26-December-2022 |
+-------------------------+

/*Pergunta 15*/
/*vai converter a data 2022-12-26 no formato dd-mm-aaaa com o mês abreviado
com o dia da semana no inicio da data*/
select date_format("2022-12-26", "%W,%d-%b-%Y") as "A data é";
+--------------------+
| A data é           |
+--------------------+
| Monday,26-Dec-2022 |
+--------------------+


/*vai converter a data 2022-12-26 no formato dd-mm-aaaa com o mês abreviado
com o dia da semana abreviado no inicio da data*/
select date_format("2022-12-26", "%a,%d-%b-%Y") as "A data é";
+-----------------+
| A data é        |
+-----------------+
| Mon,26-Dec-2022 |
+-----------------+

/*Pergunta 16*/
/*Aplicar os pontos anteriores a data atual*/

select date_format(curdate(), "%W,%d-%b-%Y") as "A data é";
+--------------------+
| A data é           |
+--------------------+
| Monday,26-Jun-2023 |
+--------------------+

select date_format(curdate(), "%a,%d-%b-%Y") as "A data é";

+-----------------+
| A data é        |
+-----------------+
| Mon,26-Jun-2023 |
+-----------------+

select date_format(curdate(), "%a,%d-%M-%Y") as "A data é";
+------------------+
| A data é         |
+------------------+
| Mon,26-June-2023 |
+------------------+

/*Pergunta 17*/
/*hh:mm:ss da data atual mostre como horas*/
select date_format(now(), "%H:%i:%S") as "A hora é";
+-----------+
| A hora é  |
+-----------+
| 22:11:51  |
+-----------+

/*Pergunta 18*/
select nome, date_format(Data_Nascimento, "%a,%d-%b-%Y") as "Data Nascimento",
timestampdiff(year, Data_Nascimento, curdate()) as "Idade" 
from cliente;
+---------------+-----------------+-------+
| nome          | Data Nascimento | Idade |
+---------------+-----------------+-------+
| João Paulo    | Fri,15-Aug-1958 |    64 |
| Maria Beatriz | Fri,25-Oct-1940 |    82 |
| Tatiana       | Fri,01-Jan-1960 |    63 |
| José Alberto  | Thu,25-Dec-1980 |    42 |
+---------------+-----------------+-------+

/*Pergunta 19*/
select nome, date_format(Data_Nascimento, "%a,%d-%b-%Y") as "Data Nascimento",
timestampdiff(year, Data_Nascimento, curdate()) as "Idade" 
from cliente
where Nome = "Maria Beatriz";
+---------------+-----------------+-------+
| nome          | Data Nascimento | Idade |
+---------------+-----------------+-------+
| Maria Beatriz | Fri,25-Oct-1940 |    82 |
+---------------+-----------------+-------+

/*Mostrar a idade  data de nascimento*/
select nome, date_format(Data_Nascimento, "%d-%m-%Y") as "Data Nascimento",
timestampdiff(year, Data_Nascimento, curdate()) as "Idade" 
from cliente;

+---------------+-----------------+-------+
| nome          | Data Nascimento | Idade |
+---------------+-----------------+-------+
| João Paulo    | 15-08-1958      |    64 |
| Maria Beatriz | 25-10-1940      |    82 |
| Tatiana       | 01-01-1960      |    63 |
| José Alberto  | 25-12-1980      |    42 |
+---------------+-----------------+-------+

/*Fim do Exercício 7*/

/*status*/
mysql> status
--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.7\bin\mysql.exe  Ver 14.14 Distrib 5.7.20, for Win32 (AMD64)

Connection id:          3
Current database:
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        ;
Server version:         5.7.20-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8
Db     characterset:    utf8
Client characterset:    utf8
Conn.  characterset:    utf8
TCP port:               3306
Uptime:                 38 min 36 sec

Threads: 1  Questions: 6  Slow queries: 0  Opens: 108  Flush tables: 1  Open tables: 101  Queries per second avg: 0.002
--------------


mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| firma              |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| turismo            |
| world              |
+--------------------+
8 rows in set (0.01 sec)

/*Exercicio 8*/

/*Pergunta 1*/
/*mostrar todos os utilizadores exitentes*/

select user from mysql.user; 

+---------------+
| user          |
+---------------+
| Aluno         |
| mysql.session |
| mysql.sys     |
| root          |
+---------------+
4 rows in set (0.01 sec)


use mysql;

Database changed

select user, host from user;

+---------------+-----------+
| user          | host      |
+---------------+-----------+
| Aluno         | %         |
| mysql.session | localhost |
| mysql.sys     | localhost |
| root          | localhost |
+---------------+-----------+
4 rows in set (0.00 sec)

/*Pergunta 2*/

select user, host from mysql.user; 

+---------------+-----------+
| user          | host      |
+---------------+-----------+
| Aluno         | %         |
| mysql.session | localhost |
| mysql.sys     | localhost |
| root          | localhost |
+---------------+-----------+
4 rows in set (0.00 sec)

select nome from firma.cliente;

+---------+
| nome    |
+---------+
| João    |
| Celia   |
| Jorge   |
| Liliana |
+---------+
4 rows in set (0.00 sec)

/*Pergunta 3*/
/* criar um utilizador Antero_Cunha com acesso local e senha Azul121*/

create user Antero_Cunha@localhost identified by 'Azul121';

Query OK, 0 rows affected (0.02 sec)

/*Pergunta 4*/
/* criar um utilizador Ana com acesso de qualquer terminal com senha 12345*/

create user Ana identified by '12345';

Query OK, 0 rows affected (0.00 sec)


/*Pergunta 5*/
/* criar um utilizador Andre com acesso no terminar local*/

create user Andre@localhost;

Query OK, 0 rows affected (0.00 sec)

/*Pergunta 6*/
/* criar uma pass para o Andre*/

set password for 'Andre'@'localhost'=password ('diadesol');

Query OK, 0 rows affected, 1 warning (0.00 sec)


/*Pergunta 7*/
/* mudar nome de Andre para renato */

rename user Andre@localhost to Renato@localhost;

Query OK, 0 rows affected (0.00 sec)

select user from mysql.user;

+---------------+
| user          |
+---------------+
| Aluno         |
| Ana           |
| Antero_Cunha  |
| Renato        |
| mysql.session |
| mysql.sys     |
| root          |
+---------------+
7 rows in set (0.00 sec)


select user, host from mysql.user;

+---------------+-----------+
| user          | host      |
+---------------+-----------+
| Aluno         | %         |
| Ana           | %         |
| Antero_Cunha  | localhost |
| Renato        | localhost |
| mysql.session | localhost |
| mysql.sys     | localhost |
| root          | localhost |
+---------------+-----------+
7 rows in set (0.00 sec)


/*Pergunta 8*/
/* criar utilizador manuel */

create user Manuel@localhost;

Query OK, 0 rows affected (0.00 sec)

/*Pergunta 9*/
/* apagar utilizador manuel  */

drop user Manuel@localhost;

Query OK, 0 rows affected (0.00 sec)


/*Pergunta 10*/
/* mostre todos os utilizadores e de onde podem aceder*/

select user from mysql.user;

+---------------+
| user          |
+---------------+
| Aluno         |
| Ana           |
| Antero_Cunha  |
| Renato        |
| mysql.session |
| mysql.sys     |
| root          |
+---------------+
7 rows in set (0.00 sec)

select user, host from mysql.user;

+---------------+-----------+
| user          | host      |
+---------------+-----------+
| Aluno         | %         |
| Ana           | %         |
| Antero_Cunha  | localhost |
| Renato        | localhost |
| mysql.session | localhost |
| mysql.sys     | localhost |
| root          | localhost |
+---------------+-----------+
7 rows in set (0.00 sec)

/*Pergunta 11*/
/* mostre previlegios de utilizador de Ana*/

show grants for Ana;
+---------------------------------+
| Grants for Ana@%                |
+---------------------------------+
| GRANT USAGE ON *.* TO 'Ana'@'%' |
+---------------------------------+
1 row in set (0.00 sec)


show grants for Aluno;

+--------------------------------------------------------------+
| Grants for Aluno@%                                           |
+--------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'Aluno'@'%' WITH GRANT OPTION |
+--------------------------------------------------------------+
1 row in set (0.00 sec)

/*Pergunta 12*/
/* crie o utilizador com nome Clara de com acesso local e senha 456 com privilegios de utilizador use o comando grant*/

Grant usage
ON *.*
To Clara@localhost identified by '456';

Query OK, 0 rows affected, 1 warning (0.00 sec)

show grants for Clara@localhost;

+-------------------------------------------+
| Grants for Clara@localhost                |
+-------------------------------------------+
| GRANT USAGE ON *.* TO 'Clara'@'localhost' |
+-------------------------------------------+
1 row in set (0.00 sec)


/*Pergunta 13*/
/* Atualizar os privilegios do utilizador Clara@localhost para projetar, inserir, atualizar e apagar*/

grant select, insert, update, delete
on *.* 
to Clara@localhost;

Query OK, 0 rows affected (0.00 sec)



/*Pergunta 14*/
/* mosatrar privilegios da clara atualizados */


show grants for Clara@localhost;

+--------------------------------------------------------------------+
| Grants for Clara@localhost                                         |
+--------------------------------------------------------------------+
| GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'Clara'@'localhost' |
+--------------------------------------------------------------------+
1 row in set (0.00 sec)

/*Pergunta 15*/
/* altere os privilegios do Antero_Cunha@localhost para poder projetar informação relativa ao Nome e Telefone da Tabela Cliente da base de dados Firma */

/* verificação de privilegios*/

show grants for Antero_Cunha@localhost;

+--------------------------------------------------+
| Grants for Antero_Cunha@localhost                |
+--------------------------------------------------+
| GRANT USAGE ON *.* TO 'Antero_Cunha'@'localhost' |
+--------------------------------------------------+
1 row in set (0.00 sec)

/* alteração de privilegios*/

grant select (Nome, Telefone)
on Firma.Cliente 
to Antero_Cunha@localhost;

Query OK, 0 rows affected (0.00 sec)

/*Pergunta 16*/
/* verificação de privilegios atualizados*/

show grants for Antero_Cunha@localhost;

+----------------------------------------------------------------------------------+
| Grants for Antero_Cunha@localhost                                                |
+----------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'Antero_Cunha'@'localhost'                                 |
| GRANT SELECT (Telefone, Nome) ON `firma`.`cliente` TO 'Antero_Cunha'@'localhost' |
+----------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

/*Exercicio 2 dia 29/06/2023*/

/*Neste exercício vamos praticar as matérias já estudadas e trabalhar alguns conceitos 
adicionais.
1. Na base de dados firma crie uma tabela onde vai registar os funcionários da empresa. 
Com base na grelha seguinte.

IDFunc    Nome       NIF   DatNascimeto       DatAdmin  DatDemin   Salário    Cargo Departamento
1     José Silva 111.111.111    21/10/1971   15/12/2001             2550.00    TI    Analista de Sistemas
2     Maria Sousa 222.222.222   23/12/1969   02/02/2002            1250.00    RH    Administrativo
3     Ricardo Luís 222.333.444   12/10/1982   12/05/2003 10/10/2007 1895.00   TI    Programador
4     Marisa Silva 111.222.555   30/05/1976   15/03/2004            3560.00    TI   Coordenador
5     Berto Lopes 111.333.111   06/05/1978   11/10/2007              1900.00   TI   Programador
6     Gisela Sá 111.178.198     08/12/1980    15/12/2008              1200.00  RH   Administrativo



Considere os campos:
ID_Func – ID_Funcionário – Inteiro, chave primária, auto incrementação.
Nome – String pode conter até 150 carateres.
NIF – String pode conter até 11 carateres separados por pontos, utilize o esquema 000.000.000.
DatNascimento – Data abreviada. 
DatAdmin – DataAdmissão – Data abreviada.
DataDmin – DataDmissão – Data abreviada.
Salário – Campo numérico pode conter até dez dígitos com duas casas decimais.
Cargo – String contém 2 carateres. 
Departamento – String pode conter até 50 carateres.
Todos os campos são de preenchimento obrigatório com a exceção da DataDmissão.
2. Com base nas especificações anteriores crie a tabela Funcionário na base de dados Firma.
3. Insira os funcionários na tabela Funcionário. 
4. Mostre todos os registos da tabela.
5. Mostre o Nome, Nif e a data de admissão de todos os funcionários.
6. Mostre todos os campos da tabela Funcionário cuja a data de admissão é 2007/10/11;
7. Mostre o Nome, Nif e data de Nascimento para o funcionário José Silva.
8. Mostre o Nome e Data de Nacimento de todos os funcionários, mas no formado mm-dd-aaaa.
9. Mostre o Nome, Data de Nascimento no Formato dd-MM-aaaa, e a sua idade.
10. Mostre o Nome, Cargo e departamento dos funcionários cujo o cargo é RH.
11. Mostre o Nome e Salários dos funcionários supondo que este mês tiveram um aumento de 15%, 
o campo salário deve aparecer como salário atual.
12. Mostre o Nome dos Funcionários como Nome Funcionário, Nif, Salário, ‘150’ como gratificação, 
saário+150 como total.
IDFunc Nome NIF DatNascimeto DatAdmin DatDemin Salário Cargo Departamento
1 José Silva 111.111.111 21/10/1971 15/12/2001 2550.00 TI Analista de Sistemas
2 Maria Sousa 222.222.222 23/12/1969 02/02/2002 1250.00 RH Administrativo
3 Ricardo Luís 222.333.444 12/10/1982 12/05/2003 10/10/2007 1895.00 TI Programador
4 Marisa Silva 111.222.555 30/05/1976 15/03/2004 3560.00 TI Coordenador
5 Berto Lopes 111.333.111 06/05/1978 11/10/2007 1900.00 TI Programador
6 Gisela Sá 111.178.198 08/12/1980 15/12/2008 1200.00 RH Administrativo
UFCD 0786 Instalação e Configuração de Sistemas de Gestão de Base de Dados
Exercicio_09.docx
FORMADOR José Luís Vieira
13. Mostre o Nome, Nif , Salario e Departamento dos Funcionários do departamento programador, 
pelo seu mérito tiverem um prémio de produtiva de 500, mostre o prémio e o total do salario.
14. Calcule a média dos salários de todos os funcionários.
15. Mostre a média dos salários arredondada a duas casas decimas para o departamento 
Programador.
16. Mostre a média dos salários arredondada a duas casas decimas para todos os departamentos.
17. Mostre o Salário Máximo e Mínimo dos funcionários. 
18. Mostre o número total de funcionários ativos.
19. Mostre o número total de funcionários demitidos.
*/


RESOLUÇÃO------------------------------------------------------------

/*1. Na base de dados firma crie uma tabela onde vai registar os funcionários da empresa. 
Com base na grelha seguinte. */

mysql> use firma
Database changed

/*mostar tabelas em base de dados firma*/
mysql> show tables;
+-----------------+
| Tables_in_firma |
+-----------------+
| cliente         |
| dados           |
+-----------------+


mysql> desc cliente;
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
6 rows in set (0.00 sec)


select * from cliente;
+---------+------+-----------------+-----------+-----------+-------------------------------------+
| Nome    | Sexo | Email           | Nif       | Telefone  | Endereço                            |
+---------+------+-----------------+-----------+-----------+-------------------------------------+
| João    | M    | joao@gmail.com  | 199999854 | 962352333 | Rua do Cerco - Porto                |
| Celia   | F    | celia@gmail.com | 188555258 | 935658987 | Rua do Chelo - Braga                |
| Jorge   | M    | NULL            | 155256458 | 918562321 | Rua do Bom Retiro - Penafiel        |
| Liliana | F    | NULL            | 111222333 | NULL      | Rua Senador Machado Soares - Lisboa |
| João    | M    | joao@gmail      | 199999854 | 962352333 | Rua do Cerco - Porto                |
| Célia   | F    | celia@gmail     | 188555258 | 935658987 | Rua do Chelo - Braga                |
| Jorge   | M    | NULL            | 155256458 | 918562321 | Rua do Bom Retiro - Penafiel        |
| Liliana | F    | NULL            | 111222333 | NULL      | Rua Senador Machado Soares - Lisboa |
+---------+------+-----------------+-----------+-----------+-------------------------------------+

/*2. Com base nas especificações anteriores crie a tabela Funcionário na base de dados Firma.*/


create table Funcionário (
    ID_Funcionário int primary key auto_increment,
	Nome Varchar(150) null,
	NIF char(11),
	DataNascimento date not null,
	DataAdmissão date not null,
	DataDemissão date null,
	Salario numeric (10,2),
	Cargo char (2),
	Departamento varchar (50) 
);

Query OK, 0 rows affected (0.03 sec)

/*3. Insira os funcionários na tabela Funcionário. */

Insert into Funcionário values
(Null, 'José Silva', '111.111.111', '1971/10/21', '2001/12/15', null, 2550.00, 'TI', 'Analista de Sistemas'),
(Null, 'Maria Sousa', '222.222.222', '1969/12/23', '2002/02/02', null, 2550.00, 'RH', 'Administrativo'),
(Null, 'Ricardo Luís', '222.333.444', '1982/10/12', '2003/05/12','2007/10/10', 2550.00, 'TI', 'Programador'),
(Null, 'Marisa Silva', '111.222.555', '1976/05/30', '2004/03/15', null, 2550.00, 'TI', 'Coordenador'),
(Null, 'Berto Lopes', '111.333.111', '1978/05/06', '2007/10/11', null, 2550.00, 'TI', 'Programador'),
(Null, 'Gisela Sá', '111.178.198', '1980/12/08', '2008/12/15', null, 2550.00, 'RH', 'Administrativo');

Query OK, 6 rows affected (0.00 sec)
Records: 6  Duplicates: 0  Warnings: 0

/*4. Mostre todos os registos da tabela. */
select * from funcionário

+-----------------+---------------+-------------+----------------+---------------+---------------+---------+-------+----------------------+
| ID_Funcionário  | Nome          | NIF         | DataNascimento | DataAdmissão  | DataDemissão  | Salario | Cargo | Departamento         |
+-----------------+---------------+-------------+----------------+---------------+---------------+---------+-------+----------------------+
|               1 | José Silva    | 111.111.111 | 1971-10-21     | 2001-12-15    | NULL          | 2550.00 | TI    | Analista de Sistemas |
|               2 | Maria Sousa   | 222.222.222 | 1969-12-23     | 2002-02-02    | NULL          | 2550.00 | RH    | Administrativo       |
|               3 | Ricardo Luís  | 222.333.444 | 1982-10-12     | 2003-05-12    | 2007-10-10    | 2550.00 | TI    | Programador          |
|               4 | Marisa Silva  | 111.222.555 | 1976-05-30     | 2004-03-15    | NULL          | 2550.00 | TI    | Coordenador          |
|               5 | Berto Lopes   | 111.333.111 | 1978-05-06     | 2007-10-11    | NULL          | 2550.00 | TI    | Programador          |
|               6 | Gisela Sá     | 111.178.198 | 1980-12-08     | 2008-12-15    | NULL          | 2550.00 | RH    | Administrativo       |
+-----------------+---------------+-------------+----------------+---------------+---------------+---------+-------+----------------------+
6 rows in set (0.00 sec)

/*5. Mostre o Nome, Nif e a data de admissão de todos os funcionários.*/

select Nome, NIF, DataAdmissão from funcionário;

+---------------+-------------+---------------+
| Nome          | NIF         | DataAdmissão  |
+---------------+-------------+---------------+
| José Silva    | 111.111.111 | 2001-12-15    |
| Maria Sousa   | 222.222.222 | 2002-02-02    |
| Ricardo Luís  | 222.333.444 | 2003-05-12    |
| Marisa Silva  | 111.222.555 | 2004-03-15    |
| Berto Lopes   | 111.333.111 | 2007-10-11    |
| Gisela Sá     | 111.178.198 | 2008-12-15    |
+---------------+-------------+---------------+
6 rows in set (0.00 sec)

/*6. Mostre todos os campos da tabela Funcionário cuja a data de admissão é 2007/10/11; */

select Nome, DataAdmissão from funcionário
where DataAdmissão = '2007/10/11';

+-------------+---------------+
| Nome        | DataAdmissão  |
+-------------+---------------+
| Berto Lopes | 2007-10-11    |
+-------------+---------------+
1 row in set (0.00 sec)

/*7. Mostre o Nome, Nif e data de Nascimento para o funcionário José Silva.*/

select Nome, NIF, DataNascimento from funcionário
where Nome = 'José Silva';

+-------------+-------------+----------------+
| Nome        | NIF         | DataNascimento |
+-------------+-------------+----------------+
| José Silva  | 111.111.111 | 1971-10-21     |
+-------------+-------------+----------------+
1 row in set (0.00 sec)

/*8. Mostre o Nome e Data de Nacimento de todos os funcionários, mas no formado mm-dd-aaaa.*/

select Nome, date_format(DataNascimento, '%d-%m-%Y') as DataNascimento from Funcionario;

+---------------+----------------+
| Nome          | DataNascimento |
+---------------+----------------+
| José Silva    | 21-10-1971     |
| Maria Sousa   | 23-12-1969     |
| Ricardo Luís  | 12-10-1982     |
| Marisa Silva  | 30-05-1976     |
| Berto Lopes   | 06-05-1978     |
| Gisela Sá     | 08-12-1980     |
+---------------+----------------+


/*9. Mostre o Nome, Data de Nascimento no Formato dd-MM-aaaa, e a sua idade.*/

select Nome, date_format(DataNascimento, '%d-%b-%Y') as DataNascimento,
timestampdiff(year, DataNascimento,curdate()) as Idade
from funcionario;

+---------------+----------------+-------+
| Nome          | DataNascimento | Idade |
+---------------+----------------+-------+
| José Silva    | 21-Oct-1971    |    51 |
| Maria Sousa   | 23-Dec-1969    |    53 |
| Ricardo Luís  | 12-Oct-1982    |    40 |
| Marisa Silva  | 30-May-1976    |    47 |
| Berto Lopes   | 06-May-1978    |    45 |
| Gisela Sá     | 08-Dec-1980    |    42 |
+---------------+----------------+-------+

/*Pergunta 10*/

Select Nome, Cargo, Departamento from funcionario
where Cargo = 'RH';
+-------------+-------+----------------+
| Nome        | Cargo | Departamento   |
+-------------+-------+----------------+
| Maria Sousa | RH    | Administrativo |
| Gisela Sá   | RH    | Administrativo |
+-------------+-------+----------------+

/*Pergunta 11*/
select nome, salario*1.15 as Salario_Actual from funcionario;
+---------------+----------------+
| nome          | Salario_Actual |
+---------------+----------------+
| José Silva    |      2932.5000 |
| Maria Sousa   |      1437.5000 |
| Ricardo Luís  |      2179.2500 |
| Marisa Silva  |      4094.0000 |
| Berto Lopes   |      2185.0000 |
| Gisela Sá     |      1380.0000 |
+---------------+----------------+

/*Pergunta 12*/


Select Nome as 'Nome do Funcionario', Nif, Salario, '150' 
as 'Gratificaçao', Salario+150 as 'total' from funcionario;

+---------------------+-------------+---------+---------------+---------+
| Nome do Funcionario | Nif         | Salario | Gratificaçao  | total   |
+---------------------+-------------+---------+---------------+---------+
| José Silva          | 111.111.111 | 2550.00 | 150           | 2700.00 |
| Maria Sousa         | 222.222.222 | 1250.00 | 150           | 1400.00 |
| Ricardo Luís        | 222.333.444 | 1895.00 | 150           | 2045.00 |
| Marisa Silva        | 111.222.555 | 3560.00 | 150           | 3710.00 |
| Berto Lopes         | 111.333.111 | 1900.00 | 150           | 2050.00 |
| Gisela Sá           | 111.178.198 | 1200.00 | 150           | 1350.00 |
+---------------------+-------------+---------+---------------+---------+

/*Pergunta 13*/


Select Nome, Nif, Salario, Departamento, '200' as 'Premio',
Salario+200 as 'Total' from Funcionario; 
+---------------+-------------+---------+----------------------+--------+---------+
| Nome          | Nif         | Salario | Departamento         | Premio | Total   |
+---------------+-------------+---------+----------------------+--------+---------+
| José Silva    | 111.111.111 | 2550.00 | Analista de Sistemas | 200    | 2750.00 |
| Maria Sousa   | 222.222.222 | 1250.00 | Administrativo       | 200    | 1450.00 |
| Ricardo Luís  | 222.333.444 | 1895.00 | Programador          | 200    | 2095.00 |
| Marisa Silva  | 111.222.555 | 3560.00 | Coordenador          | 200    | 3760.00 |
| Berto Lopes   | 111.333.111 | 1900.00 | Programador          | 200    | 2100.00 |
| Gisela Sá     | 111.178.198 | 1200.00 | Administrativo       | 200    | 1400.00 |
+---------------+-------------+---------+----------------------+--------+---------+

/*Pergunta 14*/


select avg(salario) as 'Salario Médio' from funcionario;
+--------------+
| Salario Medio|
+--------------+
|  2059.166667 |
+--------------+

select convert(avg(salario),decimal(6,2)) as "Salario Medio" from funcionario;
+---------------+
| Salario Medio |
+---------------+
|       2059.17 |
+---------------+

/*Pergunta 15*/


select convert(avg(salario),decimal(6,2)) as "Salario Medio dos Programadores" from funcionario
where Departamento = "Programador";
+---------------------------------+
| Salario Medio dos Programadores |
+---------------------------------+
|                         1897.50 |
+---------------------------------+

/*Pergunta 16*/


select Departamento, convert(avg(salario),decimal(6,2)) as "Salario Medio Por Departamento" from funcionario
group by departamento;
+----------------------+--------------------------------+
| Departamento         | Salario Medio Por Departamento |
+----------------------+--------------------------------+
| Administrativo       |                        1225.00 |
| Analista de Sistemas |                        2550.00 |
| Coordenador          |                        3560.00 |
| Programador          |                        1897.50 |
+----------------------+--------------------------------+
/*Pergunta 17*/


select max(Salario)  from funcionario;
Select min(Salario) from funcionario;
+--------------+
| max(Salario) |
+--------------+
|      3560.00 |
+--------------+

+--------------+
| min(Salario) |
+--------------+
|      1200.00 |
+--------------+

/*Pergunta 18*/


select count(*) as 'Funionários Ativos' from funcionario
where DateDemissão is null;
+---------------------+
| Funionários Ativos  |
+---------------------+
|                   5 |
+---------------------+

/*Pergunta 19*/


select count(*) as 'Funionários Demitidos' from funcionario
where DateDemissão is not null;
+------------------------+
| Funionários Demitidos  |
+------------------------+
|                      1 |
+------------------------+


/*10.07.2023*/

use firma;

Database changed

mysql> select * from funcionário
    
+-----------------+---------------+-------------+----------------+---------------+---------------+---------+-------+----------------------+
| ID_Funcionário  | Nome          | NIF         | DataNascimento | DataAdmissão  | DataDemissão  | Salario | Cargo | Departamento         |
+-----------------+---------------+-------------+----------------+---------------+---------------+---------+-------+----------------------+
|               1 | José Silva    | 111.111.111 | 1971-10-21     | 2001-12-15    | NULL          | 2550.00 | TI    | Analista de Sistemas |
|               2 | Maria Sousa   | 222.222.222 | 1969-12-23     | 2002-02-02    | NULL          | 2550.00 | RH    | Administrativo       |
|               3 | Ricardo Luís  | 222.333.444 | 1982-10-12     | 2003-05-12    | 2007-10-10    | 2550.00 | TI    | Programador          |
|               4 | Marisa Silva  | 111.222.555 | 1976-05-30     | 2004-03-15    | NULL          | 2550.00 | TI    | Coordenador          |
|               5 | Berto Lopes   | 111.333.111 | 1978-05-06     | 2007-10-11    | NULL          | 2550.00 | TI    | Programador          |
|               6 | Gisela Sá     | 111.178.198 | 1980-12-08     | 2008-12-15    | NULL          | 2550.00 | RH    | Administrativo       |
+-----------------+---------------+-------------+----------------+---------------+---------------+---------+-------+----------------------+
6 rows in set (0.05 sec)
































