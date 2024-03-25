USE cadastro_versotech_teste;

INSERT INTO empresa(razao_social, inativo) VALUES("GM", false);

INSERT INTO produto(descricao, inativo) VALUES("Roda", false);

INSERT INTO vendedor(nome, cargo, salario, data_admissao, inativo) 
VALUES("Idelcio", "Vendedor", 5200.25, "2008-04-25", false);

INSERT INTO cliente(razao_social, data_cadastro, id_vendedor, id_empresa, inativo) 
VALUES("Forest", "2016-09-17", 1, 1, false);

INSERT INTO config_preco_produto(id_vendedor, id_empresa, id_produto, preco_minimo, preco_maximo) 
VALUES(1, 1, 1, 100, 400);

INSERT INTO situacao(nome, descricao) 
VALUES("Pago", "O pedido foi pago");

INSERT INTO pedido(id_empresa, id_cliente, valor_total, data_emissao, id_situacao) 
VALUES(1, 1, 2000, "2024-03-18", 1);

INSERT INTO item_pedido(id_pedido, id_produto, preco_praticado, quantidade) 
VALUES(1, 1, 400, 5);
