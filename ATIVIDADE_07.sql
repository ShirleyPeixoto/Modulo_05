select * from `bigquery-public-data.chicago_crime.crime` limit 10

-- Questão 1 - Qual a maior e a menor data na tabela?

  select
    min(date) as menor_data,
    max(date) as maior_data
  from `bigquery-public-data.chicago_crime.crime` 

--Questão 2 - Qual a quantidade de crimes por ano?

select
  extract(year from date) as ano,
  count (unique_key) as quantidade
from `bigquery-public-data.chicago_crime.crime` 
group by 1
order by 1

-- Questão 3 - Qual a quantidade de crimes por mês?

select
  extract(month from date) as mes,
  count (unique_key) as quantidade
from `bigquery-public-data.chicago_crime.crime` 
group by 1
order by 2

-- Questão 4 - Qual a quantidade de crimes agrupados por tipo primário?

select
  primary_type, 
  count (unique_key) as quantidade
from `bigquery-public-data.chicago_crime.crime` 
group by 1


-- Questão 5 - Criar uma consulta que identifique o tipo mais comum de crime, em seguida contar a quantidade de crimes por mês para o ano atual.

select * from `bigquery-public-data.chicago_crime.crime` limit 2

create view emp880.View_Shirley_CMC as( 
with CMC as (
select
  primary_type as Crime_mais_comum, 
  count (unique_key) as quantidade
from `bigquery-public-data.chicago_crime.crime` 
group by 1
order by 2 DESC
)