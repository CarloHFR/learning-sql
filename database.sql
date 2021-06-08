create database if not exists loja;


create table if not exists EX2_CLIENTE(
    codcliente int,
    nome varchar(60),
    datanascimento date,
    cpf varchar(11),
    CONSTRAINT pk2_EX2_cliente PRIMARY KEY (codcliente)
);


create table if not exists EX2_PEDIDO(
    codpedido int,
    codcliente int,
    datapedido date,
    nf varchar(12),
    valortotal decimal(10,2),
    CONSTRAINT pk2_EX2_pedido PRIMARY KEY (codpedido),
    CONSTRAINT pk2_EX2_pedido_cliente FOREIGN KEY (codcliente) REFERENCES EX2_CLIENTE (codcliente)
);


create table if not exists EX2_PRODUTO(
    codproduto int,
    descricao varchar(100),
    quantidade int,
    CONSTRAINT pk2_EX2_produto PRIMARY KEY (codproduto)
);


create table if not exists EX2_ITEMPEDIDO(
    codpedido int,
    numeroitem int,
    valorunitario decimal(10,2),
    quantidade int,
    codproduto int,
    CONSTRAINT pk2_itempedido PRIMARY KEY (codpedido, numeroitem),
    CONSTRAINT fk2_codpedido FOREIGN KEY (codpedido) REFERENCES EX2_PEDIDO (codpedido),
    CONSTRAINT fk2_itempedido_produto FOREIGN KEY (codproduto) REFERENCES EX2_PRODUTO (codproduto)
);


create table if not exists EX2_REQUISICAO_COMPRA(
    codrequisicaocompra int,
    codproduto int,
    data date,
    quantidade int,
    CONSTRAINT pk2_ex2_reqcompra PRIMARY KEY (codrequisicaocompra),
    CONSTRAINT fk2_ex2_reqcompra_produto FOREIGN KEY (codproduto) REFERENCES EX2_PRODUTO(codproduto)
);


create table if not exists EX2_LOG(
    codlog INTEGER primary KEY AUTOINCREMENT,
    comando varchar(20),
    data DATETIME,
    descricao varchar(255)
);