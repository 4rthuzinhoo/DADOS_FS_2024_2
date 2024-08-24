
CREATE DATABASE Restaurante



CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    DataNascimento DATE,
    Nome VARCHAR(25) NOT NULL
);

CREATE TABLE pratos (
    id_prato INT PRIMARY KEY,
    Nome VARCHAR(25) NOT NULL,
    preco DECIMAL
);

CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY,
    Nome VARCHAR(25) NOT NULL,
    DataNascimento DATE
);

CREATE TABLE mesas (
    id_mesa INT PRIMARY KEY,
    Status VARCHAR(20)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    DataPedido DATE,
    Status VARCHAR(20),
    id_cliente INT,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);


ALTER TABLE mesas
ADD COLUMN numero int NOT NULL;


INSERT INTO cliente(id_cliente, DataNascimento, Nome) VALUES 
(1,'2005-11-17','Arthur'),
(2,'2010-09-17','Ruth'),
(3,'2004-09-24','Luisa'),
(4,'2002-03-28','Joseli'),
(5,'2001-01-08','Marcelo')

INSERT INTO funcionarios(id_funcionario, Nome, DataNascimento) VALUES 
(1,'Lucas','2005-05-12'),
(2,'Anne','2003-07-19'),
(3,'Marcos','2004-10-22'),
(4,'Caio','2002-09-04'),
(5,'Clovis','2005-10-12')

INSERT INTO mesas(id_mesa, Status, numero) VALUES 
(1,'Ocupada',3),
(2,'Dísponivel',12),
(3,'Reservada',5),
(4,'Reservada',2),
(5,'Dísponivel',10)

INSERT INTO pratos(id_prato, Nome, preco) VALUES 
(1,'Feijoada',2100.00),
(2,'Sushi',3500.00),
(3,'Salpicão',3000.00),
(4,'Churrasco',2500.00),
(5,'Acarajé',2200.00);

INSERT INTO pedido(id_pedido,DataPedido,Status,id_cliente,id_funcionario) VALUES 
(1,'2024-08-24','Entregue',1,1),
(2,'2024-08-22','Atraso',2,2),
(3,'2024-08-23','Entregue',3,4),
(4,'2024-08-24','Em andamento',4,3),
(5,'2024-08-21','Atraso',5,5);

SELECT * FROM pratos;

SELECT * FROM pedido;

SELECT * FROM mesas;

SELECT * FROM funcionarios;

SELECT * FROM cliente;