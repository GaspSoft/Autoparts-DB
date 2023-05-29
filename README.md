
# Banco de Dados da Loja de Autopeças

Este é um repositório para o banco de dados da loja de autopeças. O banco de dados foi projetado para armazenar informações sobre endereços, fornecedores, peças, clientes, vendas e funcionários.

## Estrutura do Banco de Dados

O banco de dados possui as seguintes tabelas e campos:

### Tabela Enderecos

Esta tabela armazena informações sobre os endereços.

| Campo        | Tipo     | Obrigatório |
|--------------|----------|-------------|
| id           | INT      | SIM         |
| cep          | INT      | SIM         |
| estado       | VARCHAR  | SIM         |
| cidade       | VARCHAR  | SIM         |
| bairro       | VARCHAR  | SIM         |
| rua          | VARCHAR  | SIM         |
| numero       | INT      | SIM         |
| complemento  | VARCHAR  | SIM         |

### Tabela Fornecedores

Esta tabela armazena informações sobre os fornecedores.

| Campo  | Tipo     | Obrigatório |
|--------|----------|-------------|
| id     | INT      | SIM         |
| nome   | VARCHAR  | SIM         |

### Tabela Pecas

Esta tabela armazena informações sobre as peças.

| Campo                 | Tipo     | Obrigatório |
|-----------------------|----------|-------------|
| id                    | INT      | SIM         |
| nome                  | VARCHAR  | SIM         |
| descrição             | VARCHAR  | SIM         |
| quantidade            | INT      | SIM         |
| foto                  | BLOB     | SIM         |
| marca                 | VARCHAR  | SIM         |
| ano                   | INT      | SIM         |
| preco                 | DOUBLE   | SIM         |
| modelo                | VARCHAR  | SIM         |
| tipoVeiculo           | INT      | SIM         |
| Fornecedores_id       | INT      | SIM         |

### Tabela Clientes

Esta tabela armazena informações sobre os clientes.

| Campo              | Tipo     | Obrigatório |
|--------------------|----------|-------------|
| cpf                | INT      | SIM         |
| nome               | VARCHAR  | SIM         |
| email              | VARCHAR  | SIM         |
| senha              | INT      | SIM         |
| genero             | VARCHAR  | SIM         |
| tipoPessoa         | INT      | SIM         |
| dataNascimento     | DATE     | SIM         |
| Enderecos_id       | INT      | SIM         |

### Tabela Vendas

Esta tabela armazena informações sobre as vendas.

| Campo                 | Tipo     | Obrigatório |
|-----------------------|----------|-------------|
| Pecas_id              | INT      | SIM         |
| Pecas_Fornecedores_id | INT      | SIM         |
| Vendedores_id         | INT      | SIM         |
| Clientes_cpf          | INT      | SIM         |

### Tabela Funcionarios

Esta tabela armazena informações sobre os funcionários.

| Campo                         | Tipo     | Obrigatório |
|-------------------------------|----------|-------------|
| cpf                           | INT      | SIM         |
| nome                          | VARCHAR  | SIM         |
| email                         | VARCHAR  | SIM         |
| senha                         | INT      | SIM         |
| cargaHoraria                  | INT      | SIM         |
| salario                       | DOUBLE   | SIM         |
| tipoFuncionario               | INT      | SIM         |
| Vendas_Pecas_id               | INT      | SIM         |
| Vendas_Pecas_Fornecedores_id  | INT      | SIM         |
| Vendas_Vendedores_id          | INT      | SIM         |

## Como utilizar

1. Crie o banco de dados `autoparts_db`.
2. Execute o script SQL para criar as tabelas.
3. Utilize as tabelas para armazenar as informações da loja de autopeças.

```
sql
-- Excluir o Banco de Dados
DROP DATABASE IF EXISTS loja_db;

-- Criar o Banco de Dados
CREATE DATABASE IF NOT EXISTS autoparts_db;

-- Utilizar o Banco de Dados
USE autoparts_db;

-- Criação das tabelas (consulte o arquivo para ver os detalhes de cada tabela)
````


<p align="center">
  <img src="https://github.com/GaspSoft/Autoparts-DB/assets/86849487/47d44e6d-c452-4755-9f27-eef3dad4c507" alt="Modelagem do Banco de Dados">
</p>


