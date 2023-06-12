use autoparts_db;

-- VER A TABELA COM AS FK
select * 
from fornecedores;

-- ATUALIZAR A TABELA COM A FK
update fornecedores 
set fornecedores.nome = "José"
where fornecedores.fornecedor_id = 2;

-- DELETAR A TABELA COM A FK
delete fornecedores
from fornecedores
where fornecedores.fornecedor_id = 2;