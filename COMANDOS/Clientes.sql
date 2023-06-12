use autoparts_db;

-- VER A TABELA
select * 
from Clientes
inner join Enderecos on
Enderecos.Endereco_id = Clientes.Enderecos_id;

-- ATUALIZAR A TABELA COM A FK
update Clientes
set nome  = "Rafael"
where Cliente_id = 1;


-- DELETAR A TABELA COM A FK
delete 
from Clientes
where nome like "Rafael";