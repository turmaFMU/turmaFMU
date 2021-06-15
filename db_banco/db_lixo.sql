-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2021 às 21:46
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_lixo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `fone` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`id`, `email`, `endereco`, `bairro`, `cidade`, `fone`, `estado`, `cep`, `descricao`) VALUES
(1, 'exemplo@exemplo.com', 'rua diana 21', 'perdizes', 'sp', '1132305635', 'sp', '01040-001', 'asdasdaksldknaoksjdajsdjaskdjalskjdslakjdakjlkdadjlaksd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_empresa`
--

CREATE TABLE `cadastro_empresa` (
  `id` int(11) NOT NULL,
  `razao` varchar(50) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `confsenha` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro_empresa`
--

INSERT INTO `cadastro_empresa` (`id`, `razao`, `cnpj`, `email`, `confsenha`, `senha`, `endereco`, `cidade`, `estado`, `cep`) VALUES
(1, 'vtv', '1234546454654', 'suporte@vtvdigital.com.br', '123456', '123456', 'rua diana 21', 'sp', 'sp', '01041001');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_user`
--

CREATE TABLE `cadastro_user` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `confsenha` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro_user`
--

INSERT INTO `cadastro_user` (`id`, `nome`, `sobrenome`, `email`, `confsenha`, `senha`, `endereco`, `cidade`, `estado`, `cep`) VALUES
(1, 'Diego', 'souza', 'exemplo@exemplo.com', '123', '123', 'rua diana 21', 'são paulo', 'sp', '01041-001'),
(4, 'Diego', 'souza', 'Exemplo@hotmail.com', '123', '123', 'rua diana 21', 'sp', 'sp', '01041-001'),
(6, 'Diego', 'souza', 'exemplo@gmail.com', '123', '123', 'rua diana 12', 'sp', 'sp', '01041-001'),
(7, 'Diego', 'souza', 'exemplo@uol.com', '123', '123', 'rua diana 12', 'sp', 'sp', '01041-001');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agendamento_email_uindex` (`email`);

--
-- Índices para tabela `cadastro_empresa`
--
ALTER TABLE `cadastro_empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cadastro_empresa_cnpj_uindex` (`cnpj`);

--
-- Índices para tabela `cadastro_user`
--
ALTER TABLE `cadastro_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cadastro_user_email_uindex` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cadastro_empresa`
--
ALTER TABLE `cadastro_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cadastro_user`
--
ALTER TABLE `cadastro_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
