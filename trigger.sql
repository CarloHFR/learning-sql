--- Criando o trigger de inserção de um novo cliente 
CREATE TRIGGER tg_LogInsereCliente  AFTER INSERT ON EX2_CLIENTE 
BEGIN
	INSERT INTO EX2_LOG(comando, data, descricao) VALUES ('INSERT', DATETIME('now'), 'Inserindo novo cliente - '||new.cpf);
END;


--- Criando o trigger de modificação de um ciente
CREATE TRIGGER ex2_log_clientes AFTER INSERT ON EX2_CLIENTE FOR EACH ROW
BEGIN
    INSERT INTO EX2_LOG (comando, data, descricao)  VALUES ('UPDATE', DATETIME('now'), 'Atualizando Cliente - '||NEW.CPF);
END;


--- Criando o trigger de redução do estoque quando um produto for vendido
CREATE TRIGGER ex2_baixar_estoque_trigger AFTER INSERT ON EX2_ITEMPEDIDO FOR EACH ROW
BEGIN
	UPDATE EX2_PRODUTO SET quantidade = quantidade - NEW.quantidade WHERE codproduto = NEW.codproduto;
END;


--- Selecionando a quantidade de produtos em estoque
select * from EX2_PRODUTO;


--- Inserindo novo pedido
INSERT INTO EX2_PEDIDO VALUES (7, 1, '2012-04-01', '00001', 400.00);
INSERT INTO EX2_ITEMPEDIDO VALUES (7, 1, 10.90, 1, 1);
INSERT INTO EX2_ITEMPEDIDO VALUES (7, 2, 389.10, 1, 3);


--- Verificando novamente os produtos 
select * from EX2_PRODUTO;


--- Criando o trigger de alerta para quantidade de produto indisponivel 
CREATE TRIGGER tg_verificarEstoqueItem BEFORE INSERT ON EX2_ITEMPEDIDO
BEGIN
    SELECT CASE 
    WHEN ((SELECT quantidade FROM EX2_PRODUTO WHERE codproduto = NEW.codproduto ) < new.quantidade) 
    THEN RAISE(ABORT, 'Quantidade indisponível em estoque') 
    END; 
END;


--- Testando o trigger de alerta 
INSERT INTO EX2_ITEMPEDIDO VALUES (7, 3, 500, 50, 4);


--- Atividade 3
--- Crie um TRIGGER para retornar à quantidade em estoque de um ITEMPEDIDO que foi removido. Escrever a trigger correta abaixo:
CREATE TRIGGER ex2_itempedido_removido AFTER DELETE ON EX2_ITEMPEDIDO FOR EACH ROW
BEGIN
	SELECT quantidade FROM EX2_PRODUTO WHERE codproduto = OLD.codproduto;
END;


--- Atividade 4
--- Crie um TRIGGER para NÃO deixar valores negativos serem INSERIDOS em ITEMPEDIDO, o valor mínimo é "0"; Escrever Trigger abaixo
CREATE TRIGGER ex2_itempedido_positivo BEFORE INSERT OR UPDATE ON EX2_ITEMPEDIDO FOR EACH ROW 
BEGIN
    IF NEW.codpedido<0 OR NEW.numeroitem<0 OR NEW.valorunitario<0 OR NEW.quantidade<0 OR NEW.codproduto<0
    THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Valores devem serem positivos';
    END IF;
END;


--- Atividade 5
--- Verificar a Trigger acima. Coloque o SQL abaixo
INSERT INTO EX2_ITEMPEDIDO VALUES (5, 1, 55.80, 2, 6);
INSERT INTO EX2_ITEMPEDIDO VALUES (5, 1, 55.80, -9, 6);


--- Ativide 6
--- Crie um TRIGGER para gerar um log quando um produto atingir estoque <=3
CREATE TRIGGER ex2_log_clientes AFTER INSERT OR UPDATE ON EX2_PRODUTO FOR EACH ROW
BEGIN
    IF quantidade<4 THEN
        INSERT INTO EX2_LOG (comando, data, descricao)  VALUES ('UPDATE', DATETIME('now'), 'Quandidade de baixa para o produto: '||codproduto);
    END IF;
END;


--- Atividade 7
--- Verificar o Trigger acima. Adicionar o SQL abaixo
UPDATE EX2_PRODUTO SET quantidade='2' WHERE codproduto='1';


--- Atividade 8
--- Crie um TRIGGER para criar uma requisição de REQUISICAO_COMPRA quando um produto atingir estoque <=3
CREATE TRIGGER ex2_log_clientes AFTER INSERT OR UPDATE ON EX2_PRODUTO FOR EACH ROW
BEGIN
    IF quantidade<4 THEN
        INSERT INTO EX2_REQUISICAO_COMPRA (codproduto, data, quantidade) VALUES (codproduto, DATETIME('now'), 100);
    END IF;
END;
