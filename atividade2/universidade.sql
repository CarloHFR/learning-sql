create database if not exists universidade;

create table if not exists alunos
(   
    MAT int not null primary key,
    nome varchar(255) not null,
    endereco varchar(255) not null,
    cidade varchar(255) not null
);

create table if not exists disciplinas
(
    COD_DISC varchar(32) not null primary key,
    nome_disc varchar(255) not null,
    carga_hor int not null
);

create table if not exists professores
(
    COD_PROF int not null primary key,
    nome varchar(255) not null,
    endereco varchar(255) not null,
    cidade varchar(2550) not null
);

create table if not exists turma
(
    COD_TURMA varchar(32) not null primary key,
    COD_DISC varchar(32) not null,
    COD_PROF int not null,
    ANO int not null, 
    horario varchar(32) not null,
    foreign key (COD_DISC) references disciplinas(COD_DISC),
    foreign key (COD_PROF) references professores(COD_PROF)
);

create table if not exists historico 
(    
    ID int not null primary key,
    MAT int,    
    COD_DISC varchar(32),    
    COD_TURMA varchar(32),    
    COD_PROF int,    
    ANO int,
    frequencia int not null,    
    nota float not null,    
    foreign key (MAT) references alunos(MAT),    
    foreign key (COD_DISC) references disciplinas(COD_DISC),    
    foreign key (COD_TURMA) references turma(COD_TURMA),    
    foreign key (COD_PROF) references professores(COD_PROF)   
    foreign key (ANO) references turma(ANO)
);

insert into `alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010101', 'JOSE DE ALENCAR', 'RUA DAS ALMAS', 'NATAL');
insert into `alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010102', 'JOÃO JOSÉ', 'AVENIDA RUY CARNEIRO', 'JOÃO PESSOA');
insert into `alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010103', 'MARIA JOAQUINA', 'RUA CARROSSEL', 'RECIFE');
insert into `alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010104', 'MARIA DAS DORES', 'RUA DAS LADEIRAS', 'FORTALEZA');
insert into `alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010105', 'JOSUÉ CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');
insert into `alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010106', 'JOSUÉLISSON CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');

insert into `disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('BD', 'BANCO DE DADOS', '100');
insert into `disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('POO', 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', '100');
insert into `disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('WEB', 'AUTORIA WEB', '50');
insert into `disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('ENG', 'ENGENHARIA DE SOFTWARE', '80');

insert into `professores` (`COD_PROF`, `nome`, `endereco`, `cidade`) values ('212131', 'NICKERSON FERREIRA', 'RUA MANAÍRA', `JOÃO PESSOA`);
insert into `professores` (`COD_PROF`, `nome`, `endereco`, `cidade`) values ('122135', 'ADORILSON BEZERRA', 'AVENIDA SALGADO FILHO', `NATAL`);
insert into `professores` (`COD_PROF`, `nome`, `endereco`, `cidade`) values ('192011', 'DIEGO OLIVEIRA', 'AVENIDA ROBERTO FREIRE', `NATAL`);

insert into `turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'BD', '212131', `2015`, `11H-12H`);
insert into `turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('2', 'BD', '212131', `2015`, `13H-14H`);
insert into `turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'POO', '192011', `2015`, `08H-09H`);
insert into `turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'WEB', '192011', `2015`, `07H-08H`);
insert into `turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'ENG', '122135', `2015`, `10H-11H`);

insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010101', 'BD', '1', `212131`, `2015`, `78`, `9.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010101', 'POO', '1', `192011`, `2015`, `80`, `8.6`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010101', 'WEB', '1', `192011`, `2015`, `98`, `8.5`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010101', 'ENG', '1', `122135`, `2015`, `100`, `10.0`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010102', 'BD', '1', `212131`, `2015`, `80`, `4.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010102', 'POO', '1', `192011`, `2015`, `10`, `4.2`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010102', 'WEB', '1', `192011`, `2015`, `50`, `3.0`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010102', 'ENG', '1', `122135`, `2015`, `80`, `7.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010103', 'BD', '1', `212131`, `2015`, `75`, `3.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010103', 'POO', '1', `192011`, `2015`, `90`, `8.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010103', 'WEB', '1', `192011`, `2015`, `82`, `5.9`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010103', 'ENG', '1', `122135`, `2015`, `100`, `7.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010104', 'BD', '1', `212131`, `2015`, `89`, `7.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010104', 'POO', '1', `192011`, `2015`, `56`, `6.8`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010104', 'WEB', '1', `192011`, `2015`, `48`, `5.9`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010104', 'ENG', '1', `122135`, `2015`, `10`, `2.0`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010105', 'BD', '1', `212131`, `2015`, `90`, `8.0`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010105', 'POO', '1', `192011`, `2015`, `60`, `7.2`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010105', 'WEB', '1', `192011`, `2015`, `53`, `1.5`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010105', 'ENG', '1', `122135`, `2015`, `89`, `10.0`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010106', 'BD', '1', `212131`, `2015`, `53`, `3.6`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010106', 'POO', '1', `192011`, `2015`, `90`, `8.4`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010106', 'WEB', '1', `192011`, `2015`, `63`, `6.5`);
insert into `historico` (`MAT`, `COD_DISC`, `COD_TURMA`, `COD_PROF`, `ANO`, `frequencia`, `nota`) values ('2015010106', 'ENG', '1', `122135`, `2015`, `89`, `10.0`);
