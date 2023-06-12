use autoparts_db;

-- VER A TABELA
select * 
from Funcionarios;

-- ATUALIZAR A TABELA COM A FK
update Funcionarios 
set
cpf = 99999999999, 
nome = 'Dasyurus viverrinus', email = 'ggarmanson1@sogou.com', 
senha = 'jeB8t3ujuI', cargo_funcionario = 0
where Funcionario_id = 2; 

-- DELETAR A TABELA COM A FK
delete 
from Funcionarios
where Funcionario_id = 2;