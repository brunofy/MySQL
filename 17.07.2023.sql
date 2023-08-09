/*0787 Administração de Bases de Dados*/
/*Exercício 01*/
/*Pergunta 1*/
/*Cria uma base de dados*/
Create database Livraria;

/*Pergunta 2*/
/*Usar a base de dados Livraria*/
Use Livraria;

/*Pergunta 3*/
/*Criar tabela Livros*/
Create Table Livros(
	Id_Livros int primary key auto_increment,
	Livro Varchar (100), 
	Autor Varchar (100),
	Sexo enum ('M','F'),
	Paginas int (5),
	Editora Varchar(30),
	Valor decimal (6,2),
	Sede_Editora Char (30),
	Ano int (4)
	);


desc Livros;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| Id_Livros    | int(11)       | NO   | PRI | NULL    | auto_increment |
| Livro        | varchar(100)  | YES  |     | NULL    |                |
| Autor        | varchar(100)  | YES  |     | NULL    |                |
| Sexo         | enum('M','F') | YES  |     | NULL    |                |
| Paginas      | int(5)        | YES  |     | NULL    |                |
| Editora      | varchar(30)   | YES  |     | NULL    |                |
| Valor        | decimal(6,2)  | YES  |     | NULL    |                |
| Sede_Editora | char(30)      | YES  |     | NULL    |                |
| Ano          | int(4)        | YES  |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+

/*Inserir os dados na tabela*/
Insert into Livros VALUES
(Null, 'Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'Lisboa', 2009),
(Null, 'SQL Para Leigos', 'João Nuno Coimbra', 'M', 450, 'Addison', 98, 'Porto', 2018),
(Null, 'Receitas Caseiras', 'Célia Tavares', 'F', 210, 'Atlas', 45, 'Lisboa', 2008),
(Null, 'Coimbra Efectivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'Lisboa', 2018),
(null, 'Hábitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'Lisboa', 2019),
(null, 'A Casa Castanha', 'Herman Coimbra Macedo', 'M', 250, 'Bubba', 60, 'Faro', 2016),
(null, 'Coimbratacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'Coimbra', 2015),
(null, 'Para Sempre Amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'Coimbra', 2011),
(null, 'Copas Coimbra Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Labragaon', 130.98, 
'Braga', 2018),
(Null, 'O Poder da Mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'Porto', 2017);

/*Pergunta 4*/
/*Mostrar todos os campos da tabela Livro*/
Select * from Livros; /*Select - mostra, * Todos os campos, from indica de que tabela*/
+-----------+-----------------------------+-----------------------+------+---------+-------------+--------+--------------+------+
| Id_Livros | Livro                       | Autor                 | Sexo | Paginas | Editora     | Valor  | Sede_Editora | Ano  |
+-----------+-----------------------------+-----------------------+------+---------+-------------+--------+--------------+------+
|         1 | Cavaleiro Real              | Ana Claudia           | F    |     465 | Atlas       |  49.90 | Lisboa       | 2009 |
|         2 | SQL Para Leigos             | João Nuno Coimbra     | M    |     450 | Addison     |  98.00 | Porto        | 2018 |
|         3 | Receitas Caseiras           | Célia Tavares         | F    |     210 | Atlas       |  45.00 | Lisboa       | 2008 |
|         4 | Coimbra Efectivas           | Eduardo Santos        | M    |     390 | Beta        |  78.99 | Lisboa       | 2018 |
|         5 | Hábitos Saudáveis           | Eduardo Santos        | M    |     630 | Beta        | 150.98 | Lisboa       | 2019 |
|         6 | A Casa Castanha             | Herman Coimbra Macedo | M    |     250 | Bubba       |  60.00 | Faro         | 2016 |
|         7 | Coimbratacio Querido        | Geraldo Francisco     | M    |     310 | Insignia    | 100.00 | Coimbra      | 2015 |
|         8 | Para Sempre Amigas          | Leda Silva            | F    |     510 | Insignia    |  78.98 | Coimbra      | 2011 |
|         9 | Copas Coimbra Inesqueciveis | Marco Alcantara       | M    |     200 | Labragaon   | 130.98 | Braga        | 2018 |
|        10 | O Poder da Mente            | Clara Mafra           | F    |     120 | Continental |  56.58 | Porto        | 2017 |
+-----------+-----------------------------+-----------------------+------+---------+-------------+--------+--------------+------+

/*Pergunta 5*/
select Livro, Editora from Livros;
+-----------------------------+-------------+
| Livro                       | Editora     |
+-----------------------------+-------------+
| Cavaleiro Real              | Atlas       |
| SQL Para Leigos             | Addison     |
| Receitas Caseiras           | Atlas       |
| Coimbra Efectivas           | Beta        |
| Hábitos Saudáveis           | Beta        |
| A Casa Castanha             | Bubba       |
| Coimbratacio Querido        | Insignia    |
| Para Sempre Amigas          | Insignia    |
| Copas Coimbra Inesqueciveis | Labragaon   |
| O Poder da Mente            | Continental |
+-----------------------------+-------------+

/*Pergunta 6*/
/* Select projeta uma informação no ecrã
   From onde se obtém a informação
   Where com que condições se obtém*/ 
   
select Autor, Livro, Editora
from Livros
Where Sexo = 'M';

+-----------------------+-----------------------------+-----------+
| Autor                 | Livro                       | Editora   |
+-----------------------+-----------------------------+-----------+
| João Nuno Coimbra     | SQL Para Leigos             | Addison   |
| Eduardo Santos        | Coimbra Efectivas           | Beta      |
| Eduardo Santos        | Hábitos Saudáveis           | Beta      |
| Herman Coimbra Macedo | A Casa Castanha             | Bubba     |
| Geraldo Francisco     | Coimbratacio Querido        | Insignia  |
| Marco Alcantara       | Copas Coimbra Inesqueciveis | Labragaon |
+-----------------------+-----------------------------+-----------+

/*Pergunta 7*/
select Autor, Livro, Paginas
from Livros
where sexo = 'F';
+----------------+--------------------+---------+
| Autor          | Livro              | Paginas |
+----------------+--------------------+---------+
| Ana Claudia    | Cavaleiro Real     |     465 |
| Célia Tavares  | Receitas Caseiras  |     210 |
| Leda Silva     | Para Sempre Amigas |     510 |
| Clara Mafra    | O Poder da Mente   |     120 |
+----------------+--------------------+---------+

select Autor, Livro, Paginas as Páginas /*as como quero que apareça no ecrã*/
from Livros
where sexo = 'F';
+----------------+--------------------+----------+
| Autor          | Livro              | Páginas  |
+----------------+--------------------+----------+
| Ana Claudia    | Cavaleiro Real     |      465 |
| Célia Tavares  | Receitas Caseiras  |      210 |
| Leda Silva     | Para Sempre Amigas |      510 |
| Clara Mafra    | O Poder da Mente   |      120 |
+----------------+--------------------+----------+

/*Pergunta 8*/
select * from livros;
+-----------+-----------------------------+-----------------------+------+---------+-------------+--------+--------------+------+
| Id_Livros | Livro                       | Autor                 | Sexo | Paginas | Editora     | Valor  | Sede_Editora | Ano  |
+-----------+-----------------------------+-----------------------+------+---------+-------------+--------+--------------+------+
|         1 | Cavaleiro Real              | Ana Claudia           | F    |     465 | Atlas       |  49.90 | Lisboa       | 2009 |
|         2 | SQL Para Leigos             | João Nuno Coimbra     | M    |     450 | Addison     |  98.00 | Porto        | 2018 |
|         3 | Receitas Caseiras           | Célia Tavares         | F    |     210 | Atlas       |  45.00 | Lisboa       | 2008 |
|         4 | Coimbra Efectivas           | Eduardo Santos        | M    |     390 | Beta        |  78.99 | Lisboa       | 2018 |
|         5 | Hábitos Saudáveis           | Eduardo Santos        | M    |     630 | Beta        | 150.98 | Lisboa       | 2019 |
|         6 | A Casa Castanha             | Herman Coimbra Macedo | M    |     250 | Bubba       |  60.00 | Faro         | 2016 |
|         7 | Coimbratacio Querido        | Geraldo Francisco     | M    |     310 | Insignia    | 100.00 | Coimbra      | 2015 |
|         8 | Para Sempre Amigas          | Leda Silva            | F    |     510 | Insignia    |  78.98 | Coimbra      | 2011 |
|         9 | Copas Coimbra Inesqueciveis | Marco Alcantara       | M    |     200 | Labragaon   | 130.98 | Braga        | 2018 |
|        10 | O Poder da Mente            | Clara Mafra           | F    |     120 | Continental |  56.58 | Porto        | 2017 |
+-----------+-----------------------------+-----------------------+------+---------+-------------+--------+--------------+------+

select livro, Valor
from livros
Where Sede_Editora = 'Porto' and Sede_Editora = 'Lisboa';

Empty set (0.00 sec)

select livro, Valor
from livros
Where Sede_Editora = 'Porto' or Sede_Editora = 'Lisboa';

+---------------------+--------+
| livro               | Valor  |
+---------------------+--------+
| Cavaleiro Real      |  49.90 |
| SQL Para Leigos     |  98.00 |
| Receitas Caseiras   |  45.00 |
| Coimbra Efectivas   |  78.99 |
| Hábitos Saudáveis   | 150.98 |
| O Poder da Mente    |  56.58 |
+---------------------+--------+

/*and >> *
 0*0 = 0
 0*1 = 0
 1*0 = 0
 
 or >> +
 0+1 = 1
 1+1 = 1
 */
 
/*Pergunta 9*/
select Autor, Sexo, Livro, Sede_Editora
from livros
where sexo = 'M'
And(Sede_Editora = 'Porto' or Sede_Editora = 'Lisboa');
+--------------------+------+---------------------+--------------+
| Autor              | Sexo | Livro               | Sede_Editora |
+--------------------+------+---------------------+--------------+
| João Nuno Coimbra  | M    | SQL Para Leigos     | Porto        |
| Eduardo Santos     | M    | Coimbra Efectivas   | Lisboa       |
| Eduardo Santos     | M    | Hábitos Saudáveis   | Lisboa       |
+--------------------+------+---------------------+--------------+

/*Extra*/
Select Autor, Sexo, Sede_Editora, Paginas
from livros
where sexo = 'M'
And Sede_Editora = 'Porto'
And Paginas > 100;

+--------------------+------+--------------+---------+
| Autor              | Sexo | Sede_Editora | Paginas |
+--------------------+------+--------------+---------+
| João Nuno Coimbra  | M    | Porto        |     450 |
+--------------------+------+--------------+---------+

/*Fim do exercício*/

/*Exercíco 2 BR Modelo*/
Create database Teste_BR_Modelo;
use Teste_BR_Modelo;

CREATE TABLE Telefone (
ID_Telefone INTEGER PRIMARY KEY,
Numero CHAR(9),
Tipo VARCHAR(10)
);

CREATE TABLE Cliente (
ID_Cliente INTEGER PRIMARY KEY,
Nome VARCHAR(50),
Nif CHAR(11) unique key,
Sexo CHAR(1),
Email VARCHAR(30),
ID_Telefone INTEGER,
ID_Endereço INTEGER,
FOREIGN KEY(ID_Telefone) REFERENCES Telefone (ID_Telefone)
);

CREATE TABLE Endereço (
ID_Endereço INTEGER PRIMARY KEY,
Rua VARCHAR(30),
Localidade VARCHAR(20),
Cod_Postal CHAR(8)
);

ALTER TABLE Cliente ADD FOREIGN KEY(ID_Endereço) REFERENCES Endereço (ID_Endereço);

/*Inserir os dados nas tabelas*/
/*Telefone*/

insert into telefone (ID_Telefone, Numero, Tipo) values
(1, 221333666, 'Residencia'),
(2, 253256987, 'Residencia'),
(3, 212698587, 'Comercial'),
(4, 963587987, 'Telemovel');

/*Endereço*/

Insert into endereço (ID_Endereço, Rua, Localidade, Cod_Postal) values
(1, 'Rua do Cerco', 'Porto', '4200-000'),
(2, 'Rua de Chãos', 'Braga', '4300-000'),
(3, 'Rua do Bom Retiro','Penafiel', '4560-256'),
(4, 'Rua de Cimo de Vila', 'Guimarães', '4450-125');

/*Cliente*/

Insert into cliente (ID_Cliente, Nome, Sexo, Email, Nif, ID_Telefone, ID_Endereço) values
(1, 'Nuno', 'M', 'nuno@mail.pt', 111333444, 1, 1),
(2, 'Ana', 'F', 'ana@mail.pt', 112325569, 2, 2),
(3, 'Paula', 'F', 'paula@mail.pt', 125365258, 3,3),
(4, 'Jorge', 'M', 'jorge@mail.pt', 123568258, 4,4);

select * from telefone;
+-------------+-----------+------------+
| ID_Telefone | Numero    | Tipo       |
+-------------+-----------+------------+
|           1 | 221333666 | Residencia |
|           2 | 253256987 | Residencia |
|           3 | 212698587 | Comercial  |
|           4 | 963587987 | Telemovel  |
+-------------+-----------+------------+

select * from endereço;
+--------------+---------------------+------------+------------+
| ID_Endereço  | Rua                 | Localidade | Cod_Postal |
+--------------+---------------------+------------+------------+
|            1 | Rua do Cerco        | Porto      | 4200-000   |
|            2 | Rua de Chãos        | Braga      | 4300-000   |
|            3 | Rua do Bom Retiro   | Penafiel   | 4560-256   |
|            4 | Rua de Cimo de Vila | Guimarães  | 4450-125   |
+--------------+---------------------+------------+------------+

select * from Cliente;
+------------+-------+-----------+------+---------------+-------------+--------------+
| ID_Cliente | Nome  | Nif       | Sexo | Email         | ID_Telefone | ID_Endereço  |
+------------+-------+-----------+------+---------------+-------------+--------------+
|          1 | Nuno  | 111333444 | M    | nuno@mail.pt  |           1 |            1 |
|          2 | Ana   | 112325569 | F    | ana@mail.pt   |           2 |            2 |
|          3 | Paula | 125365258 | F    | paula@mail.pt |           3 |            3 |
|          4 | Jorge | 123568258 | M    | jorge@mail.pt |           4 |            4 |
+------------+-------+-----------+------+---------------+-------------+--------------+

/*Mostre o Nome, Sexo, Email, Numero e tipo de telefone para os seus clientes*/

Select Nome, Sexo, Email, Numero, Tipo
from Cliente, Telefone
where Cliente.ID_Telefone = Telefone.ID_Telefone;

+-------+------+---------------+-----------+------------+
| Nome  | Sexo | Email         | Numero    | Tipo       |
+-------+------+---------------+-----------+------------+
| Nuno  | M    | nuno@mail.pt  | 221333666 | Residencia |
| Ana   | F    | ana@mail.pt   | 253256987 | Residencia |
| Paula | F    | paula@mail.pt | 212698587 | Comercial  |
| Jorge | M    | jorge@mail.pt | 963587987 | Telemovel  |
+-------+------+---------------+-----------+------------+

/*Mostre o Nome, Sexo, Email, Numero, tipo de telefone, Rua e Localidade para os seus clientes*/
Select Nome, Sexo, Email, Numero, Tipo, Rua, Localidade
from cliente, Telefone, Endereço
where Cliente.ID_Telefone = Telefone.ID_Telefone and Cliente.ID_Endereço = Endereço.ID_Endereço;
+-------+------+---------------+-----------+------------+---------------------+------------+
| Nome  | Sexo | Email         | Numero    | Tipo       | Rua                 | Localidade |
+-------+------+---------------+-----------+------------+---------------------+------------+
| Nuno  | M    | nuno@mail.pt  | 221333666 | Residencia | Rua do Cerco        | Porto      |
| Ana   | F    | ana@mail.pt   | 253256987 | Residencia | Rua de Chãos        | Braga      |
| Paula | F    | paula@mail.pt | 212698587 | Comercial  | Rua do Bom Retiro   | Penafiel   |
| Jorge | M    | jorge@mail.pt | 963587987 | Telemovel  | Rua de Cimo de Vila | Guimarães  |
+-------+------+---------------+-----------+------------+---------------------+------------+

/*Fim do exercício Teste_BR_Modelo*/

/*Exercício 3*/
/*Pergunta 1*/

create database Comercio;

/*Pergunta 2*/

Use Comercio;

/*Pergunta 3*/
/*Criar a tabela cliente*/

Create table Cliente(
	IDCliente int primary key auto_increment,
	Nome varchar(30) not null,
	Sexo enum ('M', 'F') not null,
	Email Varchar (50) unique key,
	CPF Varchar (15) unique key
	);
	

/*Criar a tabela endereço*/
create table Endereço (
	IDEndereço Int primary key auto_increment,
	Rua varchar(30) not null,
	Bairro varchar(30) not null,
	Cidade varchar(30) not null,
	Estado char(2) Not null,
	ID_Cliente Int unique key,
	
	foreign key (ID_Cliente)
	references cliente(IDCliente)
	);

/*Criar a tabela Telefone*/
create table telefone (
	IDTelefone int primary key auto_increment,
	Tipo enum ('Res', 'Com', 'Tmov') not null,
	Numero Varchar (10) not null,
	ID_Cliente int,
	
	foreign key (ID_Cliente)
	references Cliente (IDCLiente)
	);


/*Pergunta 6*/
use comercio;
/*Inserir do dados na tabela cliente*/

Insert into cliente values
(null, 'João', 'M', 'joao@ig.com', 76567587887),
(null, 'Carlos', 'M', 'carlosa@ig.com', 5464553455),
(null, 'Ana', 'F', 'ana@ig.com', 4565456789),
(null, 'Carla', 'F', null, 5687766856),
(null, 'Jorge', 'm', 'jorge@ig.com', 8756547688),
(null, 'Celia', 'F', 'jcelia@ig.com', 5767876889);

/*extra*/
update cliente
set email = null
where nome = 'Carla';
/*extra*/

/*Inserir do dados na tabela endereço*/

insert into endereço values
(Null, 'Rua Antonio Sa', 'Centro', 'B. Horizonte', 'MG', 4),
(Null, 'Rua Capitão Hermes', 'Centro', 'Rio de Janeiro', 'RJ', 1),
(Null, 'Rua Peres Vargas', 'Jardins', 'São Paulo', 'SP', 3),
(Null, 'Rua Alfandega', 'Estacio', 'Rio de Janeiro', 'RJ', 2),
(Null, 'Rua do Ouvidor', 'Flamengo', 'Rio de Janeiro', 'RJ', 6),
(Null, 'Rua Urugaiana', 'Centro', 'Vitoria', 'ES', 5);


/*Inserir do dados na tabela telefone*/

insert into telefone (tipo, numero, ID_Cliente) values
('Tmov', 78458743, 5),
('Res',  565576876,5),
('Tmov', 87866896, 1),
('Com', 54768899, 2),
('Res', 99667857, 1),
('Tmov', 78989765, 3),
('Tmov', 9976666, 3),
('Com', 66687899, 1),
('Res', 89986668, 5),
('Tmov', 88687909, 2);

/*Pergunta 9*/

select * from cliente;

+-----------+--------+------+----------------+-------------+
| IDCliente | Nome   | Sexo | Email          | CPF         |
+-----------+--------+------+----------------+-------------+
|         1 | João   | M    | joao@ig.com    | 76567587887 |
|         2 | Carlos | M    | carlosa@ig.com | 5464553455  |
|         3 | Ana    | F    | ana@ig.com     | 4565456789  |
|         4 | Carla  | F    | NULL           | 5687766856  |
|         5 | Jorge  | M    | jorge@ig.com   | 8756547688  |
|         6 | Celia  | F    | jcelia@ig.com  | 5767876889  |
+-----------+--------+------+----------------+-------------+

Select * from endereço;
+-------------+---------------------+----------+----------------+--------+------------+
| IDEndereço  | Rua                 | Bairro   | Cidade         | Estado | ID_Cliente |
+-------------+---------------------+----------+----------------+--------+------------+
|           1 | Rua Antonio Sa      | Centro   | B. Horizonte   | MG     |          4 |
|           2 | Rua Capitão Hermes  | Centro   | Rio de Janeiro | RJ     |          1 |
|           3 | Rua Peres Vargas    | Jardins  | São Paulo      | SP     |          3 |
|           4 | Rua Alfandega       | Estacio  | Rio de Janeiro | RJ     |          2 |
|           5 | Rua do Ouvidor      | Flamengo | Rio de Janeiro | RJ     |          6 |
|           6 | Rua Urugaiana       | Centro   | Vitoria        | ES     |          5 |
+-------------+---------------------+----------+----------------+--------+------------+

Select * from telefone;
+------------+------+-----------+------------+
| IDTelefone | Tipo | Numero    | ID_Cliente |
+------------+------+-----------+------------+
|          1 | Tmov | 78458743  |          5 |
|          2 | Res  | 565576876 |          5 |
|          3 | Tmov | 87866896  |          1 |
|          4 | Com  | 54768899  |          2 |
|          5 | Res  | 99667857  |          1 |
|          6 | Tmov | 78989765  |          3 |
|          7 | Tmov | 9976666   |          3 |
|          8 | Com  | 66687899  |          1 |
|          9 | Res  | 89986668  |          5 |
|         10 | Tmov | 88687909  |          2 |
+------------+------+-----------+------------+

/*Fim do exercício 3*/

/*Exercício 4*/
/*Pergunta 1*/
/*Mostra a data atual*/

select now() as 'Data atual';

+---------------------+
| Data atual          |
+---------------------+
| 2023-07-20 21:10:01 |
+---------------------+

/*Pergunta 2*/
select 2+2 as soma;

+------+
| soma |
+------+
|    4 |
+------+

select 2+2 as soma, Nome, now() as Data_Atual
from cliente;

+------+--------+---------------------+
| soma | Nome   | Data_Atual          |
+------+--------+---------------------+
|    4 | João   | 2023-07-20 21:13:34 |
|    4 | Carlos | 2023-07-20 21:13:34 |
|    4 | Ana    | 2023-07-20 21:13:34 |
|    4 | Carla  | 2023-07-20 21:13:34 |
|    4 | Jorge  | 2023-07-20 21:13:34 |
|    4 | Celia  | 2023-07-20 21:13:34 |
+------+--------+---------------------+

/*Pergunta 3*/
select Nome, Sexo, Email
from Cliente
Where sexo = 'F';
+-------+------+---------------+
| Nome  | Sexo | Email         |
+-------+------+---------------+
| Ana   | F    | ana@ig.com    |
| Carla | F    | NULL          |
| Celia | F    | jcelia@ig.com |
+-------+------+---------------+

/*Pergunta 4*/
select Numero, Tipo /*Projeção*/
from telefone /*Origem*/
where Tipo = 'Tmov'; /*Seleção ou condição*/
+----------+------+
| Numero   | Tipo |
+----------+------+
| 78458743 | Tmov |
| 87866896 | Tmov |
| 78989765 | Tmov |
| 9976666  | Tmov |
| 88687909 | Tmov |
+----------+------+

/*Pergunta 5*/
select Nome, Email, IDCliente
from cliente;
+--------+----------------+-----------+
| Nome   | Email          | IDCliente |
+--------+----------------+-----------+
| João   | joao@ig.com    |         1 |
| Carlos | carlosa@ig.com |         2 |
| Ana    | ana@ig.com     |         3 |
| Carla  | NULL           |         4 |
| Jorge  | jorge@ig.com   |         5 |
| Celia  | jcelia@ig.com  |         6 |
+--------+----------------+-----------+

/*Pergunta 6*/
Select ID_Cliente, Bairro, Cidade
from endereço;
+------------+----------+----------------+
| ID_Cliente | Bairro   | Cidade         |
+------------+----------+----------------+
|          4 | Centro   | B. Horizonte   |
|          1 | Centro   | Rio de Janeiro |
|          3 | Jardins  | São Paulo      |
|          2 | Estacio  | Rio de Janeiro |
|          6 | Flamengo | Rio de Janeiro |
|          5 | Centro   | Vitoria        |
+------------+----------+----------------+

/*Pergunta 7*/
/*Juntar a tabela cliente com a tabela endereço*/

+--------+----------------+-----------+
| Nome   | Email          | IDCliente |
+--------+----------------+-----------+
| João   | joao@ig.com    |         1 |
| Carlos | carlosa@ig.com |         2 |
| Ana    | ana@ig.com     |         3 |
| Carla  | NULL           |         4 |
| Jorge  | jorge@ig.com   |         5 |
| Celia  | jcelia@ig.com  |         6 |
+--------+----------------+-----------+
+------------+----------+----------------+
| ID_Cliente | Bairro   | Cidade         |
+------------+----------+----------------+
|          4 | Centro   | B. Horizonte   |
|          1 | Centro   | Rio de Janeiro |
|          3 | Jardins  | São Paulo      |
|          2 | Estacio  | Rio de Janeiro |
|          6 | Flamengo | Rio de Janeiro |
|          5 | Centro   | Vitoria        |
+------------+----------+----------------+

select IDCliente, Nome, Email, bairro, Cidade
from cliente, Endereço
Where IDCliente = ID_Cliente;
+-----------+--------+----------------+----------+----------------+
| IDCliente | Nome   | Email          | bairro   | Cidade         |
+-----------+--------+----------------+----------+----------------+
|         1 | João   | joao@ig.com    | Centro   | Rio de Janeiro |
|         2 | Carlos | carlosa@ig.com | Estacio  | Rio de Janeiro |
|         3 | Ana    | ana@ig.com     | Jardins  | São Paulo      |
|         4 | Carla  | NULL           | Centro   | B. Horizonte   |
|         5 | Jorge  | jorge@ig.com   | Centro   | Vitoria        |
|         6 | Celia  | jcelia@ig.com  | Flamengo | Rio de Janeiro |
+-----------+--------+----------------+----------+----------------+

/*Pergunta 8*/
Select Nome, Sexo, Bairro, Cidade
from Cliente, Endereço
Where IDCliente = ID_Cliente;
+--------+------+----------+----------------+
| Nome   | Sexo | Bairro   | Cidade         |
+--------+------+----------+----------------+
| João   | M    | Centro   | Rio de Janeiro |
| Carlos | M    | Estacio  | Rio de Janeiro |
| Ana    | F    | Jardins  | São Paulo      |
| Carla  | F    | Centro   | B. Horizonte   |
| Jorge  | M    | Centro   | Vitoria        |
| Celia  | F    | Flamengo | Rio de Janeiro |
+--------+------+----------+----------------+

/*Pergunta 9*/
Select Nome, Sexo, Bairro, Cidade
from Cliente, Endereço
Where IDCliente = ID_Cliente 
And Sexo = 'F';

+-------+------+----------+----------------+
| Nome  | Sexo | Bairro   | Cidade         |
+-------+------+----------+----------------+
| Ana   | F    | Jardins  | São Paulo      |
| Carla | F    | Centro   | B. Horizonte   |
| Celia | F    | Flamengo | Rio de Janeiro |
+-------+------+----------+----------------+

/*Where IDCliente = ID_Cliente And Sexo = 'F' para de funcionar*/
/*Para funcionar pois para funcionar ambas tinham de ser verdadeiras*/

/*Pergunta 10*/
/*Para juntar tabelas corretamente temos de usar o Inner Join seguido de On*/
Select IDCLiente, Nome, Sexo, Bairro, Cidade
from Cliente
Inner Join Endereço
on IDCliente = ID_Cliente
Where sexo = 'F';
+-----------+-------+------+----------+----------------+
| IDCLiente | Nome  | Sexo | Bairro   | Cidade         |
+-----------+-------+------+----------+----------------+
|         3 | Ana   | F    | Jardins  | São Paulo      |
|         4 | Carla | F    | Centro   | B. Horizonte   |
|         6 | Celia | F    | Flamengo | Rio de Janeiro |
+-----------+-------+------+----------+----------------+

Select IDCLiente, Nome, Sexo, Bairro, Cidade
from Cliente
Inner Join Endereço
on IDCliente = ID_Cliente;

+-----------+--------+------+----------+----------------+
| IDCLiente | Nome   | Sexo | Bairro   | Cidade         |
+-----------+--------+------+----------+----------------+
|         1 | João   | M    | Centro   | Rio de Janeiro |
|         2 | Carlos | M    | Estacio  | Rio de Janeiro |
|         3 | Ana    | F    | Jardins  | São Paulo      |
|         4 | Carla  | F    | Centro   | B. Horizonte   |
|         5 | Jorge  | M    | Centro   | Vitoria        |
|         6 | Celia  | F    | Flamengo | Rio de Janeiro |
+-----------+--------+------+----------+----------------+

/*Pergunta 11*/
Select Nome, Sexo, Email, Tipo, Numero
from cliente
inner join Telefone
on IDCliente = ID_Cliente;
+--------+------+----------------+------+-----------+
| Nome   | Sexo | Email          | Tipo | Numero    |
+--------+------+----------------+------+-----------+
| João   | M    | joao@ig.com    | Tmov | 87866896  |
| João   | M    | joao@ig.com    | Res  | 99667857  |
| João   | M    | joao@ig.com    | Com  | 66687899  |
| Carlos | M    | carlosa@ig.com | Com  | 54768899  |
| Carlos | M    | carlosa@ig.com | Tmov | 88687909  |
| Ana    | F    | ana@ig.com     | Tmov | 78989765  |
| Ana    | F    | ana@ig.com     | Tmov | 9976666   |
| Jorge  | M    | jorge@ig.com   | Tmov | 78458743  |
| Jorge  | M    | jorge@ig.com   | Res  | 565576876 |
| Jorge  | M    | jorge@ig.com   | Res  | 89986668  |
+--------+------+----------------+------+-----------+

/*Pergunta 12*/
Select IDCliente, Nome, Sexo, Bairro, Cidade, Tipo, Numero
from cliente
Inner join Endereço
on IDCliente = Endereço.ID_Cliente
left join Telefone /*Inclui os elementos da tabela cliente que não telefone*/
On IDCliente = Telefone.ID_Cliente;
+-----------+--------+------+----------+----------------+------+-----------+
| IDCliente | Nome   | Sexo | Bairro   | Cidade         | Tipo | Numero    |
+-----------+--------+------+----------+----------------+------+-----------+
|         5 | Jorge  | M    | Centro   | Vitoria        | Tmov | 78458743  |
|         5 | Jorge  | M    | Centro   | Vitoria        | Res  | 565576876 |
|         1 | João   | M    | Centro   | Rio de Janeiro | Tmov | 87866896  |
|         2 | Carlos | M    | Estacio  | Rio de Janeiro | Com  | 54768899  |
|         1 | João   | M    | Centro   | Rio de Janeiro | Res  | 99667857  |
|         3 | Ana    | F    | Jardins  | São Paulo      | Tmov | 78989765  |
|         3 | Ana    | F    | Jardins  | São Paulo      | Tmov | 9976666   |
|         1 | João   | M    | Centro   | Rio de Janeiro | Com  | 66687899  |
|         5 | Jorge  | M    | Centro   | Vitoria        | Res  | 89986668  |
|         2 | Carlos | M    | Estacio  | Rio de Janeiro | Tmov | 88687909  |
|         4 | Carla  | F    | Centro   | B. Horizonte   | NULL | NULL      |
|         6 | Celia  | F    | Flamengo | Rio de Janeiro | NULL | NULL      |
+-----------+--------+------+----------+----------------+------+-----------+

/*Mostrar apenas os contactos de quem não tem telefone*/

Select IDCliente, Nome, Sexo, Bairro, Cidade, Tipo, Numero
from cliente
Inner join Endereço
on IDCliente = Endereço.ID_Cliente
left join Telefone /*Inclui os elementos da tabela cliente que não telefone*/
On IDCliente = Telefone.ID_Cliente
Where tipo is null;
+-----------+-------+------+----------+----------------+------+--------+
| IDCliente | Nome  | Sexo | Bairro   | Cidade         | Tipo | Numero |
+-----------+-------+------+----------+----------------+------+--------+
|         4 | Carla | F    | Centro   | B. Horizonte   | NULL | NULL   |
|         6 | Celia | F    | Flamengo | Rio de Janeiro | NULL | NULL   |
+-----------+-------+------+----------+----------------+------+--------+

/*Utilizar alcunhas para nomear tabelas*/

Select C.IDCliente, C.Nome, C.Sexo, E.Bairro, E.Cidade, T.Tipo, T.Numero
from Cliente C
Inner join Endereço E
on C.IDCliente = E.ID_Cliente
left join Telefone T/*Inclui os elementos da tabela cliente que não telefone*/
On C.IDCliente = T.ID_Cliente;

+-----------+--------+------+----------+----------------+------+-----------+
| IDCliente | Nome   | Sexo | Bairro   | Cidade         | Tipo | Numero    |
+-----------+--------+------+----------+----------------+------+-----------+
|         5 | Jorge  | M    | Centro   | Vitoria        | Tmov | 78458743  |
|         5 | Jorge  | M    | Centro   | Vitoria        | Res  | 565576876 |
|         1 | João   | M    | Centro   | Rio de Janeiro | Tmov | 87866896  |
|         2 | Carlos | M    | Estacio  | Rio de Janeiro | Com  | 54768899  |
|         1 | João   | M    | Centro   | Rio de Janeiro | Res  | 99667857  |
|         3 | Ana    | F    | Jardins  | São Paulo      | Tmov | 78989765  |
|         3 | Ana    | F    | Jardins  | São Paulo      | Tmov | 9976666   |
|         1 | João   | M    | Centro   | Rio de Janeiro | Com  | 66687899  |
|         5 | Jorge  | M    | Centro   | Vitoria        | Res  | 89986668  |
|         2 | Carlos | M    | Estacio  | Rio de Janeiro | Tmov | 88687909  |
|         4 | Carla  | F    | Centro   | B. Horizonte   | NULL | NULL      |
|         6 | Celia  | F    | Flamengo | Rio de Janeiro | NULL | NULL      |
+-----------+--------+------+----------+----------------+------+-----------+

/*Fim do exercício 4*/

/*Exercício 5*/
/*Pergunta 1*/

Create database Café;

/*Pergunta 2*/
Use café

/*Pergunta 3*/
create table Refeição(
	ID_Refeição int primary key auto_increment,
	Refeição varchar(100)
	);

/*Pergunta 4*/	
Create table Bebida(
	Bebida varchar(100)
	);
	
/*Pergunta 5*/
insert into Refeição(Refeição) VALUES
('Prego em Prato'),
('Arroz de Pato'),
('Peixe Grelhado');

/*Pergunta 6*/
Insert into Bebida (Bebida) Values
('Coca-Cola'),
('Ice-Tea'),
('Sumo');

/*Pergunta 7*/
Select * from refeição;
+---------------+----------------+
| ID_Refeição   | Refeição       |
+---------------+----------------+
|             1 | Prego em Prato |
|             2 | Arroz de Pato  |
|             3 | Peixe Grelhado |
+---------------+----------------+

Select * from bebida;
+-----------+
| Bebida    |
+-----------+
| Coca-Cola |
| Ice-Tea   |
| Sumo      |
+-----------+

/*Pergunta 8*/
/*Juntar as tabelas usando o cross join*/
Select * from refeição
cross join bebida;
+---------------+----------------+-----------+
| ID_Refeição   | Refeição       | Bebida    |
+---------------+----------------+-----------+
|             1 | Prego em Prato | Coca-Cola |
|             2 | Arroz de Pato  | Coca-Cola |
|             3 | Peixe Grelhado | Coca-Cola |
|             1 | Prego em Prato | Ice-Tea   |
|             2 | Arroz de Pato  | Ice-Tea   |
|             3 | Peixe Grelhado | Ice-Tea   |
|             1 | Prego em Prato | Sumo      |
|             2 | Arroz de Pato  | Sumo      |
|             3 | Peixe Grelhado | Sumo      |
+---------------+----------------+-----------+

/*Pergunta 9*/
select concat_ws(' - ', refeição, bebida) as menu
from refeição
cross join bebida;

+----------------------------+
| menu                       |
+----------------------------+
| Prego em Prato - Coca-Cola |
| Arroz de Pato - Coca-Cola  |
| Peixe Grelhado - Coca-Cola |
| Prego em Prato - Ice-Tea   |
| Arroz de Pato - Ice-Tea    |
| Peixe Grelhado - Ice-Tea   |
| Prego em Prato - Sumo      |
| Arroz de Pato - Sumo       |
| Peixe Grelhado - Sumo      |
+----------------------------+

/*Pergunta 10*/
Create table menu(
	ID_Refeição int,
	Refeição varchar(100),
	Bebida Varchar(100)
	);

/*Pergunta 11*/
insert into menu(ID_Refeição, Refeição, Bebida)
select * from refeição
cross join bebida;

select * from menu;
+---------------+----------------+-----------+
| ID_Refeição   | Refeição       | Bebida    |
+---------------+----------------+-----------+
|             1 | Prego em Prato | Coca-Cola |
|             2 | Arroz de Pato  | Coca-Cola |
|             3 | Peixe Grelhado | Coca-Cola |
|             1 | Prego em Prato | Ice-Tea   |
|             2 | Arroz de Pato  | Ice-Tea   |
|             3 | Peixe Grelhado | Ice-Tea   |
|             1 | Prego em Prato | Sumo      |
|             2 | Arroz de Pato  | Sumo      |
|             3 | Peixe Grelhado | Sumo      |
+---------------+----------------+-----------+

/*Pergunta 12*/
Create table menu_2(
	Menu Varchar(100)
	);

insert into menu_2(menu)
	select concat_ws(' - ', Refeição, Bebida) as Menu
	from refeição
	cross join bebida;

select * from menu_2;
+----------------------------+
| Menu                       |
+----------------------------+
| Prego em Prato - Coca-Cola |
| Arroz de Pato - Coca-Cola  |
| Peixe Grelhado - Coca-Cola |
| Prego em Prato - Ice-Tea   |
| Arroz de Pato - Ice-Tea    |
| Peixe Grelhado - Ice-Tea   |
| Prego em Prato - Sumo      |
| Arroz de Pato - Sumo       |
| Peixe Grelhado - Sumo      |
+----------------------------+

/*Fim do exercício 5*/

/*Exercício 6*/

/*Criar a base de dados associação de estudantes*/

CREATE DATABASE Associação_Estudantes;

Use Associação_Estudantes;

CREATE TABLE Aluno (
NumProcesso INTEGER PRIMARY KEY,
Ano INTEGER not null,
Nome VARCHAR(100) not null,
Turma VARCHAR(10) not null,
NumAluno INTEGER not null
);

/*
Query OK, 0 rows affected (0.03 sec)
mysql> desc Aluno;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| NumProcesso | int(11)      | NO   | PRI | NULL    |       |
| Ano         | int(11)      | NO   |     | NULL    |       |
| Nome        | varchar(100) | NO   |     | NULL    |       |
| Turma       | varchar(10)  | NO   |     | NULL    |       |
| NumAluno    | int(11)      | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
*/

CREATE TABLE Atividades (
NumAtividade INTEGER PRIMARY KEY,
AnoAtividade CHAR(7) not null,
NomeAtividade VARCHAR(100) not null,
DataInicio DATE,
DataFim DATE,
Colaboradores VARCHAR(100),
Patrocinadores VARCHAR(100)
);

/*
Query OK, 0 rows affected (0.03 sec)
mysql> desc Atividades;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| NumAtividade   | int(11)      | NO   | PRI | NULL    |       |
| AnoAtividade   | char(7)      | NO   |     | NULL    |       |
| NomeAtividade  | varchar(100) | NO   |     | NULL    |       |
| DataInicio     | date         | YES  |     | NULL    |       |
| DataFim        | date         | YES  |     | NULL    |       |
| Colaboradores  | varchar(100) | YES  |     | NULL    |       |
| Patrocinadores | varchar(100) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
*/

CREATE TABLE Inscrições (
NumInscrição INTEGER PRIMARY KEY,
NumProcesso int not null,
NumAtividade int not null,
DataInscrição DATE default '2009-01-01',
foreign key (NumProcesso)
references Aluno (NumProcesso),
foreign key (NumAtividade)
references Atividades(NumAtividade)
);

/*
Query OK, 0 rows affected (0.04 sec)
mysql> desc Inscrições;
+-----------------+---------+------+-----+------------+-------+
| Field           | Type    | Null | Key | Default    | Extra |
+-----------------+---------+------+-----+------------+-------+
| NumInscrição    | int(11) | NO   | PRI | NULL       |       |
| NumProcesso     | int(11) | NO   | MUL | NULL       |       |
| NumAtividade    | int(11) | NO   | MUL | NULL       |       |
| DataInscrição   | date    | YES  |     | 2009-01-01 |       |
+-----------------+---------+------+-----+------------+-------+
4 rows in set (0.00 sec)
*/

insert into Aluno values
(10020, 12, 'Bruno Silva','D', 2),
(10098, 11, 'Gustavo Moreira','E', 9),
(10123, 11, 'Hugo Filipe','E', 9),
(10934, 8, 'Célia Tavares','E', 3),
(11409, 7, 'Isabel Neves','A', 12);

insert into Atividades values
(1, '2009/10', 'Corta mato', '2009-10-21', '2009-10-21', null, null),
(2, '2010/11', 'Comemorações da Implementação da República', '2010-10-04', '2010-10-04',
'Prof Alberto Gomes', 'Camâra Municipal'),
(3, '2010/11', 'Corta mato', '2010-10-20', '2010-10-20', null, null),
(4, '2010/11', 'Festa de Natal', '2010-12-17', '2010-12-17', 'Prof Ana Santos', null);


insert into Inscrições (NumInscrição, NumProcesso,
NumAtividade, DataInscrição) values
(1, 10934, 1, '2010-07-27'),
(2, 10020, 1, '2010-09-29'),
(3, 10123, 2, '2010-10-14'),
(4, 10098, 2, '2010-10-14'),
(5, 10123, 3, '2010-12-03'),
(6, 11409, 3, '2010-12-06'),
(7, 10020, 3, '2010-12-07'),
(8, 10934, 3, '2010-12-10');


/* fim de exercico 6*/

/*Exercicio 7*/
/*Construir consultas*/

select * from Aluno;
select * from Atividades;
select * from Inscrições;

/* crie uma consulta que mostre o nome, numero do aluno, nome atividade as atividades, numero e data de inscrição (apenas alunos inscritos em atividades)*/

Select NumAluno, Nome, NomeAtividade as Atividade, NumInscrição, DataInscrição
from Aluno
inner join Inscrições I 
on I.NumProcesso = Aluno.NumProcesso
inner join Atividades A
on A.NumAtividade = I.NumAtividade;


+----------+-----------------+-------------------------------------------------+----------------+-----------------+
| NumAluno | Nome            | Atividade                                       | NumInscrição   | DataInscrição   |
+----------+-----------------+-------------------------------------------------+----------------+-----------------+
|        3 | Célia Tavares   | Corta mato                                      |              1 | 2010-07-27      |
|        2 | Bruno Silva     | Corta mato                                      |              2 | 2010-09-29      |
|        9 | Hugo Filipe     | Comemorações da Implementação da República      |              3 | 2010-10-14      |
|        9 | Gustavo Moreira | Comemorações da Implementação da República      |              4 | 2010-10-14      |
|        9 | Hugo Filipe     | Corta mato                                      |              5 | 2010-12-03      |
|       12 | Isabel Neves    | Corta mato                                      |              6 | 2010-12-06      |
|        2 | Bruno Silva     | Corta mato                                      |              7 | 2010-12-07      |
|        3 | Célia Tavares   | Corta mato                                      |              8 | 2010-12-10      |
+----------+-----------------+-------------------------------------------------+----------------+-----------------+

/*Repita o passo anterior mas ordene por Numero do Aluno*/

Select NumAluno, Nome, NomeAtividade as Atividade, NumInscrição, DataInscrição
from Aluno
inner join Inscrições I 
on I.NumProcesso = Aluno.NumProcesso
inner join Atividades A
on A.NumAtividade = I.NumAtividade
order by NumAluno;


+----------+-----------------+-------------------------------------------------+----------------+-----------------+
| NumAluno | Nome            | Atividade                                       | NumInscrição   | DataInscrição   |
+----------+-----------------+-------------------------------------------------+----------------+-----------------+
|        2 | Bruno Silva     | Corta mato                                      |              2 | 2010-09-29      |
|        2 | Bruno Silva     | Corta mato                                      |              7 | 2010-12-07      |
|        3 | Célia Tavares   | Corta mato                                      |              8 | 2010-12-10      |
|        3 | Célia Tavares   | Corta mato                                      |              1 | 2010-07-27      |
|        9 | Hugo Filipe     | Corta mato                                      |              5 | 2010-12-03      |
|        9 | Hugo Filipe     | Comemorações da Implementação da República      |              3 | 2010-10-14      |
|        9 | Gustavo Moreira | Comemorações da Implementação da República      |              4 | 2010-10-14      |
|       12 | Isabel Neves    | Corta mato                                      |              6 | 2010-12-06      |
+----------+-----------------+-------------------------------------------------+----------------+-----------------+

/*Verifique se há alguma atividade sem inscrições, ordenar por número do aluno*/

Select NumAluno, Nome, NomeAtividade as Atividade, NumInscrição, DataInscrição
from Aluno
inner join Inscrições I 
on I.NumProcesso = Aluno.NumProcesso
right join Atividades A
on A.NumAtividade = I.NumAtividade
order by NumAluno;

+----------+-----------------+-------------------------------------------------+----------------+-----------------+
| NumAluno | Nome            | Atividade                                       | NumInscrição   | DataInscrição   |
+----------+-----------------+-------------------------------------------------+----------------+-----------------+
|     NULL | NULL            | Festa de Natal                                  |           NULL | NULL            |
|        2 | Bruno Silva     | Corta mato                                      |              2 | 2010-09-29      |
|        2 | Bruno Silva     | Corta mato                                      |              7 | 2010-12-07      |
|        3 | Célia Tavares   | Corta mato                                      |              8 | 2010-12-10      |
|        3 | Célia Tavares   | Corta mato                                      |              1 | 2010-07-27      |
|        9 | Hugo Filipe     | Corta mato                                      |              5 | 2010-12-03      |
|        9 | Hugo Filipe     | Comemorações da Implementação da República      |              3 | 2010-10-14      |
|        9 | Gustavo Moreira | Comemorações da Implementação da República      |              4 | 2010-10-14      |
|       12 | Isabel Neves    | Corta mato                                      |              6 | 2010-12-06      |
+----------+-----------------+-------------------------------------------------+----------------+-----------------+

Select NumAluno, Nome, NomeAtividade as Atividade, NumInscrição, DataInscrição
from Aluno
inner join Inscrições I 
on I.NumProcesso = Aluno.NumProcesso
right join Atividades A
on A.NumAtividade = I.NumAtividade
where Numinscrição is Null
order by NumAluno;
+----------+------+----------------+----------------+-----------------+
| NumAluno | Nome | Atividade      | NumInscrição   | DataInscrição   |
+----------+------+----------------+----------------+-----------------+
|     NULL | NULL | Festa de Natal |           NULL | NULL            |
+----------+------+----------------+----------------+-----------------+

/*Crie uma view */


/* Use a view V_AEstudantes
Mostre o NumProcesso, NumAluno, Nome, Ano, Turma, 
NomeAtividade como Atividade, DataInicio, DataFim, NumProcesso*/

CREATE view V_AEstudantes as 
SELECT Aluno.NumProcesso, Nome, Ano, Turma, NumAluno, A.NumAtividade, NomeAtividade, DataInicio, DataFim, Colaboradores, Patrocinadores, NumInscrição, DataInscrição 
from aluno
inner join Inscrições I
on I.NumProcesso = Aluno.NumProcesso
right join Atividades A 
on A.NumAtividade = I.NumAtividade 
order by NumAluno;

/*
Notas do codigo anterior:

Certainly! Let's break down the code step by step:

CREATE VIEW V_AEstudantes AS: This line creates a new view named V_AEstudantes.

SELECT Aluno.NumProcesso, Ano, Turma, NumAluno, A.NumAtividade, NomeAtividade, DataInicio, DataFim, Colaboradores, Patrocinadores,
DataInscrições: This line specifies the columns that will be included in the view. These columns are selected from the tables aluno,
Inscrições, and A.NumAtividade. The columns mentioned are NumProcesso, Ano, Turma, NumAluno, A.NumAtividade, NomeAtividade, DataInicio, 
DataFim, Colaboradores, Patrocinadores, and DataInscrições.

FROM aluno: This line specifies that the data is being fetched from the table named aluno.

INNER JOIN Inscrições I ON I.NumProcesso = Aluno.NumProcesso: This line performs an inner join between the table aluno and the 
table Inscrições based on the common column NumProcesso. This means that only the rows that have matching values in the column 
NumProcesso in both tables will be included in the result set.

RIGHT JOIN A.NumAtividade A ON A.NumAtividade = I.NumAtividade: This line performs a right join between the result obtained 
from the previous step and the table A.NumAtividade based on the common column NumAtividade. This means that all the rows from 
the right table (A.NumAtividade) and the matching rows from the left table (the previous result set) will be included in the result set.

ORDER BY NumAluno: This line specifies that the result set should be ordered based on the column NumAluno in ascending order.

In summary, this code creates a view named V_AEstudantes which selects specific columns from the tables aluno, Inscrições, and 
A.NumAtividade. It performs an inner join between aluno and Inscrições based on the common column NumProcesso, followed by a right 
join between the previous result set and A.NumAtividade based on the common column NumAtividade. Finally, the result set is ordered 
based on the column NumAluno.


*/


desc V_AEstudantes;

SELECT NumProcesso, NumAluno, Nome, Ano, Turma, NumAtividade as Atividade, DataInicio, DataFim, NumInscrição
from V_AEstudantes;


select NumProcesso, NumAluno, Nome, Ano, Turma, NumAtividade as Atividade, DataInicio, DataFim, NumInscrição
from V_AEstudantes;

/* Mostre o Nome da atividade, colaboradores, patrocionadores, e nome do aluno*/

select NomeAtividade, Colaboradores, Patrocinadores, Nome 
from V_AEstudantes;

/* Mostre o nome do aluno, nomeatividade, datainicio e datafim com as datas no formato d-m-a(4)*/

SELECT Nome, NomeAtividade, date_format(DataInicio, '%d-%m-%Y') as 'Data Inicio',
date_format(DataFim, '%w %d-%M-%Y') as 'Data de Fim'
from V_AEstudantes;


/* Exercicio 8*/

use comercio;

select C.Nome, C.Sexo, E.Bairro, E.Cidade, T.Tipo, T.numero, 
from cliente C  
inner join endereço E
on C.IDCliente = E.ID_Cliente
left join telefone T
on C.IDCliente = T.ID_Cliente; 


/*Estudo das trigger*/
/* a trigger é um gatilho que vai disparar algo que nos programamos a trigger vigia uma tabela 

CREATE Trigger Nome  
Before / After Insert/Delete/UPDATE ON tabela (nome da tabela)
For each row (para cade linha da uma tabela)

Begin -> Inicio
	Qualquer comando em SQL 
End 

/* Fim de estrutura da trigger*/
/* Uma trigger fica sempre entre delimiter*/

/* nova base de dados*/

create database Aula; 

use Aula; 

create table utilizador ( 
	IDUtilizador int primary key auto_increment,
	Nome varchar(30),
	Login varchar(30),
	Senha varchar (100)
);

/*Pergunta7*/
/*criar tabela de backup do utilizador*/
create table BKP_utilizador (
	IDBackup Int primary key AUTO_INCREMENT,
	IDutilizador Int,
	Nome varchar (30),
	Login varchar (30)
);

/*Pergunta 8. criar uma trigger, que sempre que se apague um utilizador da tabela utilizador o copie para a tabela backup*/

delimiter $

CREATE trigger BACKUP
after delete on utilizador
for each ROW

begin
	insert into BKP_utilizador (IDBackup, IDUtilizador, Nome, Login) values 
	(null, old.IDutilizador, old.Nome, old.Login);
end $ 

delimiter ; 

/* pergunta9, inserir utilizadores na tabela utilizadores*/

insert into utilizador values 
(null, 'Andrade','Andrade2009', 'Hexacampeao'),
(null, 'Manuel', 'Antunes2021', 'PiscaPisca');

/*mostrar todos os campos em ambas as tabelas*/ 

select * from utilizador;

select * from BKP_utilizador;

/* pergunta 10. apague na tabela utilizador o utilizador com id=1, verifique o que acontece em ambas as tabelas*/

delete from utilizador
where IDutilizador = 1;

/*pergunta 11 repor os dados na tabela utilizador*/
insert into utilizador (IDutilizador, Nome, Login)
select IDutilizador, Nome, Login from bkp_utilizador
where IDUtilizador = 1;


/*exercicio 9*/
create database Loja;

use Loja; 

create table Produto(
	IDProduto int PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(30),
	Valor float (10,2)
); 

CREATE database BKP_Loja; 

use BKP_Loja; 

create table BKP_Produto (
	IDBKP_Produto int PRIMARY KEY AUTO_INCREMENT,
	IDProduto int, 
	Nome varchar (30),
	Valor float (10.2)
);

use loja; 

/* pergunta 10, estando na base de dados loja inserir um produto na base de dados BKP_Loja*/

insert into BKP_loja.BKP_Produto (
	IDBKP_Produto,
	IDProduto,
	Nome,
	Valor
) VAlues 
(null, 1000, 'Teste', 0.0); 

/*Pergunta 12 sempre que inserir um produto na tabela produto da base de dados loja, criar uma copia na tabela bkp_produto da base de dados bkp_loja */
/*criar a trigger backup_produto*/
/*before de inserir*/
use loja;

delimiter $

create trigger backup_Produto
Before insert on Produto
for each row 
BEGIN
	insert into BKP_loja.BKP_Produto (IDBKP_Produto, IDProduto, Nome, valor) VALUES
	(Null, new.IDProduto, new.Nome, new.valor);
END $ 

delimiter ; 

/* pergunta 13, inserir produtos na base de dados loja*/

use loja;

insert into produto (IDProduto, Nome, Valor) values 
(Null, 'Livro Modelagem', 50.00),
(null, 'Livro BI', 80.00),
(null, 'Livro Oracle', 70.00),
(null, 'Livro SQL server', 1000.00);


/*Pergunta 14*/

select * from produto;

/*pergunta 15*/

use loja;

delimiter $

create trigger backup_Produto_Del
BEFORE delete on Produto
for each row 
begin 
	insert into BKP_Loja.BKP_Produto values 
	(null, old.IDProduto, old.Nome, old.Valor);
end $ 

delimiter ; 

/* pergunta 16*/
select * from BKP_loja.BKP_Produto;

/* pergunta 17*/

delete from produto
where IDProduto = 2; 

/* pergunta 18*/
select * from BKP_loja.BKP_Produto;

/*Pergunta 19*/

show trigger; 

use bkp_loja; 

/* Pergunta 21, resolvida em debate*/
 drop trigger backup_Produto; 

/*Pergunta 22*/

delimiter $

create trigger Backup_Produto
after insert on Produto
for each row 
begin 
	Insert into BKP_Loja.BKP_Produto values 
	(Null, new.IDProduto, new.Nome, new.valor);
end$

delimiter ;

/*Pergunta 23*/

insert into Produto (IDProduto, Nome, Valor) values
(Null, 'Microcontroladores', 50.00),
(Null, 'Livro C#', 80.00);

/*Pergunta 24*/

select * from produto;
+-----------+--------------------+--------+
| IDProduto | Nome               | Valor  |
+-----------+--------------------+--------+
|         1 | Livro Modelagem    |  50.00 |
|         3 | Livro Oracle       |  70.00 |
|         4 | Livro SQL Server   | 100.00 |
|         5 | Microcontroladores |  50.00 |
|         6 | Livro C#           |  80.00 |
+-----------+--------------------+--------+

select * from bkp_loja.bkp_produto;

/*Fim do Exercício 9*/

/*Extra*/

/*Imprimir do SQL para um ficheiro*/

/*Criar o ficheiro de destino como txt dentro de uma pasta*/

/*C:\copias\destino.txt */

/*No MYSQL Escrever

Tee c:\copias\destino.text
*/

/*Reposta do mysql
Logging to file 'c:\copias\Destino.txt'

*/

/*Para terminar so MYSQL Escreva notee */

/*Resposta do mysql
Outfile disabled.
/*

/*Para mandar para impressão aceda ao cmd do Windows*/
/*Escreva
	notepad /p c:/copias/destino.txt 
	*/

insert into Produto (IDProduto, Nome, Valor) values
(Null, 'Microcontroladores_2', 50.00),
(Null, 'Livro C++', 80.00);

/*Fim de Extra*/

/*Exercício 10*/
/*Pergunta 1 */
use loja

/*Pergunta 2 */
Alter table BKP_Loja.BKP_Produto
add column Evento char(1); 

/*Pergunta 3 */

desc BKP_Loja.BKP_Produto;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| IDBKP_Produto | int(11)     | NO   | PRI | NULL    | auto_increment |
| IDProduto     | int(11)     | YES  |     | NULL    |                |
| Nome          | varchar(30) | YES  |     | NULL    |                |
| valor         | float(10,2) | YES  |     | NULL    |                |
| Evento        | char(1)     | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+

/*Pergunta 4*/

select * from produto;
+-----------+----------------------+--------+
| IDProduto | Nome                 | Valor  |
+-----------+----------------------+--------+
|         1 | Livro Modelagem      |  50.00 |
|         3 | Livro Oracle         |  70.00 |
|         4 | Livro SQL Server     | 100.00 |
|         5 | Microcontroladores   |  50.00 |
|         6 | Livro C#             |  80.00 |
|         7 | Microcontroladores_2 |  50.00 |
|         8 | Livro C++            |  80.00 |
+-----------+----------------------+--------+

select * from bkp_loja.bkp_produto;

+---------------+-----------+----------------------+--------+--------+
| IDBKP_Produto | IDProduto | Nome                 | valor  | Evento |
+---------------+-----------+----------------------+--------+--------+
|             1 |      1000 | Teste                |   0.00 | NULL   |
|             2 |         0 | Livro Modelagem      |  50.00 | NULL   |
|             3 |         0 | Livro BI             |  80.00 | NULL   |
|             4 |         0 | Livro Oracle         |  70.00 | NULL   |
|             5 |         0 | Livro SQL Server     | 100.00 | NULL   |
|             6 |         2 | Livro BI             |  80.00 | NULL   |
|             7 |         5 | Microcontroladores   |  50.00 | NULL   |
|             8 |         6 | Livro C#             |  80.00 | NULL   |
|             9 |         7 | Microcontroladores_2 |  50.00 | NULL   |
|            10 |         8 | Livro C++            |  80.00 | NULL   |
+---------------+-----------+----------------------+--------+--------+

/*Pergunta 5*/

drop trigger Backup_Produto_Del;

/*Pergunta 6*/

delimiter $

Create trigger Backup_Produto_Del
Before delete on Produto
for each row

Begin 
 insert into BKP_Loja.BKP_Produto ( IDBKP_Produto, IDProduto, Nome, Valor, Evento) values
 (null, old.IDproduto, old.Nome, old.valor, 'D');
	
End $

Delimiter ;

/*Pergunta 7*/

delete from produto
where IDProduto = 4;

/*Pergunta 8*/
select * from produto;
+-----------+----------------------+-------+
| IDProduto | Nome                 | Valor |
+-----------+----------------------+-------+
|         1 | Livro Modelagem      | 50.00 |
|         3 | Livro Oracle         | 70.00 |
|         5 | Microcontroladores   | 50.00 |
|         6 | Livro C#             | 80.00 |
|         7 | Microcontroladores_2 | 50.00 |
|         8 | Livro C++            | 80.00 |
+-----------+----------------------+-------+

select * from bkp_loja.bkp_produto;

+---------------+-----------+----------------------+--------+--------+
| IDBKP_Produto | IDProduto | Nome                 | valor  | Evento |
+---------------+-----------+----------------------+--------+--------+
|             1 |      1000 | Teste                |   0.00 | NULL   |
|             2 |         0 | Livro Modelagem      |  50.00 | NULL   |
|             3 |         0 | Livro BI             |  80.00 | NULL   |
|             4 |         0 | Livro Oracle         |  70.00 | NULL   |
|             5 |         0 | Livro SQL Server     | 100.00 | NULL   |
|             6 |         2 | Livro BI             |  80.00 | NULL   |
|             7 |         5 | Microcontroladores   |  50.00 | NULL   |
|             8 |         6 | Livro C#             |  80.00 | NULL   |
|             9 |         7 | Microcontroladores_2 |  50.00 | NULL   |
|            10 |         8 | Livro C++            |  80.00 | NULL   |
|            11 |         4 | Livro SQL Server     | 100.00 | D      |
+---------------+-----------+----------------------+--------+--------+

/*Pergunta 9*/
/*Respondida teoricamente*/

/*Fim do exercício 10*/

/*Exercício 11*/

/*Pergunta 1*/

Create database Loja_1;


/*Pergunta 2*/

use Loja_1


/*Pergunta 3*/

create table Produto (
	IDProduto int auto_increment primary key,
	Nome varchar(30),
	Valor float(10,2)
	);

/*Pergunta 4*/

Insert into Produto values
(Null, 'Livro de Modelagem', 50),
(Null, 'Livro BI', 80),
(Null, 'Livro Oracle', 70),
(null, 'Livro SQL Server', 100);

/*Pergunta 5*/

select now() as data_atual;

+---------------------+
| data_atual          |
+---------------------+
| 2023-08-03 19:52:23 |
+---------------------+

/*Pergunta 6*/

select current_user() as Utilizador;

+----------------+
| Utilizador     |
+----------------+
| root@localhost |
+----------------+

/*Pergunta 7*/

create database backup;

/*Pergunta 8*/

use backup

/*Pergunta 9*/

create table BKP_Produto(
	IDBackup int auto_increment primary key,
	IDProduto int,
	Nome varchar(30),
	Valor_Original float(10,2),
	Valor_Aleterado float(10,2),
	Data Datetime,
	Utilizador varchar(30),
	Evento char(1)
	);


/*Pergunta 10*/

use loja_1

/*Pergunta 11*/

delimiter $

create trigger BKP_Produto
after update on produto
for each row
begin
	insert into BACKUP.BKP_Produto (IDBackup, IDProduto, Nome, Valor_Original, Valor_Aleterado, Data, 
	Utilizador, Evento) values
	(Null, old.IDProduto, old.Nome, old.valor, new.valor, now(), current_user(), 'U');
	end $
	
delimiter ;


/*Pergunta 12*/

update Produto
set valor = 110
Where IDProduto = 4;


/*extra mudar cumprimento do campo*/
alter table BKP_Produto
modify column nome varchar(30);

/*fim de extra*/

select * from produto;
+-----------+--------------------+--------+
| IDProduto | Nome               | Valor  |
+-----------+--------------------+--------+
|         1 | Livro de Modelagem |  50.00 |
|         2 | Livro BI           |  80.00 |
|         3 | Livro Oracle       |  70.00 |
|         4 | Livro SQL Server   | 110.00 |
+-----------+--------------------+--------+

select * from backup.BKP_Produto;

+----------+-----------+------------------+----------------+-----------------+---------------------+----------------+--------+
| IDBackup | IDProduto | nome             | Valor_Original | Valor_Aleterado | Data                | Utilizador     | Evento |
+----------+-----------+------------------+----------------+-----------------+---------------------+----------------+--------+
|        1 |         4 | Livro SQL Server |         100.00 |          110.00 | 2023-08-03 20:45:16 | root@localhost | U      |
+----------+-----------+------------------+----------------+-----------------+---------------------+----------------+--------+

/*Criar uma trigger que faça o backup quando se apaga um produto na tabela produto*/

delimiter $

create trigger BKP_Produto_Del
before delete on Produto
for each row
BEGIN
insert into BACKUP.BKP_Produto (IDBackup, IDProduto, Nome, Valor_Original, Data, 
	Utilizador, Evento) values
	(Null, old.IDProduto, old.Nome, Old.valor, now(), current_user(), 'D');
end $

delimiter ;


/*Apagar IDProduto = 3 da tabela produto*/

select * from produto;
+-----------+--------------------+--------+
| IDProduto | Nome               | Valor  |
+-----------+--------------------+--------+
|         1 | Livro de Modelagem |  50.00 |
|         2 | Livro BI           |  80.00 |
|         3 | Livro Oracle       |  70.00 |
|         4 | Livro SQL Server   | 110.00 |
+-----------+--------------------+--------+

delete from produto
where IDproduto = 3;

select * from produto;
+-----------+--------------------+--------+
| IDProduto | Nome               | Valor  |
+-----------+--------------------+--------+
|         1 | Livro de Modelagem |  50.00 |
|         2 | Livro BI           |  80.00 |
|         4 | Livro SQL Server   | 110.00 |
+-----------+--------------------+--------+

select * from backup.BKP_Produto;

+----------+-----------+------------------+----------------+-----------------+---------------------+----------------+--------+
| IDBackup | IDProduto | nome             | Valor_Original | Valor_Aleterado | Data                | Utilizador     | Evento |
+----------+-----------+------------------+----------------+-----------------+---------------------+----------------+--------+
|        1 |         4 | Livro SQL Server |         100.00 |          110.00 | 2023-08-03 20:45:16 | root@localhost | U      |
|        2 |         3 | Livro Oracle     |          70.00 |            NULL | 2023-08-03 21:27:40 | root@localhost | D      |
+----------+-----------+------------------+----------------+-----------------+---------------------+----------------+--------+

/*Gerir cópias de segurança*/
/*Vamos usar a linha de comandos do Windows(cmd)*/
/*Vamos fazer o backup da base de dados Comercio*/

/*Versão  X86*/

cd c:\Programas\MYSQL\MYSQL Server 5.7\bin

/*Versão X64*/

cd c:\program files (x86)\MYSQL\MYSQL server 5.7\bin

/*A linha de comandos fica*/

c:\Programas\MYSQL\MYSQL Server 5.7\bin

ou

c:\program files (x86)\MYSQL\MYSQL server 5.7\bin

/*É necessário criar uma pasta com o nome copias em c: para guardar os backups*/

/*Na linha de comando ainda no cmd escrevemos*/

mysqldump -u root -p Comercio > c:\copias\BKP_Comercio.sql

/*Criar um ficheiro que faça o processo de copia*/
/*Para isso crie um ficheiro *.bat C_Comercio.bat, usando o notpad*/

/*Criar um ficheiro bat com o nome BKP_Comercio.bat*/

/*Colocar dentro do ficheiro as seguintes linhas de comando*/

echo off
echo "Efetuar backup da base de dados Loja"
pause
cd c:\programas\mysql\mysql server 5.7\bin
REM cd c:\program files (x86)\MYSQL\MYSQL server 5.7\bin
mysqldump -u root -p Aula > c:\copias\Copia_Aula.sql

/*Guardar o ficheiro novamente*/

/*Fazer a reposição da base de dados Comercio*/

/*Na janela de comandos do MySql vamos criar a base de dados para receber a copia da base de dados comercio*/

create database Copia_Comercio_1;

/*Digitar estes comandos no cmd*/

cd c:\program files (x86)\MYSQL\MYSQL server 5.7\bin 

cd c:\Programas\MYSQL\MYSQL Server 5.7\bin

mysql -u root -p Copia_Comercio < c:\copias\Copia_Comercio.sql


/*Criar um ficheiro bat com o nome Repoe_Comercio.bat*/
/*
echo off
echo "Efetuar a reposição da base de dados Comercio"
pause

cd c:\Programas\MYSQL\MYSQL Server 5.7\bin

REM cd c:\program files (x86)\MYSQL\MYSQL server 5.7\bin 

mysql -u root -p -e "create database Copia_Comercio_1;"

pause

echo "Copia a base de dados Comercio"
mysql -u root -p Copia_Comercio_1 < c:\copias\Copia_Comercio.sql

*/

/*Guarde o Ficheiro*/


/*Exercício 11*/

Create database Revisoes;
use Revisões

Create table Reg_Cliente (
	Nome_Cliente varchar(30),
	Sobrenome varchar(30),
	Dt_Registo date
	);
	
Create table Aud_Registo(
	Dt_Audit date, /*Regista a data sempre que insiro um cliente novo*/
	Nome_Cliente varchar(30),
	Sobrenome varchar(30),
	Dt_Registo date
	);
	
/*Criar uma trigger Trg_Reg_Cliente que regista um cliente sempre que é inserido na tabela Reg_Cliente*/

delimiter $

Create trigger Trg_Reg_Cliente
before insert on Reg_Cliente
for each row
begin

	insert into Aud_Registo(Dt_Audit, Nome_Cliente, Sobrenome, Dt_Registo) values
	(curdate(), new.Nome_Cliente, new.Sobrenome, new.Dt_Registo);
End$

Delimiter ;

/*Inserir elementos para testar a trigger*/

insert into Reg_Cliente values
('Alice', 'Pereira', '2019-11-04'),
('Antonio', 'Ferreira', '2020-05-15'),
('Adriano','Peixoto', '2018-06-25');


/*Verificar que os registos foram feitos em ambas as tabelas*/

select * from Reg_Cliente;

+--------------+-----------+------------+
| Nome_Cliente | Sobrenome | Dt_Registo |
+--------------+-----------+------------+
| Alice        | Pereira   | 2019-11-04 |
| Antonio      | Ferreira  | 2020-05-15 |
| Adriano      | Peixoto   | 2018-06-25 |
+--------------+-----------+------------+

select * from Aud_Registo;

+------------+--------------+-----------+------------+
| Dt_Audit   | Nome_Cliente | Sobrenome | Dt_Registo |
+------------+--------------+-----------+------------+
| 2023-08-07 | Alice        | Pereira   | 2019-11-04 |
| 2023-08-07 | Antonio      | Ferreira  | 2020-05-15 |
| 2023-08-07 | Adriano      | Peixoto   | 2018-06-25 |
+------------+--------------+-----------+------------+

/*Criar um trigger que guarda o cliente da tabela Reg_Cliente antes de ser apagado*/

delimiter $

create trigger Trg_Reg_Cliente_Del
before delete on Reg_Cliente
for each row
begin
	Insert into Aud_Registo (Dt_Audit, Nome_Cliente, Sobrenome, Dt_Registo) values
	(curdate(), old.Nome_Cliente, old.Sobrenome, old.Dt_Registo);
End$

delimiter ;


/*Testar a trigger apagando um elemento da tabele Reg_Cliente*/

delete from Reg_Cliente
where Nome_Cliente = 'Antonio'
limit 1;

select * from Reg_Cliente;
+--------------+-----------+------------+
| Nome_Cliente | Sobrenome | Dt_Registo |
+--------------+-----------+------------+
| Alice        | Pereira   | 2019-11-04 |
| Adriano      | Peixoto   | 2018-06-25 |
+--------------+-----------+------------+

select * from Aud_Registo;
+------------+--------------+-----------+------------+
| Dt_Audit   | Nome_Cliente | Sobrenome | Dt_Registo |
+------------+--------------+-----------+------------+
| 2023-08-07 | Alice        | Pereira   | 2019-11-04 |
| 2023-08-07 | Antonio      | Ferreira  | 2020-05-15 |
| 2023-08-07 | Adriano      | Peixoto   | 2018-06-25 |
| 2023-08-07 | Antonio      | Ferreira  | 2020-05-15 |
+------------+--------------+-----------+------------+

/*Fim 01*/

/*Nova situação*/
/*Quero uma trigger que registe todos os aumentos de salários superiores a 1500.00 € na tabela BKP_Funcionario*/

/*Tabela Funcionários*/

Create table Funcionario(
	Cod_Funcionario int,
	Nome_Funcionario varchar(30),
	Salario int
	);
	
/*Tablea Backup do Funcionários*/
 
Create table BKP_Funcionario(
	Cod_Funcionario int,
	Nome_Funcionario varchar (30),
	Salario int,
	Salario_AT int
	);

/*Inserir registos na tabela funcionario*/
insert into Funcionario values
(1, 'Marcelo Dinis', 1000),
(2, 'Mario Quinello', 1000),
(3, 'Carlos Roberto', 3000),
(4, 'Jose Silva', 5000),
(5, 'Maria Figueira', 1000);

/*Criar a trigger com o nome Trg_Func  que respeita as condições do exercício*/

delimiter $

create trigger Trg_Func
before update on Funcionario 
for each row
begin
	if new.salario >= old.salario + 1500 then
		insert into BKP_Fucionario (Cod_Funcionario, Nome_Funcionario, Salario, Salario_AT) values
		(old.Cod_Funcionario, old.Nome_Funcionario, Old.Salario, new.Salario);
	end if;
end $

delimiter ;

/*testar a trigger*/

update Funcionario 
set salario = 1500
where cod_Funcionario = 1;

update Funcionario 
set salario = 2500
where cod_Funcionario = 2;

update Funcionario 
set salario = 3500
where cod_Funcionario = 3;

update Funcionario 
set salario = 5500
where cod_Funcionario = 4;

update Funcionario 
set salario = 3500
where cod_Funcionario = 5;

select * from funcionario; 

/* fim de 02*/
/* exceções*/
/* Em MySQL usamos SQLSTATE 45000 em 45000 indica um erro genérico..... a trigger quer se segue demonstra a 
froma de criar esse erro, por isso vamos considerar a tabela funcionário, sempre que um salário for aumentado
em mais que 10%. A trigger devolve o erro: SIGNAL SQLSTATE 45000 'O salário não pode ser aumentado em mais que 10%  */

delimiter $

 create trigger Trg_Fun_Perc
 before update on Funcionario
 for each row 
 begin 
	if new.salario >= (old.salario*0.10) + old.salario then 
	signal sqlstate '45000' set message_text = 'O salário não pode ser aumento em mais de 10% '; 
	end if;
end $ 

delimiter ; 

select * from funcionario; 

update funcionario
set salario = 2500*0.09 + 2500
where cod_Funcionario = 2; 

update funcionario
set salario = 3500*0.15 + 3500
where cod_Funcionario = 3; 

/* fim de exceções */

create database Banco_Mayor; 

use Banco_Mayor;

create table Contas (
	ID INT AUTO_INCREMENT, 
	Nome varchar (100),
	Saldo decimal (10.2),
	primary key (ID)
); 

create table Movimentos (
	ID_Movimento int AUTO_INCREMENT primary KEY,
	Conta_ID int, 
	Tipo enum ('Debito', 'Credito'),
	valor datetime, 
	foreign key (Conta_ID) references Contas (ID)
); 

/* Create a trigger que gere os movimentos os insere na tabela contas atualizando os valores*/

delimiter $

create trigger Atualizar_Saldo 
 after insert on Movimentos
 for each row 
 begin 
	if new.tipo = 'Debito' then 
	update Contas set saldo = saldo - new.valor where ID = New.Conta_ID;
	elseif new.tipo = 'Credito'then 
	update Contas set saldo = saldo + new.valor where ID = NEW.Conta_ID;
	end if;
end $ 

delimiter ;

/*Vamos inserir alguns registos*/

insert into Contas (ID, Nome, Saldo) VALUES 
(1, 'Conta Extrato', 5000),
(2, 'Conta Parazo', 10000),
(3, 'Conta Fundos', 20000);

select * from Contas; 

/* Vamos testar todo o sistema e efetuar alguns movimentos...  faça um credito de 200€ na conta 1 registe a data atual*/

insert into movimentos (Conta_ID, Tipo, valor, data) VALUES
(1, 'Credito', 200, now());

/* Vamos testar todo o sistema e efetuar alguns movimentos...  faça um credito de 100€ na conta 2 registe a data atual*/

insert into movimentos (Conta_ID, Tipo, valor, data) VALUES
(2, 'Debito', 100, now());

/* fim de gestão de contas bancárias*/ 


/* usar base de dados Railway*/




use railway;


create table Contas (
	ID INT AUTO_INCREMENT, 
	Nome varchar (100),
	Saldo decimal (10.2),
	primary key (ID)
); 

create table Movimentos (
	ID_Movimento int AUTO_INCREMENT primary KEY,
	Conta_ID int, 
	Tipo enum ('Debito', 'Credito'),
	valor decimal (10.2),
	data datetime, 
	foreign key (Conta_ID) references Contas (ID)
); 


delimiter $

create trigger Atualizar_Saldo 
 after insert on Movimentos
 for each row 
 begin 
	if new.tipo = 'Debito' then 
	update Contas set saldo = saldo - new.valor where ID = New.Conta_ID;
	elseif new.tipo = 'Credito'then 
	update Contas set saldo = saldo + new.valor where ID = NEW.Conta_ID;
	end if;
end $ 

delimiter ;

insert into Contas (ID, Nome, Saldo) VALUES 
(1, 'Conta Extrato', 5000),
(2, 'Conta Parazo', 10000),
(3, 'Conta Fundos', 20000);


insert into movimentos (Conta_ID, Tipo, valor, data) VALUES
(1, 'Credito', 200, now());

/* Vamos testar todo o sistema e efetuar alguns movimentos...  faça um credito de 100€ na conta 2 registe a data atual*/

insert into movimentos (Conta_ID, Tipo, valor, data) VALUES
(2, 'Debito', 100, now());

/* de volta a database banco_mayor*/

use banco_mayor;

create DATABASE Escola;

create table Aluno (
	Aluno_id PRIMARY KEY, AUTO_INCREMENT,
	Aluno_nome varchar (100),
	Aluno_email VARCHAR (100),
	Aluno_curso_id FOREIGN key (Curso_id) REFERENCES Curso_id
)