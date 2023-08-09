/*Pergunta 1*/
create database Turismo;

/*Pergunta 2*/
use Turismo

/*Criar a tabela Cliente*/
Create table Cliente (
	Nr_Cliente Int Auto_Increment Primary Key Not Null,
	Nome Varchar(30) Not Null,
	Apelido Varchar (10) Not Null,
	Morada Varchar (50) Not Null,
	Telefone Char (11) Not Null, 
	Data_Nascimento Date Not Null, 
	Sexo enum ('M','F')
	); 
desc table Cliente 

/*Mostrar Tabela*/

mysql> desc Cliente;
/*
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
7 rows in set (0.01 sec)
*/

Alter Table Cliente
change Column Sexo Sexo enum ('M','F') Not Null; 

mysql> desc Cliente;
/*
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
7 rows in set (0.00 sec) */

/* Pergunta 4*/
/*Inserir dados na tabela cliente*/
Insert Into Cliente Values
(Null, 'João Paulo', 'Santos', 'Rua chá, 12', '215.236.138', 19580815, 'M'), 
(Null, 'Maria Beatriz', 'Cardoso', 'Av.Lidador, 85', '221.978.125' , 19401025, 'F'),
(Null, 'Tatiana', 'Azevedo', 'Av.Lisboa', '133.193.003' , 19600101, 'F'),
(Null, 'José Alberto', 'Fangueiro', 'Rua da Praia 4', '253.215.362' , 19801225, 'M');

mysql> desc Cliente;
/*
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
7 rows in set (0.00 sec) 
*/
