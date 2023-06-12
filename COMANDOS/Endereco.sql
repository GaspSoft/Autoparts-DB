use autoparts_db;

-- VER A TABELA COM AS FK
select * 
from Enderecos;

-- ATUALIZAR A TABELA COM A FK
update Enderecos
set Enderecos.cep = 95346678
where Enderecos.Endereco_id = 2;

-- DELETAR A TABELA COM A FK
delete Enderecos
from Enderecos
where Enderecos.Endereco_id = 2;