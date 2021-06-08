--- Criando a view
CREATE VIEW view_pedidos_clientes AS select * from EX2_CLIENTE c inner join EX2_PEDIDO p on p.codcliente = c.codcliente;


--- Atividade 1
--- Selecione todos os campos utilizando a View criada: Colocar o sql abaixo: Exemplo: select * from view_artistas_albuns
select * from view_pedidos_clientes;


--- Atividade 2
--- Selecione a partir da View o nome do cliente e a soma do valor total comprado por ele. Colocar o script abaixo. Obs.: Usar Group By nome;
select nome, valortotal from view_pedidos_clientes group by nome;