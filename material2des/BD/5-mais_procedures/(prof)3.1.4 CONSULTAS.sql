select *from vendedores;
select *from setor;
select *from produtos;
select *from vendas;

select idVenda, valorVenda, quantidade, nomeVendedor, nomeSetor, nomeProduto, comissao from vendas 
join vendedores on vendas.vendedorFK = vendedores.idVendedor
join produtos on vendas.produtoFK = produtos.idProduto
join setor on vendedores.setorFK = setor.idSetor
order by nomeProduto;

select count(*) as total, idVenda, valorVenda, quantidade, nomeVendedor, nomeSetor, nomeProduto from vendas 
join vendedores on vendas.vendedorFK = vendedores.idVendedor
join produtos on vendas.produtoFK = produtos.idProduto
join setor on vendedores.setorFK = setor.idSetor
group by nomeProduto
order by nomeProduto;

drop procedure calculaComissao;

select *from vendas order by vendedorFK;
select *from vendas where idVenda = 10;
select count(*) from vendas where vendedorFK = 4;

select *from vendas where vendedorFK = 4;

drop procedure calculaComissao;
delimiter $$
create procedure calculaComissao(in vendaParameter int)
begin

	select vendedorFK into @idVend from vendas where idVenda = vendaParameter;
	select valorVenda into @valVenda from vendas where idVenda = vendaParameter;
	select count(*) into @noVendas from vendas where vendedorFK = @idVend;

	if @noVendas > 4 then
	 select 0.15 into @comissao;
	else
	 select 0.1 into @comissao;
	end if;

	update vendas set comissao = (@valVenda * @comissao) where idVenda=vendaParameter;

end $$
delimiter ;

call calculaComissao(10);