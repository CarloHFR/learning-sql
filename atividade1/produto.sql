create database if not exists db_produtos;

create table if not exists produtos
(
    ID_NF int not null,
    ID_ITEM int not null,
    COD_PROD int not null,
    VALOR_UNIT float not null,
    QUANTIDADE int not null,
    DESCONTO int
);

insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('1', '1', '1', '25.00', '10', '5');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('1', '2', '2', '13.50', '3', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('1', '3', '3', '15.00', '2', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('1', '4', '4', '10.00', '1', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('1', '5', '5', '30.00', '1', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('2', '1', '3', '15.00', '4', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('2', '2', '4', '10.00', '5', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('2', '3', '5', '30.00', '7', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('3', '1', '1', '25.00', '5', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('3', '2', '4', '10.00', '4', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('3', '3', '5', '30.00', '5', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('3', '4', '2', '13.50', '7', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('4', '1', '5', '30.00', '10', '15');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('4', '2', '4', '10.00', '12', '5');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('4', '3', '1', '25.00', '13', '5');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('4', '4', '2', '13.50', '15', '5');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('5', '1', '3', '15.00', '3', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('5', '2', '5', '30.00', '6', null);
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('6', '1', '1', '25.00', '22', '15');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('6', '2', '3', '15.00', '25', '20');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('7', '1', '1', '25.00', '10', '3');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('7', '2', '2', '13.50', '10', '4');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('7', '3', '3', '15.00', '10', '4');
insert into `produtos` (`ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `QUANTIDADE`, `DESCONTO`) values ('7', '4', '5', '30.00', '10', '1');