--- Atividade 1 A
--- Pesquise os itens que foram vendidos sem desconto. 
--- (As colunas presentes no resultado da consulta são: ID_NF, ID_ITEM, COD_PROD E VALOR_UNIT)
select `ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT` from `produtos` where `DESCONTO` is null;


--- Atividade 1 B
--- Pesquise os itens que foram vendidos com desconto. 
--- (As colunas presentes no resultado da consulta são: ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT E O VALOR VENDIDO. 
--- OBS: O valor vendido é igual ao VALOR_UNIT - (VALOR_UNIT*(DESCONTO/100))
select `ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, (`VALOR_UNIT`-(`VALOR_UNIT`*(`DESCONTO`/100))) as VALOR_VENDIDO from `produtos` where `DESCONTO` is not null;


--- Atividade 1 C
--- Altere o valor do desconto (para zero) de todos os registros onde este campo é nulo
update `produtos` set `DESCONTO`='0' where `DESCONTO` is null;


--- Atividade 1 D
--- Pesquise os itens que foram vendidos. 
--- (As colunas presentes no resultado da consulta são: ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, VALOR_TOTAL, DESCONTO, VALOR_VENDIDO. 
--- OBS: O VALOR_TOTAL é obtido pela fórmula: QUANTIDADE * VALOR_UNIT. O VALOR_VENDIDO é igual a VALOR_UNIT - (VALOR_UNIT*(DESCONTO/100)).
select `ID_NF`, `ID_ITEM`, `COD_PROD`, `VALOR_UNIT`, `VALOR_UNIT` - (`VALOR_UNIT`*(`DESCONTO`/100)) as VALOR_VENDIDO, `QUANTIDADE` * `VALOR_UNIT` as VALOR_TOTAL FROM `produtos` where `DESCONTO` is not null;


--- Atividade 1 E
--- Pesquise o valor total das NF e ordene o resultado do maior valor para o menor. 
--- (As colunas presentes no resultado da consulta são: ID_NF, VALOR_TOTAL. 
--- OBS: O VALOR_TOTAL é obtido pela fórmula: ∑ QUANTIDADE * VALOR_UNIT. Agrupe o resultado da consulta por ID_NF.
select `ID_NF`, QUANTIDADE * VALOR_UNIT as VALOR_TOTAL from `produtos` group by `produtos` .`ID_NF` order by `produtos`. `ID_NF` asc;


--- Atividade 1 F
--- Pesquise o valor vendido das NF e ordene o resultado do maior valor para o menor. 
--- (As colunas presentes no resultado da consulta são: ID_NF, VALOR_VENDIDO. 
--- OBS: O VALOR_TOTAL é obtido pela fórmula: ∑ QUANTIDADE * VALOR_UNIT. O VALOR_VENDIDO é igual a ∑ VALOR_UNIT - (VALOR_UNIT*(DESCONTO/100)). Agrupe o resultado da consulta por ID_NF
select `ID_NF`, VALOR_UNIT - (`VALOR_UNIT`*(`DESCONTO`/100)) as VALOR_VENDIDO from `produtos` group by `produtos`.`ID_NF` order by (`QUANTIDADE` * `VALOR_UNIT`) desc;


--- Atividade 1 G
--- Consulte o produto que mais vendeu no geral. As colunas presentes no resultado da consulta são: COD_PROD, QUANTIDADE. Agrupe o resultado da consulta por COD_PROD
select sum (`QUANTIDADE`) as Tot_QUANTIDADE, `COD_PROD` from `produtos` group by `COD_PROD`;


--- Atividade 1 H
--- Consulte as NF que foram vendidas mais de 10 unidades de pelo menos um produto.
--- (As colunas presentes no resultado da consulta são: ID_NF, COD_PROD, QUANTIDADE. Agrupe o resultado da consulta por ID_NF, COD_PROD.)
select `ID_NF`,`COD_PROD`,`QUANTIDADE` from `produtos` where `QUANTIDADE`>='10' group by `COD_PROD`,`ID_NF`;


--- Atividade 1 I
--- Pesquise o valor total das NF, onde esse valor seja maior que 500, e ordene o resultado do maior valor para o menor. 
--- (As colunas presentes no resultado da consulta são: ID_NF, VALOR_TOT. 
--- OBS: O VALOR_TOTAL é obtido pela fórmula: ∑ QUANTIDADE * VALOR_UNIT. Agrupe o resultado da consulta por ID_NF.
select QUANTIDADE * VALOR_UNIT as VALOR_TOT, `ID_NF` from `produtos` where QUANTIDADE * VALOR_UNIT>='500' group by `ID_NF`;


--- Atividade 1 J
---- Qual o valor médio dos descontos dados por produto. 
--- (As colunas presentes no resultado da consulta são: COD_PROD, MEDIA. Agrupe o resultado da consulta por COD_PROD.)
select avg(`DESCONTO`), `COD_PROD` FROM `produtos` GROUP BY `COD_PROD`;


--- Atividade 1 K
--- Qual o menor, maior e o valor médio dos descontos dados por produto. 
--- (As colunas presentes no resultado da consulta são: COD_PROD, MENOR, MAIOR, MEDIA. Agrupe o resultado da consulta por COD_PROD).
select avg(`DESCONTO`) as MEDIA, min(`DESCONTO`) as MENOR, max(`DESCONTO`) as MAIOR, `COD_PROD` from `produtos` group by `COD_PROD`;


--- Atividade 1 L
--- Quais as NF que possuem mais de 3 itens vendidos. 
--- (As colunas presentes no resultado da consulta são: ID_NF, QTD_ITENS. 
--- OBS:: NÃO ESTÁ RELACIONADO A QUANTIDADE VENDIDA DO ITEM E SIM A QUANTIDADE DE ITENS POR NOTA FISCAL. Agrupe o resultado da consulta por ID_NF.
select count(`ID_ITEM`) as QTD_ITEM, `ID_NF` from `produtos` group by `ID_NF`;
