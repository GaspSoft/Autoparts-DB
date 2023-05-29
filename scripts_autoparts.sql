-- Exclui o Banco
-- DROP DATABASE autoparts_db;

CREATE DATABASE IF NOT EXISTS autoparts_db;
	
USE autoparts_db;

CREATE TABLE IF NOT EXISTS `Enderecos` (
  `id` INT auto_increment NOT NULL,
  `cep` INT NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `Fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fornecedores` (
  `id` INT auto_increment NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `Pecas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pecas` (
  `id` INT auto_increment NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `descrição` VARCHAR(45) NOT NULL,
  `quantidade` INT NOT NULL,
   `foto` BLOB NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `ano` INT NOT NULL,
  `preco` DOUBLE NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `tipoVeiculo` INT NOT NULL,
  `Fornecedores_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Fornecedores_id`),
  CONSTRAINT `fk_Pecas_Fornecedores1` FOREIGN KEY (`Fornecedores_id`) REFERENCES `Fornecedores` (`id`)
);

-- -----------------------------------------------------
-- Table `Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clientes` (
  `cpf` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `senha` INT NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `tipoPessoa` INT NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `Enderecos_id` INT NOT NULL,
  PRIMARY KEY (`cpf`, `Enderecos_id`),
  CONSTRAINT `fk_Clientes_Enderecos1` FOREIGN KEY (`Enderecos_id`) REFERENCES `Enderecos` (`id`)
);

-- -----------------------------------------------------
-- Table `Vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Vendas` (
  `Pecas_id` INT auto_increment NOT NULL,
  `Pecas_Fornecedores_id` INT NOT NULL,
  `Vendedores_id` INT NOT NULL,
  `Clientes_cpf` INT NOT NULL,
  PRIMARY KEY (
    `Pecas_id`,
    `Pecas_Fornecedores_id`,
    `Vendedores_id`,
    `Clientes_cpf`
  ),
  CONSTRAINT `fk_Pecas_has_Vendedores_Pecas1` FOREIGN KEY (`Pecas_id`, `Pecas_Fornecedores_id`) REFERENCES `Pecas` (`id`, `Fornecedores_id`),
  CONSTRAINT `fk_Vendas_Clientes1` FOREIGN KEY (`Clientes_cpf`) REFERENCES `Clientes` (`cpf`)
);

-- -----------------------------------------------------
-- Table `Funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Funcionarios` (
  `cpf` bigint NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `senha` INT NOT NULL,
  `cargaHoraria` INT NOT NULL,
  `salario` DOUBLE NOT NULL,
  `tipoFuncionario` INT NOT NULL,
  `Vendas_Pecas_id` INT NOT NULL,
  `Vendas_Pecas_Fornecedores_id` INT NOT NULL,
  `Vendas_Vendedores_id` INT NOT NULL,
  PRIMARY KEY (
    `Vendas_Pecas_id`,
    `Vendas_Pecas_Fornecedores_id`,
    `Vendas_Vendedores_id`,
    `tipoFuncionario`
  ),
  CONSTRAINT `fk_Vendedores_Vendas1` FOREIGN KEY (
    `Vendas_Pecas_id`,
    `Vendas_Pecas_Fornecedores_id`,
    `Vendas_Vendedores_id`
  ) REFERENCES `Vendas` (
    `Pecas_id`,
    `Pecas_Fornecedores_id`,
    `Vendedores_id`
  )
);