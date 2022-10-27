-- Questão 1 - Construir uma consulta que apresente os dados dos clientes que tem algum pedido.

select *
from emp880.clientes inner join emp880.pedidos on clientes.cod_cliente = pedidos.cod_cliente
order by clientes.cod_cliente

--Questão 2 - Construir uma consulta que apresente o nome, email e telefone dos clientes que fizeram um pedido mas ainda não teve a venda concluida.

select nome_cliente,email,telefone
from emp880.vendas full join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido 
inner join emp880.clientes on clientes.cod_cliente = pedidos.cod_cliente where cod_venda is null

--Questão 3 - Construir uma consulta que apresente o nome, detalhe e marca dos produtos que ainda não foram vendidos.

select nome_produto, detalhe, marca
from emp880.vendas full join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido 
full join emp880.produtos on produtos.cod_produto = pedidos.cod_produto where cod_venda is null

--Questão 4 - Construir uma consulta que apresente os dados dos produtos vendidos.

select produtos.cod_produto, nome_produto, detalhe, marca, valor
from emp880.vendas inner join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido  inner join emp880.produtos on produtos.cod_produto = pedidos.cod_produto

select * from emp880.vendas

--Questão 5 - Construir uma view com as informações completas de vendas, nome do cliente, nome do produto, valor do produto, quantidade comprada, desconto da venda e forma de pagamento.

create view emp880.View_sandra_shirley as (
select nome_cliente,nome_produto, valor, quantidade, desconto,forma_pagamento
from emp880.vendas inner join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido  inner join emp880.produtos on produtos.cod_produto = pedidos.cod_produto inner join emp880.clientes on clientes.cod_cliente = pedidos.cod_cliente
)

select *
from `sz-00006-ws.emp880.View_sandra_shirley`