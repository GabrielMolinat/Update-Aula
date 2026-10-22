create database update_aula
default character SET utf8mb4
collate utf8mb4_0900_ai_ci;

create table if not exists produtos (
    id int auto_increment primary key,
    nome varchar(50),
    categoria varchar(30),
    preco decimal(10,2),
    estoque int
) default charset = utf8mb4;

insert into produtos (nome, categoria, preco, estoque) values
('teclado gamer', 'periféricos', 150.00, 20),
('mouse óptico', 'periféricos', 50.00, 15),
('monitor 24"', 'monitores', 900.00, 8),
('cadeira gamer', 'móveis', 1200.00, 5),
('webcam hd', 'periféricos', 250.00, 12);

create table if not exists clientes (
    id int auto_increment primary key,
    nome varchar(100),
    email varchar(100),
    cidade varchar(50)
) default charset = utf8mb4;

insert into clientes (nome, email, cidade) values
('ana silva', 'ana.silva@email.com', 'são paulo'),
('bruno souza', 'bruno.souza@email.com', 'rio de janeiro'),
('carla costa', 'carla.costa@email.com', 'belo horizonte'); 

SELECT * FROM clientes;

UPDATE clientes
SET nome = 'Ana Silva Siqueira', cidade = 'Campo Mourão'
WHERE id = 1;

UPDATE nome_tabela
SET coluna = novo_valor
WHERE condição;

 -- ATIVIDADE 

UPDATE produtos
SET preco = 65.00
WHERE nome = 'mouse óptico';

UPDATE produtos
SET estoque = 15
WHERE nome = 'monitor 24"';

UPDATE produtos
SET categoria = 'acessórios'
WHERE categoria = 'periféricos';

UPDATE clientes
SET email = 'ana.nova@email.com'
WHERE nome = 'ana silva';

UPDATE produtos
SET nome = 'webcam full hd 1080p'
WHERE nome = 'webcam hd';

UPDATE clientes
SET cidade = 'curitiba'
WHERE nome = 'carla costa';

UPDATE produtos
SET preco = 1350.00, estoque = 3
WHERE nome = 'cadeira gamer';

UPDATE clientes
SET cidade = 'guarulhos'
WHERE cidade = 'são paulo';