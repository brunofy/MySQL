/*Exercicio 7*/


/*pergunta 1*/
use Turismo

Database changed


/*pergunta 2*/

select * from cliente;

+------------+---------------+-----------+----------------+-------------+-----------------+------+
| Nr_Cliente | Nome          | Apelido   | Morada         | Telefone    | Data_Nascimento | Sexo |
+------------+---------------+-----------+----------------+-------------+-----------------+------+
|          1 | João Paulo    | Santos    | Rua chá, 12    | 215.236.138 | 1958-08-15      | M    |
|          2 | Maria Beatriz | Cardoso   | Av.Lidador, 85 | 221.978.125 | 1940-10-25      | F    |
|          3 | Tatiana       | Azevedo   | Av.Lisboa      | 133.193.003 | 1960-01-01      | F    |
|          4 | José Alberto  | Fangueiro | Rua da Praia 4 | 253.215.362 | 1980-12-25      | M    |
+------------+---------------+-----------+----------------+-------------+-----------------+------+
4 rows in set (0.02 sec)



/* pergunta 3*/
/* Aidade de Mateus que nasceu em 1983-07-17*/

 select timestampdiff (year, '1983-07-17', curdate()) as "A idade do Mateus é:";


 +-----------------------+
| A idade do Mateus é:  |
+-----------------------+
|                    39 |
+-----------------------+
1 row in set (0.00 sec)



/*pergunta 4 */
/*Calcular a idade das pessoas da tabela cliente*/

select Nome, timestampdiff(year, Data_Nascimento, curdate()) as Idade from cliente;


+---------------+-------+
| Nome          | Idade |
+---------------+-------+
| João Paulo    |    64 |
| Maria Beatriz |    82 |
| Tatiana       |    63 |
| José Alberto  |    42 |
+---------------+-------+
4 rows in set (0.00 sec)


/*Pergunta 5*/
/*Calcular a idade das pessoas da tabela cliente com filtro ao nome do Cliente */

select Nome, timestampdiff(year, Data_Nascimento, curdate()) as Idade from cliente
Where nome = "Tatiana" or  nome = "Jõao Paulo";


+-------------+-------+
| Nome        | Idade |
+-------------+-------+
| João Paulo  |    64 |
| Tatiana     |    63 |
+-------------+-------+
2 rows in set (0.00 sec)

/*Pergunta 6*/
/*Calcular a idade das pessoas da tabela cliente com filtro ao data de nascimento do Cliente */

select Nome, timestampdiff(year, Data_Nascimento, curdate()) as Idade from cliente
Where year (data_nascimento) > 1958;


+---------------+-------+
| Nome          | Idade |
+---------------+-------+
| Tatiana       |    63 |
| José Alberto  |    42 |
+---------------+-------+
2 rows in set (0.00 sec)

/*Pergunta 7*/
/*Calcular a idade das pessoas da tabela cliente em messes*/
select Nome, timestampdiff(month, Data_Nascimento, curdate()) as "Idade em messes"
from Cliente;

+---------------+-----------------+
| Nome          | Idade em messes |
+---------------+-----------------+
| João Paulo    |             778 |
| Maria Beatriz |             992 |
| Tatiana       |             761 |
| José Alberto  |             510 |
+---------------+-----------------+
4 rows in set (0.00 sec)


/*Pergunta 8*/
/*Calcular a idade das pessoas da tabela cliente em dias*/

select Nome, timestampdiff(day, Data_Nascimento, curdate()) as "Idade em dias"
from Cliente;

+---------------+---------------+
| Nome          | Idade em dias |
+---------------+---------------+
| João Paulo    |         23691 |
| Maria Beatriz |         30194 |
| Tatiana       |         23187 |
| José Alberto  |         15523 |
+---------------+---------------+
4 rows in set (0.00 sec)

/*Calcular a idade das pessoas da tabela cliente em horas*/

select Nome, timestampdiff(hour, Data_Nascimento, curtime()) as "Idade em dias"
from Cliente;

+---------------+---------------+
| Nome          | Idade em dias |
+---------------+---------------+
| João Paulo    |        568605 |
| Maria Beatriz |        724677 |
| Tatiana       |        556509 |
| José Alberto  |        372573 |
+---------------+---------------+
4 rows in set (0.00 sec)


/*Pergunta 9*/
/* O ano da data atual com 2 digitos*/

select date_format (curdate(), "%y");

+-------------------------------+
| date_format (curdate(), "%y") |
+-------------------------------+
| 23                            |
+-------------------------------+
1 row in set (0.00 sec)

/* O ano da data atual com 2 digitos CORREÇÃO*/

select date_format (curdate(), "%y") as Ano;

+------+
| Ano  |
+------+
| 23   |
+------+
1 row in set (0.00 sec)

/*Pergunta 10*/ 
/* O ano da data 2021-06-15 com 2 digitos*/
/* Nota IMPORTANTE: a diferença entre a data de 2 e 4 digitos é o Y minusculo e maiusculo*/ 
select date_format ("2021-06-15", "%y") as Ano;

+------+
| Ano  |
+------+
| 21   |
+------+
1 row in set (0.00 sec)

/*Pergunta 11*/
/* Obter os anos das datas anteriores mas com 4 digitos*/

select date_format (curdate(), "%Y") as Ano;

+------+
| Ano  |
+------+
| 2023 |
+------+
1 row in set (0.00 sec)

/*Pergunta 12*/
/* vai converter a data 2021-06-15 no formato dd-mm-aaaa*/

select date_format ("2021_06-15","%d-%m-%Y") as "A data é:";

+------------+
| A data é:  |
+------------+
| 15-06-2021 |
+------------+
1 row in set (0.00 sec)


/*Pergunta 13*/
/* vai converter a data 2021-06-15 no formato dd-mm-aaaa com o mês por extenso*/

select date_format ("2021_06-15","%d-%M-%Y") as "A data é:";

+--------------+
| A data é:    |
+--------------+
| 15-June-2021 |
+--------------+
1 row in set (0.00 sec)

/*Pergunta 14*/
/* vai converter a data 2021-06-15 no formato dd-mm-aaaa com o mês por extenso e com o dia da semana no inicio da data*/

select date_format ("2021_06-15","%W,%d-%M-%Y") as "A data é:";


+----------------------+
| A data é:            |
+----------------------+
| Tuesday,15-June-2021 |
+----------------------+
1 row in set (0.00 sec)

/*Pergunta 15*/
/* vai converter a data 2021-06-15 no formato dd-mm-aaaa com o mês abreviado e com o dia da semana no inicio da data*/


select date_format ("2021_06-15","%W,%d-%b-%Y") as "A data é:";



+---------------------+
| A data é:           |
+---------------------+
| Tuesday,15-Jun-2021 |
+---------------------+
1 row in set (0.00 sec)



select date_format ("2021_06-15","%a,%d-%b-%Y") as "A data é:";

/*com o dia da semana abreviado*/

+-----------------+
| A data é:       |
+-----------------+
| Tue,15-Jun-2021 |
+-----------------+
1 row in set (0.00 sec)



/*Pergunta 16*/
/* aplicar os pontos anteriores na data atual*/

select date_format (curdate(),"%W,%d-%b-%Y") as "A data é:";


+--------------------+
| A data é:          |
+--------------------+
| Monday,26-Jun-2023 |
+--------------------+
1 row in set (0.00 sec)


/*Pergunta 17*/
/* hh:mm:ss da data atual mostre como horas*/

select date_format (now(), "%H:%i:%S") as "A hora é:";

+------------+
| A hora é:  |
+------------+
| 22:13:39   |
+------------+
1 row in set (0.00 sec)

/*Pergunta 18*/
/* hh:mm:ss da data atual mostre como horas*/

select nome, date_format(Data_Nascimento, "%a,%d-%b-%Y") as "Data de Nascimento", timestampdiff (year, Data_Nascimento, curdate()) as "Idade" from cliente;

+---------------+--------------------+-------+
| nome          | Data de Nascimento | Idade |
+---------------+--------------------+-------+
| João Paulo    | Fri,15-Aug-1958    |    64 |
| Maria Beatriz | Fri,25-Oct-1940    |    82 |
| Tatiana       | Fri,01-Jan-1960    |    63 |
| José Alberto  | Thu,25-Dec-1980    |    42 |
+---------------+--------------------+-------+


/*Pergunta 19*/
/* hh:mm:ss da data atual mostre como horas com filtro*/

select nome, date_format(Data_Nascimento, "%a,%d-%b-%Y") as "Data de Nascimento", timestampdiff (year, Data_Nascimento, curdate()) as "Idade" from cliente where Nome = "Maria Beatriz";

+---------------+--------------------+-------+
| nome          | Data de Nascimento | Idade |
+---------------+--------------------+-------+
| Maria Beatriz | Fri,25-Oct-1940    |    82 |
+---------------+--------------------+-------+
1 row in set (0.00 sec)


/*Pergunta 20*/
/* hh:mm:ss da data atual mostre como horas com filtro*/













