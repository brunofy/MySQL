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
