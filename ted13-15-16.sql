-- Copiando estrutura do banco de dados para bdi221
CREATE DATABASE IF NOT EXISTS `bdi221` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bdi221`;

-- Copiando estrutura para tabela bdi221.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bdi221.cliente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`, `nome`, `email`) VALUES
	(1, 'joao', 'joao@gmail');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela bdi221.cliente_pet
CREATE TABLE IF NOT EXISTS `cliente_pet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_pet` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_pet_cliente` (`id_cliente`),
  KEY `fk_cliente_pet_pet` (`id_pet`),
  CONSTRAINT `fk_cliente_pet_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_cliente_pet_pet` FOREIGN KEY (`id_pet`) REFERENCES `pet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bdi221.cliente_pet: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente_pet` DISABLE KEYS */;
INSERT INTO `cliente_pet` (`id`, `id_cliente`, `id_pet`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `cliente_pet` ENABLE KEYS */;

-- Copiando estrutura para tabela bdi221.forma_pagamento
CREATE TABLE IF NOT EXISTS `forma_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bdi221.forma_pagamento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;

-- Copiando estrutura para tabela bdi221.funcionario
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `salario` decimal(6,2) NOT NULL,
  `tipo` char(1) DEFAULT NULL,
  `n_conselho` int(11) DEFAULT NULL,
  `especialidade` varchar(20) DEFAULT NULL,
  `comissao` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bdi221.funcionario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

-- Copiando estrutura para tabela bdi221.pet
CREATE TABLE IF NOT EXISTS `pet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `especie` varchar(50) DEFAULT NULL,
  `porte` varchar(50) DEFAULT NULL,
  `dt_nasc` date DEFAULT NULL,
  `id_prontuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pet_prontuario` (`id_prontuario`),
  CONSTRAINT `fk_pet_prontuario` FOREIGN KEY (`id_prontuario`) REFERENCES `prontuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bdi221.pet: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` (`id`, `nome`, `especie`, `porte`, `dt_nasc`, `id_prontuario`) VALUES
	(1, 'ciso', 'cachorro', 'grande', '2022-05-28', 1);
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;

-- Copiando estrutura para tabela bdi221.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  `valor` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bdi221.produtos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;

-- Copiando estrutura para tabela bdi221.prontuario
CREATE TABLE IF NOT EXISTS `prontuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `temperatura` decimal(3,1) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela bdi221.prontuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `prontuario` DISABLE KEYS */;
INSERT INTO `prontuario` (`id`, `descricao`, `temperatura`, `peso`) VALUES
	(1, 'dsad', 23.0, 23.00);
/*!40000 ALTER TABLE `prontuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;