-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Out-2024 às 19:31
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolucao` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `CodLeitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolucao`, `CodLivro`, `CodLeitor`) VALUES
(1, '2024-10-01', '2024-11-01', 2, 6),
(2, '2024-10-09', '2024-11-17', 4, 3),
(3, '2024-11-15', '2025-01-15', 1, 7),
(4, '2024-12-03', '2025-01-08', 3, 4),
(5, '2024-10-20', '2024-12-20', 3, 5),
(6, '2024-10-16', '2024-11-14', 2, 6),
(7, '2024-12-12', '2025-02-13', 1, 3),
(8, '2024-10-17', '2024-12-11', 5, 4),
(9, '2024-12-28', '2025-02-14', 4, 3),
(10, '2025-01-17', '2025-03-14', 5, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 631113102, 'Rua da Vovó', '101', 'Maranguape I', 'Paulista/PE'),
(3, '[Maria Alice]', '0000-00-00', '[81974563782]', '[mariaalice21@gmail.com]', 0, '[Rua Amazonas]', '[210]', '[Fosfato]', '[Abreu e Lima,PE]'),
(4, '[João Lucas]', '0000-00-00', '[81996745637]', '[luquinhasjoao@gmail.com]', 0, '[Rua Forte Azul]', '[89]', '[Janga]', '[Paulista,PE]'),
(5, '[Juliana Barros]', '0000-00-00', '[81965487621]', '[jujudobarro2007@gmail.com]', 0, '[Rua Carlos Drummond]', '[230]', '[Águas Compridas]', '[Olinda,PE]'),
(6, '[Beatriz Lima]', '0000-00-00', '[81978564399]', '[bealima@gmail.com]', 0, '[Rua Florianópolis]', '[14]', '[Aldeia]', '[Camaragibe,PE]'),
(7, '[Junior Carvalho]', '0000-00-00', '[81998563752]', '[carvalhojunior@gmail.com]', 0, '[Rua Castelo Branco]', '[76]', '[Afogados]', '[Recife,PE]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, '[O Duque e Eu]', '[Julia Quinn]', '[Arqueiro]', '[Simon Basset, o irresistível duque de Hastings, acaba de retornar a Londres depois de seis anos viajando pelo mundo. Rico, bonito e solteiro, ele é um prato cheio para as mães da alta sociedade, que só pensam em arrumar um bom partido para suas filhas. S', 0, '[Romance]', 0),
(2, '[O Visconde que Me Amava ]', '[Julia Quinn]', '[Arqueiro]', '[Em 1814, durante a temporada de bailes em Londres, Anthony Bridgerton, um visconde rico, decide encontrar uma esposa e escolhe Edwina Sheffield como a candidata ideal. No entanto, para casar-se com Edwina, ele precisa convencer sua irmã mais velha, Kate,', 0, '[Romance]', 0),
(3, '[Um Perfeito Cavalheiro]', '[Julia Quinn]', '[Arqueiro]', '[Sophie, filha ilegítima de um conde, anseia por participar de um evento da sociedade londrina, mas sua madrasta a relega ao papel de criada. Em um baile de máscaras, ela conhece Benedict, filho da anfitriã, e uma faísca surge entre eles. Porém, ela foge ', 0, '[Romance]', 0),
(4, '[Os Segredos de Colin Bridgerton]', '[Julia Quinn]', '[Arqueiro]', '[Penélope Featherington nutre uma paixão por Colin Bridgerton, irmão de sua melhor amiga, há muitos anos. Quando Colin retorna de suas viagens, Penélope descobre um segredo seu e percebe uma mudança em sua própria vida, tornando-se uma mulher notável.]', 0, '[Romance]', 0),
(5, '[Para Sir Phillip, com Amor]', '[Julia Quinn]', '[Arqueiro]', '[Eloise Bridgerton é uma jovem simpática e extrovertida, cuja forma preferida de comunicação sempre foram as cartas, nas quais sua personalidade se torna ainda mais cativante. Quando uma prima distante morre, ela decide escrever para o viúvo e oferecer as', 0, '[Romance]', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `CodLeitor` (`CodLeitor`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`CodLeitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
