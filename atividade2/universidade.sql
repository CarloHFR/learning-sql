create database if not exists Universidade;

create table if not exists Alunos
(   
    MAT int not null,
    nome varchar(255) not null,
    endereco varchar(255) not null,
    cidade varchar(2550) not null
);

create table if not exists Disciplinas
(
    COD_DISC varchar(32) not null,
    nome_disc varchar(255) not null,
    carga_hor int not null
);

create table if not exists Professores
(
    COD_PROF int not null,
    nome varchar(255) not null,
    endereco varchar(255) not null,
    cidade varchar(2550) not null
);

create table if not exists Turma
(
    COD_TURMA varchar(32) not null,
    COD_DISC varchar(32) not null,
    COD_PROF int not null,
    ANO int not null, 
    horario varchar(32) not null,
    foreign key (COD_DISC) references Disciplinas(COD_DISC),
    foreign key (COD_PROF) references Professores(COD_PROF)
);

create table if not exists Historico 
(
    MAT int not null,
    COD_DISC varchar(32) not null,
    COD_TURMA varchar(32) not null,
    COD_PROF int not null,
    ANO int not null, 
    frequencia int not null,
    nota float not null,
    foreign key (MAT) references Alunos(MAT),
    foreign key (COD_DISC) references Turma(COD_DISC),
    foreign key (COD_TURMA) references Turma(COD_TURMA),
    foreign key (COD_PROF) references Turma(COD_PROF),
    foreign key (ANO) references Turma(ANO)
);

insert into `Alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010101', 'JOSE DE ALENCAR', 'RUA DAS ALMAS', 'NATAL');
insert into `Alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010102', 'JOÃO JOSÉ', 'AVENIDA RUY CARNEIRO', 'JOÃO PESSOA');
insert into `Alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010103', 'MARIA JOAQUINA', 'RUA CARROSSEL', 'RECIFE');
insert into `Alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010104', 'MARIA DAS DORES', 'RUA DAS LADEIRAS', 'FORTALEZA');
insert into `Alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010105', 'JOSUÉ CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');
insert into `Alunos` (`MAT`, `nome`, `endereco`, `cidade`) values ('2015010106', 'JOSUÉLISSON CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');

insert into `Disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('BD', 'BANCO DE DADOS', '100');
insert into `Disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('POO', 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', '100');
insert into `Disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('WEB', 'AUTORIA WEB', '50');
insert into `Disciplinas` (`COD_DISC`, `nome_disc`, `carga_hor`) values ('ENG', 'ENGENHARIA DE SOFTWARE', '80');

insert into `Professores` (`COD_PROF`, `nome`, `endereco`, `cidade`) values ('212131', 'NICKERSON FERREIRA', 'RUA MANAÍRA', `JOÃO PESSOA`);
insert into `Professores` (`COD_PROF`, `nome`, `endereco`, `cidade`) values ('122135', 'ADORILSON BEZERRA', 'AVENIDA SALGADO FILHO', `NATAL`);
insert into `Professores` (`COD_PROF`, `nome`, `endereco`, `cidade`) values ('192011', 'DIEGO OLIVEIRA', 'AVENIDA ROBERTO FREIRE', `NATAL`);

insert into `Turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'BD', '212131', `2015`, `11H-12H`);
insert into `Turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('2', 'BD', '212131', `2015`, `13H-14H`);
insert into `Turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'POO', '192011', `2015`, `08H-09H`);
insert into `Turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'WEB', '192011', `2015`, `07H-08H`);
insert into `Turma` (`COD_TURMA`, `COD_DISC`, `COD_PROF`, `ANO`, `horario`) values ('1', 'ENG', '122135', `2015`, `10H-11H`);