create database if not exists teste_procedures;
use teste_procedures;

/*
drop table vendas;
drop table vendedores;
drop table setor;
drop table produtos;
*/


create table setor(
	idSetor bigint not null auto_increment,
    nomeSetor varchar(100) not null,
    primary key(idSetor)
);

create table vendedores(
	idVendedor bigint not null auto_increment,
    nomeVendedor varchar(100) not null,
    data_admissao date not null,
    setorFK bigint not null,
    primary key(idVendedor),
    foreign key(setorFK) references setor(idSetor)
);

create table produtos(
	idProduto bigint not null auto_increment,
    nomeProduto varchar(100) not null,
    valor float not null,
    primary key(idProduto)
);

create table vendas(
	idVenda bigint not null auto_increment,    
    valorVenda float not null,
    quantidade int not null,
    vendedorFK bigint not null,
    produtoFK bigint not null,
    comissao float not null,
    primary key(idVenda),
    foreign key(vendedorFK) references vendedores(idVendedor),
    foreign key(produtoFK) references produtos(idProduto)
);


