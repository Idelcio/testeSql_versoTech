SELECT nome, salario FROM vendedor ORDER BY salario DESC;
SELECT data_emissao, razao_social FROM pedido, empresa ORDER BY data_emissao;
SELECT cliente.razao_social, SUM(pedido.valor_total) AS total_faturamento FROM pedido INNER JOIN cliente ON pedido.id_cliente = cliente.id GROUP BY cliente.razao_social;
SELECT empresa.razao_social, SUM(pedido.valor_total) AS total_faturamento FROM pedido INNER JOIN empresa ON pedido.id_empresa = empresa.id GROUP BY empresa.razao_social;
SELECT id_vendedor, SUM(valor_total) FROM pedido INNER JOIN cliente ON pedido.id_cliente = cliente.id GROUP BY id_vendedor;
