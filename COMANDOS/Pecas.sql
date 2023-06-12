use autoparts_db;

-- VER A TABELA COM AS FK
select * 
from Pecas
inner join fornecedores on Pecas.Pecas_id = fornecedores.fornecedor_id;

-- ATUALIZAR A TABELA COM A FK
update Pecas 
Join fornecedores on fornecedores.Fornecedor_id
set Pecas.nome = "Transmissor"
where Pecas.Pecas_id = 2;

-- DELETAR A TABELA COM A FK
delete Pecas
from Pecas
Join Pecas on Pecas.Pecas_id
where Pecas.Pecas_id = 2;