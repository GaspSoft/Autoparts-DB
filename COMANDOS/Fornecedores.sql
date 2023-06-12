select count(*) from fornecedores;

select * from fornecedores order by fornecedor_id asc;

select fornecedores.fornecedor_id, vendas.pecas_fornecedores_id 
from fornecedores 
inner join  vendas
on 
fornecedores.fornecedor_id = vendas.pecas_fornecedores_id;
