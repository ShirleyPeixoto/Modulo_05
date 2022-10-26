QUESTAO 03

CREATE SCHEMA `sz-00006-ws.Emp_Beta`

CREATE TABLE `sz-00006-ws.Emp_Beta.Cliente` (
  nome        string,
  telefone    int64,
  email       string
  )


CREATE TABLE `sz-00006-ws.Emp_Beta.Produto` (
  marca    string,
  preco    int64
  )

CREATE TABLE `sz-00006-ws.Emp_Beta.Pedido` (
  quantidade    int64
  )

CREATE TABLE `sz-00006-ws.Emp_Beta.Venda` (
  desconto    int64,
  )



