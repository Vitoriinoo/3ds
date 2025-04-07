-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.infinityfree.com
-- Tempo de geração: 07/04/2025 às 10:48
-- Versão do servidor: 10.6.19-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_38539228_ca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `morador`
--

CREATE TABLE `morador` (
  `id_morador` int(11) NOT NULL,
  `cpf` int(11) DEFAULT NULL,
  `apartamento` int(255) DEFAULT NULL,
  `bloco` int(20) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `morador`
--

INSERT INTO `morador` (`id_morador`, `cpf`, `apartamento`, `bloco`, `telefone`, `nome`) VALUES
(1, 987654321, 12, 1, '4321-5678', 'Talia Santana'),
(2, 123456789, 37, 1, '8765-5432', 'Aurelio Duarte'),
(3, 999888777, 110, 2, '2233-4455', 'Márcia Santos'),
(4, 333444555, 71, 1, '7869-3415', 'Lucia Almeida'),
(5, 244477766, 98, 2, '5151-2323', 'Carlos Andrade'),
(6, 888222111, 26, 2, '6543-5698', 'Lilian Farias');

-- --------------------------------------------------------

--
-- Estrutura para tabela `visita`
--

CREATE TABLE `visita` (
  `id_visita` int(11) NOT NULL,
  `id_visitante` int(11) DEFAULT NULL,
  `id_morador` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `obs` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `visitante`
--

CREATE TABLE `visitante` (
  `id_visitante` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `id_morador` int(11) DEFAULT NULL,
  `foto` blob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`id_morador`);

--
-- Índices de tabela `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`id_visita`);

--
-- Índices de tabela `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id_visitante`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `morador`
--
ALTER TABLE `morador`
  MODIFY `id_morador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `visita`
--
ALTER TABLE `visita`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `visitante`
--
ALTER TABLE `visitante`
  MODIFY `id_visitante` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
