--- Atividade 2 A
--- Encontre a MAT dos alunos com nota em BD em 2015 menor que 5 (obs: BD = código da disciplinas).
select `MAT` from `historico` where `COD_DISC` = `BD` and `ANO` = `2015` and `nota` < `5`; 


--- Atividade 2 B 
--- Encontre a MAT e calcule a média das notas dos alunos na disciplina de POO em 2015.
select `MAT`, avg(`notas`) from `historico` where `COD_DISC` = `POO` and `ANO` = `2015`;


--- Atividade 2 C
--- Encontre a MAT e calcule a média das notas dos alunos na disciplina de POO em 2015 e que esta média seja superior a 6
select `MAT`, avg(`notas`) from `historico` where `COD_DISC` = `POO` and `ANO` = `2015` and avg(`notas`) > 6;


--- Atividade 2 D
--- Encontre quantos alunos não são de Natal
select count(`MAT`) from `alunos` where `cidade` is not `Natal`;
