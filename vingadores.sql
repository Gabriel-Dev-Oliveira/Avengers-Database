-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Mar-2022 às 21:23
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vingadores`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `vingadores`
--

CREATE TABLE `vingadores` (
  `ID` int(10) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `país` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) NOT NULL,
  `cel` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vingadores`
--

INSERT INTO `vingadores` (`ID`, `nome`, `país`, `email`, `cel`, `foto`) VALUES
(1, 'homem de ferro', 'EUA', 'tony-stark@gmail.com', '7218361946', 'homem de ferro.png'),
(2, 'capitão américa', 'EUA', 'steve_rogers@hotmail.com', '3286328372', 'capitão américa.png'),
(3, 'capitã marvel', 'EUA', 'Carol_Danvers@gmail.com', '8286325263', 'capitã marvel.png'),
(4, 'homem aranha', 'EUA', 'peter-parker03@gmail.com', '97927351638', 'homem aranha.png'),
(5, 'doutor estranho', 'EUA', 'Dr.strange@yahoo.com', '9261734637', 'dr estranho.png'),
(6, 'hulk', 'EUA', 'Bruce-banner@gmail.com', '9273622043', 'hulk.png'),
(7, 'thor', 'Asgard', 'Thor.odinson@terra.com', '0281629374', 'thor.png'),
(8, 'wanda', 'Sokovia', 'wanda.maximoff@gmail.com', '6145028516', 'wanda.png'),
(9, 'visão', 'EUA', 'visão=jarvis+ultron@gmail.com', '4972649268', 'visão.png'),
(10, 'pantera negra', 'Wakanda', 't\'challa@gmail.com', '2848268163', 'pantera negra.png'),
(11, 'falcão', 'EUA', 'sam_wilson@gmail.com', '4282973542', 'falcão.png'),
(12, 'gavião arqueiro', 'alemanha', 'clint-barton@gmail.com', '6258392847', 'gavião arqueiro.png'),
(13, 'viúva negra', 'Rússia', 'natasha-romanoff@gmail.com', '4918382537', 'viúva negra.png'),
(14, 'shang-chi', 'China', 'shang-chi@gmail.com', '9217282719', 'viúva negra.png'),
(15, 'cavaleiro da lua', 'EUA', 'Marc-Specto@gmail.com', '5148294715', 'cavaleiro da lua.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `vingadores`
--
ALTER TABLE `vingadores`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `vingadores`
--
ALTER TABLE `vingadores`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
