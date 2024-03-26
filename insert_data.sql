USE cadastro_versotech_teste;

INSERT INTO empresa(razao_social, inativo) VALUES("GM", false);
INSERT INTO empresa(razao_social, inativo) VALUES("Ford", false);

INSERT INTO produto(descricao, inativo) VALUES("Roda", false);
INSERT INTO produto(descricao, inativo) VALUES("Bancos de couro", false);
INSERT INTO produto(descricao, inativo) VALUES("Pneu", false);
INSERT INTO produto(descricao, inativo) VALUES("Farol", false);

INSERT INTO vendedor(nome, cargo, salario, data_admissao, inativo) 
VALUES("Idelcio", "Vendedor", 5200.25, "2008-04-25", false);
INSERT INTO vendedor(nome, cargo, salario, data_admissao, inativo) 
VALUES("Emilio", "Vendedor", 7350.65, "2006-04-03", false);
INSERT INTO vendedor(nome, cargo, salario, data_admissao, inativo) 
VALUES("Cristian", "Vendedor", 9150.00, "2006-04-03", false);

INSERT INTO cliente(razao_social, data_cadastro, id_vendedor, id_empresa, inativo) 
VALUES("Forest", "2016-09-17", 1, 1, false);
INSERT INTO cliente(razao_social, data_cadastro, id_vendedor, id_empresa, inativo) 
VALUES("Junior Vieria", "2007-11-23", 2, 2, false);
INSERT INTO cliente(razao_social, data_cadastro, id_vendedor, id_empresa, inativo) 
VALUES("Surdinas Car", "2022-01-12", 1, 1, false);

INSERT INTO config_preco_produto(id_vendedor, id_empresa, id_produto, preco_minimo, preco_maximo) 
VALUES(1, 1, 1, 100, 400);
INSERT INTO config_preco_produto(id_vendedor, id_empresa, id_produto, preco_minimo, preco_maximo) 
VALUES(3, 2, 4, 250, 800);
INSERT INTO config_preco_produto(id_vendedor, id_empresa, id_produto, preco_minimo, preco_maximo) 
VALUES(2, 1, 3, 400, 1200);
INSERT INTO config_preco_produto(id_vendedor, id_empresa, id_produto, preco_minimo, preco_maximo) 
VALUES(2, 1, 3, 300, 900);

INSERT INTO situacao(nome, descricao) 
VALUES("Pago", "O pedido foi pago");

INSERT INTO pedido(id_empresa, id_cliente, valor_total, data_emissao, id_situacao) 
VALUES(1, 1, 2000, "2024-03-18", 1);
INSERT INTO pedido(id_empresa, id_cliente, valor_total, data_emissao, id_situacao) 
VALUES(2, 3, 3600, "2024-03-25", 1);
INSERT INTO pedido(id_empresa, id_cliente, valor_total, data_emissao, id_situacao) 
VALUES(1, 2, 1600, "2024-03-20", 1);

INSERT INTO item_pedido(id_pedido, id_produto, preco_praticado, quantidade) 
VALUES(1, 1, 400, 5);
INSERT INTO item_pedido(id_pedido, id_produto, preco_praticado, quantidade) 
VALUES(2, 4, 400, 4);
