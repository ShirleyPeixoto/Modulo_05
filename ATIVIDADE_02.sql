QUESTAO 01
CREATE TABLE `sz-00006-ws.turma880.Filmes_SHIRLEY` (
  id            int64 not null,
  nome          string,
  categoria     string,
  duracao       int64,
  lancamento    date
  )


QUESTAO 02
insert into turma880.Filmes_SHIRLEY values ( 6, 'As Panteras', 'acao', 120, '2019-06-01' )


QUESTAO 03
insert into turma880.Filmes_SHIRLEY values
( 1, 'Como eu era Antes de Voce', 'drama', 110, '2016-06-16' ),
( 2, 'Para Sempre', 'romace', 104, '2012-06-07' ),
( 3, 'Arremessadno Alto', 'drama', 117, '2022-06-03' ),
( 4, 'King Richard: criando Campeas', 'drama', 144 ,'2021-12-02' ),
( 5, 'No Ritmo do Coracao', 'drama', 111, '2021-09-23' )


QUESTAO 04
delete from turma880.Filmes_SHIRLEY  where id = 6


QUESTAO 05
select id, nome, categoria from turma880.Filmes_SHIRLEY where duracao between 104 and 110


QUESTAO 06
select nome from turma880.Filmes_SHIRLEY where lancamento between '2012-06-07' and '2021-12-02'


QUESTAO 07
select * from turma880.Filmes_SHIRLEY  where lower(nome) like '%sempre%'
