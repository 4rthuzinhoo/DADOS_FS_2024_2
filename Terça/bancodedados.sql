#Criando o Banco de dados

CREATE DATABASE lanchonete

#Criando entidades

CREATE TABLE clientes(
    id_cliente int PRIMARY KEY,
    nome VARCHAR(25) NOT NULL,
    dataCadastro date
)
CREATE TABLE funcionarios(
    id_funcionario int PRIMARY KEY,
    nome VARCHAR(25) NOT NULL,
    salario float
)
CREATE TABLE cardapio(
    id_cardapio int PRIMARY KEY,
    nome VARCHAR(25) NOT NULL,
    valor float
)
CREATE TABLE pedidos(
    id_pedidos int PRIMARY KEY,
    pagamento VARCHAR(25) NOT NULL,
    dataPedido date
)

#Fazendo 5 inserts em cada entidade

INSERT INTO clientes VALUES (1,'Arthur','2024-08-20'),
(2,'Luisa','2024-05-19'),
(3,'Marcelo','2024-07-21'),
(4,'Ruth','2024-07-30'),
(5,'Joseli','2024-08-18')

INSERT INTO funcionarios VALUES (1,'Caio',1.700),
(2,'Cesar',1.900),
(3,'Ana',2.500),
(4,'Joao',2.000),
(5,'Bruna',4.500)

INSERT INTO cardapio VALUES(1,'Pizza'20.00),
(2,'Batata frita',10.00),
(3,'Hamburguer',12.00),
(4,'Pastel',6.50),
(5,'Coxinha',6.50);

INSERT INTO pedidos VALUES (1,'Dinheiro','2024-08-17'),
(2,'Cartao','2024-08-21'),
(3,'Dinheiro','2024-08-15'),
(4,'Cartao','2024-08-20'),
(5,'Dinheiro','2024-08-19')

#Mini desafios

#Realiza um Select

SELECT * FROM cardapio WHERE valor >= 10

#Realiza Select com a função de Agregação

SELECT SUM(salario) FROM funcionarios 

#Atualizar um dado qualquer Update

UPDATE clientes SET nome = 'Ewellyn' WHERE id_cliente = 2