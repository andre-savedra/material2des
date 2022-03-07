use teste_procedures;

insert into setor (nomeSetor) values ("Móveis");
insert into setor (nomeSetor) values ("Eletrodomésticos");
insert into setor (nomeSetor) values ("Informática");
insert into setor (nomeSetor) values ("Ferramentas");

insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Jão Pedrosa", "2021-10-25", 1);/*1*/
insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Larissa Túlio", "2017-11-01", 1);
insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Ashmed Muktar", "2021-02-10", 1);/*3*/

insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Maria Cruz", "2012-10-05", 2);/*4*/
insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("José Santana", "2013-02-05", 2);
insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Caroline Romani", "2014-10-05", 2);/*6*/

insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Divaldo Sumariano", "2018-11-05", 3);/*7*/
insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Milena Mois", "2015-04-04", 3);
insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Maria Lois", "2014-04-17", 3);/*9*/

insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("José Atima", "2015-11-11", 4);/*10*/
insert into vendedores (nomeVendedor, data_admissao, setorFK) values ("Leandro Guto", "2016-09-21", 4);/*11*/

insert into produtos (nomeProduto, valor) values ("Armário Modular Itatiaia Future", 1200.58); /*1*/
insert into produtos (nomeProduto, valor) values ("Armário Modular Suzuki", 2459);
insert into produtos (nomeProduto, valor) values ("Mesa de jantar", 599);/*3*/

insert into produtos (nomeProduto, valor) values ("Geladeira Freezer controll", 2999);/*4*/
insert into produtos (nomeProduto, valor) values ("Geladeira Inverter", 5999);
insert into produtos (nomeProduto, valor) values ("Ar condicionado Inverter 5800BTU", 2570); /*6*/

insert into produtos (nomeProduto, valor) values ("Notebook Acer Pro 2", 7000); /*7*/
insert into produtos (nomeProduto, valor) values ("Tablet 7 polegadas positivo", 599);
insert into produtos (nomeProduto, valor) values ("Notebook touch dell atom", 4999);
insert into produtos (nomeProduto, valor) values ("Iphone Pro 12", 10000);
insert into produtos (nomeProduto, valor) values ("Iphone 7 maxi", 5000); /*11*/

insert into produtos (nomeProduto, valor) values ("Furadeira de impacto bosch", 766);/*12*/
insert into produtos (nomeProduto, valor) values ("Broca de 1 polegada twin", 12.99);
insert into produtos (nomeProduto, valor) values ("Chaves Phillips", 58.77);
insert into produtos (nomeProduto, valor) values ("Serra tico tico", 199);/*15*/

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (4500, 2, 1, 1, 150);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (1500, 4, 1, 2, 80);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (500, 1, 1, 2, 70);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (5500, 4, 1, 3, 200);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (100, 2, 2, 1, 5);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (8400, 3, 2, 3, 300);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (550, 1, 2, 3, 80);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (450, 1, 3, 1, 80);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (525, 1, 3, 1, 50);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (1000, 1, 4, 4, 100);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (2200, 1, 4, 5, 159);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (340, 1, 4, 4, 70);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (500, 1, 4, 6, 54);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (7000, 2, 4, 6, 900);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (2000, 2, 5, 5, 300);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (3330, 1, 5, 5, 700);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (3000, 2, 6, 5, 547);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (200, 1, 6, 5, 15);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (340, 1, 6, 6, 40);


insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (1500, 1, 7, 11, 100);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (2075, 1, 8, 7, 178);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (30.78, 1, 8, 7, 5.8);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (2040, 1, 8, 8, 78);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (180, 1, 8, 10, 17);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (1000, 3, 9, 10, 70);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (2330, 1, 9, 11, 180);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (2340, 2, 9, 8, 40);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (3350, 3, 9, 8, 400);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (200, 1, 9, 10, 57);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (333, 1, 9, 9, 15);


insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (500, 1, 10, 13, 45);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (100, 1, 10, 14, 10);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (1500, 3, 10, 15, 160);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (4500, 2, 10, 12, 600);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (588, 1, 10, 12, 50);

insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (120, 1, 11, 13, 12);
insert into vendas (valorVenda, quantidade, vendedorFK, produtoFK, comissao) values (1550, 1, 11, 11, 180);

