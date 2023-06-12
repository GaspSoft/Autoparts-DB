use autoparts_db;

-- VER A TABELA COM AS FK
select * 
from fornecedores;

-- ATUALIZAR A TABELA COM A FK
update fornecedores 
Join fornecedores on fornecedores.fornecedor_id
set fornecedores.nome = "José"
where fornecedores.fornecedor_id = 2;

-- DELETAR A TABELA COM A FK
delete fornecedores
from fornecedores
Join fornecedores on fornecedores.fornecedor_id
where fornecedores.fornecedor_id = 2;