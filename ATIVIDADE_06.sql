--Questão 1 - Qual a quantidade de produtos cadastrados? Qual a soma dos seus valores unitários?

select 
count(cod_produto) as qtdd_produto_total,
sum(valor) as Soma_valor_total
from emp880.produtos

--Questão 2 - Qual o valor total de vendas? E qual o valor líquido após o desconto aplica

select sum(valor) as Valor_bruto_vendas,
sum(valor-desconto) as Valor_liquido_vendas
from emp880.vendas inner join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido  inner join emp880.produtos on produtos.cod_produto = pedidos.cod_produto

--Questão 3 - Qual o total vendido por produto?

select nome_produto, sum(valor*quantidade) as total_venda from emp880.vendas inner join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido  inner join emp880.produtos on produtos.cod_produto = pedidos.cod_produto
group by nome_produto
order by nome_produto

-- Questão 4 - Qual o valor gasto por clientes?

select nome_cliente, sum(valor*quantidade) as total_venda from emp880.vendas inner join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido  left join emp880.produtos on produtos.cod_produto = pedidos.cod_produto inner join emp880.clientes on clientes.cod_cliente = pedidos.cod_cliente
group by nome_cliente
order by nome_cliente


--Questão 5 - Qual o total bruto de vendas, de descontos e total líquido por forma de pagamento? 

select forma_pagamento, sum(valor) as Total_bruto,
sum(desconto) as Desconto,
sum(valor-desconto) as Total_liquido
from emp880.vendas inner join emp880.pedidos on vendas.cod_pedido = pedidos.cod_pedido  inner join emp880.produtos on produtos.cod_produto = pedidos.cod_produto
group by forma_pagamento