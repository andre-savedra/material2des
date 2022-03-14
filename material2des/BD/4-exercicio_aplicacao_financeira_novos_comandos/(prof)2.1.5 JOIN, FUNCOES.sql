USE APLICACAO;
/*todos os dados*/
select *from aconsultorinvestimento;
/*filtrando por valor maior que*/
select *from aconsultorinvestimento where NumConsultor > 12;
/*filtrando por string começada com M*/
select *from aconsultorinvestimento where NomeConsultor LIKE 'M%';
/*filtrando por string existente na palavra inteira*/
select *from aconsultorinvestimento where NomeConsultor LIKE '%MA%';

select *from aaplicacao;
/*join on*/
select NumAplicacao, NumFundo, DtAplicacao, ValorAplicacao, NomeConsultor, Percentual_Comissao from aaplicacao join aconsultorinvestimento on aaplicacao.NumConsultor = aconsultorinvestimento.NumConsultor;
/*join on com alias*/
select NumAplicacao, NumFundo, DtAplicacao, ValorAplicacao, NomeConsultor, Percentual_Comissao from aaplicacao A join aconsultorinvestimento C on A.NumConsultor = C.NumConsultor;
/*soma de todos os valores*/
select Sum(ValorAplicacao) from aaplicacao;

/*funções estatísticas*/
SELECT COUNT(*) as Qtde,
 SUM(ValorAplicacao) as Soma, 
 AVG(ValorAplicacao) as Media,
 MAX(ValorAplicacao) as Maior,
 MIN(ValorAplicacao) as Menor FROM aAPLICACAO;
 
 /*soma por agrupamento group by*/
select Sum(ValorAplicacao) AS Total, NumAplicacao, NumFundo, DtAplicacao, ValorAplicacao, NomeConsultor, Percentual_Comissao from aaplicacao A join aconsultorinvestimento C on A.NumConsultor = C.NumConsultor group by NumFundo order by NumFundo;
/*filtrando com group by e having*/
select Sum(ValorAplicacao) AS Total, NumAplicacao, NumFundo, DtAplicacao, ValorAplicacao, NomeConsultor, Percentual_Comissao from aaplicacao A join aconsultorinvestimento C on A.NumConsultor = C.NumConsultor group by NumFundo having ValorAplicacao > 27000 order by NumFundo;

/*join on*/
 SELECT T.CodTipoFundo as CodTipo, DescrTipoFundo as TipoFundo, 
 F.NumFundo, NomeComlFundo as NomeFundo,
 SUM(ValorAplicacao) TotalAplic, COUNT(*) as QtdeAplic, 
 AVG(ValorAplicacao) MediaAplic
FROM aAPLICACAO A
JOIN aCLIENTE C ON A.CodCli = C.CodCli
JOIN aCONSULTORINVESTIMENTO CO
 ON A.NumConsultor = CO.NumConsultor
JOIN aFUNDOINVESTIMENTO F
 ON A.NumFundo = F.NumFundo
JOIN aTIPOFUNDO T
 ON F.CodTipoFundo = T.CodTipoFundo
GROUP BY DescrTipoFundo, NomeComlFundo
ORDER BY T.CodTipoFundo, F.NumFundo;


/*criando procedures!*/
drop procedure filterby;
delimiter $$
create procedure filterby(in valor_parameter integer)
begin 
	select Sum(ValorAplicacao) AS Total, NumAplicacao, NumFundo, DtAplicacao, ValorAplicacao, 
    NomeConsultor, Percentual_Comissao 
    from aaplicacao A join aconsultorinvestimento C on A.NumConsultor = C.NumConsultor group by NumFundo 
    having ValorAplicacao > valor_parameter order by NumFundo;
end $$
delimiter ;

call filterby(13000);


