CREATE DATABASE cadastro_versotech_teste;
USE cadastro_versotech_teste;

CREATE TABLE empresa(
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    razao_social VARCHAR(100) NOT NULL,
	inativo BOOLEAN NOT NULL
);

CREATE TABLE produto (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descricao VARCHAR(500) NOT NULL,
    inativo BOOLEAN NOT NULL
);

CREATE TABLE vendedor (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario FLOAT NOT NULL,
    data_admissao DATE NOT NULL,
    inativo BOOLEAN NOT NULL
);

CREATE TABLE cliente (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    razao_social VARCHAR(500) NOT NULL,
    data_cadastro DATE NOT NULL,
	id_vendedor INTEGER NOT NULL,
    id_empresa INTEGER NOT NULL,
    inativo BOOLEAN NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id),
    FOREIGN KEY (id_empresa) REFERENCES empresa(id)
);


CREATE TABLE config_preco_produto (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_vendedor INTEGER NOT NULL,
 	id_empresa INTEGER NOT NULL,
	id_produto INTEGER NOT NULL,
    preco_minimo FLOAT NOT NULL,
    preco_maximo FLOAT NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id),
    FOREIGN KEY (id_empresa) REFERENCES empresa(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);

CREATE TABLE situacao(
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(20),
    descricao VARCHAR(200)
);

CREATE TABLE pedido (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_empresa INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    valor_total FLOAT NOT NULL,
    data_emissao DATE NOT NULL,
    id_situacao INTEGER NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES empresa(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_situacao) REFERENCES situacao(id)
);

CREATE TABLE item_pedido (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_pedido INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    preco_praticado FLOAT NOT NULL,
    quantidade INTEGER NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);