-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.1.72-community - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para aps_controleacesso_bd
CREATE DATABASE IF NOT EXISTS `aps_controleacesso_bd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `aps_controleacesso_bd`;


-- Copiando estrutura para tabela aps_controleacesso_bd.acesso
CREATE TABLE IF NOT EXISTS `acesso` (
  `id_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `cpf_pessoa` varchar(255) DEFAULT NULL,
  `data_hora_entrada` datetime DEFAULT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `loguin_liberacao` varchar(255) DEFAULT NULL,
  `manual` bit(1) DEFAULT NULL,
  `nome_pessoa` varchar(255) DEFAULT NULL,
  `tag_cartao` varchar(255) DEFAULT NULL,
  `cartao_idCartao` int(11) DEFAULT NULL,
  `pessoa_idPEssoa` int(11) DEFAULT NULL,
  `liberado` bit(1) DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_acesso`),
  KEY `FK_coh3nkcmbqoomng5aansbs3dt` (`cartao_idCartao`),
  KEY `FK_jce07bmdxn1e0o7oqgdxe5unt` (`pessoa_idPEssoa`),
  CONSTRAINT `FK_coh3nkcmbqoomng5aansbs3dt` FOREIGN KEY (`cartao_idCartao`) REFERENCES `cartao` (`id_cartao`),
  CONSTRAINT `FK_jce07bmdxn1e0o7oqgdxe5unt` FOREIGN KEY (`pessoa_idPEssoa`) REFERENCES `pessoa` (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aps_controleacesso_bd.acesso: ~154 rows (aproximadamente)
/*!40000 ALTER TABLE `acesso` DISABLE KEYS */;
INSERT INTO `acesso` (`id_acesso`, `cpf_pessoa`, `data_hora_entrada`, `justificativa`, `loguin_liberacao`, `manual`, `nome_pessoa`, `tag_cartao`, `cartao_idCartao`, `pessoa_idPEssoa`, `liberado`, `mensagem`) VALUES
	(249, '108.799.756-95', '2016-05-24 21:03:44', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(250, '108.799.756-95', '2016-05-24 19:03:58', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(251, NULL, '2016-05-24 18:04:14', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 1EE87124 não Cadastrada!'),
	(252, NULL, '2016-05-24 18:06:01', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 7EA8F324 não Cadastrada!'),
	(253, NULL, '2016-05-24 18:06:05', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 7EA8F324 não Cadastrada!'),
	(254, '108.799.756-95', '2016-05-24 16:06:09', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(255, NULL, '2016-05-24 15:07:34', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 7EA8F324 não Cadastrada!'),
	(256, '108.799.756-95', '2016-05-24 13:07:38', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(257, '108.799.756-95', '2016-05-24 13:08:54', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(258, NULL, '2016-05-24 12:09:17', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 4E39EB24 não Cadastrada!'),
	(259, '108.799.756-95', '2016-05-24 12:09:22', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(260, NULL, '2016-05-24 12:09:58', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 934C1B00 não Cadastrada!'),
	(261, NULL, '2016-05-24 12:10:19', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 4E39EB24 não Cadastrada!'),
	(262, NULL, '2016-05-24 11:10:24', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 934C1B00 não Cadastrada!'),
	(263, NULL, '2016-05-24 11:10:26', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 934C1B00 não Cadastrada!'),
	(264, NULL, '2016-05-24 11:11:10', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 1EE87124 não Cadastrada!'),
	(265, NULL, '2016-05-24 10:11:16', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 não Cadastrada!'),
	(266, NULL, '2016-05-24 09:13:02', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 7EA8F324 não Cadastrada!'),
	(267, NULL, '2016-05-24 09:13:11', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 7EA8F324 não Cadastrada!'),
	(268, NULL, '2016-05-24 19:13:20', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 7EA8F324 não Cadastrada!'),
	(269, '108.799.756-95', '2016-05-24 19:13:24', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(270, '108.799.756-95', '2016-05-24 08:13:54', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'0', 'Acesso Bloqueado Pessoa: Leonardo Gomes Jorge Bloqueado!'),
	(271, '108.799.756-95', '2016-05-24 08:14:28', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'0', 'Acesso Bloqueado Tag: 2E20D524 - Cartão 001 com Status de Perdido!'),
	(272, '123.093.984-96', '2016-05-25 19:02:39', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(273, '197.998.023-90', '2016-05-25 19:02:59', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(274, '123.093.984-96', '2016-05-25 19:05:19', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(275, '123.093.984-96', '2016-05-25 19:08:08', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(276, '197.998.023-90', '2016-05-25 19:08:18', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(277, NULL, '2016-05-25 19:09:57', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(278, NULL, '2016-05-25 19:10:08', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(279, NULL, '2016-05-25 19:10:15', '', 'Administrador', b'0', NULL, '75511B00', 21, NULL, b'0', 'Acesso Bloqueado Tag: 75511B00 - Cartão 013 sem Pessoa Cadastrado!'),
	(280, '197.998.023-90', '2016-05-25 19:15:22', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(281, '197.998.023-90', '2016-05-25 19:15:28', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(282, '197.998.023-90', '2016-05-25 19:15:44', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(283, '197.998.023-90', '2016-05-25 19:20:03', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(284, '123.093.984-96', '2016-05-25 19:20:23', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(285, '156.986.988.120-09', '2016-05-25 19:30:20', '', 'Administrador', b'0', 'Maria José', '1EC73A24', 11, 10, b'1', 'Acesso Liberado para: Maria José Tag: 1EC73A24 - Cartão 003'),
	(286, '197.998.023-90', '2016-05-25 19:31:00', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(287, NULL, '2016-05-25 19:32:01', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(288, '197.998.023-90', '2016-05-25 19:32:13', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(289, '108.799.756-95', '2016-05-25 19:32:26', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(290, '123.093.984-96', '2016-05-25 19:33:09', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(291, NULL, '2016-05-25 19:33:32', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(292, '123.093.984-96', '2016-05-25 19:34:57', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(293, '123.093.984-96', '2016-05-25 19:35:43', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(294, '108.799.756-95', '2016-05-25 19:35:54', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'0', 'Acesso Bloqueado Pessoa: Leonardo Gomes Jorge Bloqueado!'),
	(295, '156.784.184-84', '2016-05-25 19:40:57', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(296, NULL, '2016-05-25 19:41:24', '', 'Administrador', b'0', NULL, '934C1B00', 24, NULL, b'0', 'Acesso Bloqueado Tag: 934C1B00 - Cartão 016 sem Pessoa Cadastrado!'),
	(297, NULL, '2016-05-25 19:41:27', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(298, '156.784.184-84', '2016-05-25 19:41:31', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(299, '123.093.984-96', '2016-05-25 19:41:40', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(300, '197.998.023-90', '2016-05-25 19:41:43', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(301, '158.983.784-87', '2016-05-25 19:42:09', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(302, NULL, '2016-05-25 19:42:30', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(303, '123.093.984-96', '2016-05-25 19:44:14', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(304, '108.799.756-95', '2016-05-25 19:45:38', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(305, NULL, '2016-05-25 19:46:18', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(306, '123.093.984-96', '2016-05-25 19:46:50', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(307, '108.799.756-95', '2016-05-25 19:47:50', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(308, '108.799.756-95', '2016-05-25 19:48:00', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(309, '108.799.756-95', '2016-05-25 19:48:10', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(310, '189.976.873-05', '2016-05-25 19:48:51', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(311, '197.998.023-90', '2016-05-25 19:49:07', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(312, '123.093.984-96', '2016-05-25 19:49:22', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(313, '189.976.873-05', '2016-05-25 19:51:20', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(314, '197.998.023-90', '2016-05-25 19:51:37', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(315, '123.093.984-96', '2016-05-25 19:51:44', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(316, NULL, '2016-05-25 19:51:50', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(317, '156.784.184-84', '2016-05-25 19:52:05', '', 'Administrador', b'0', 'Jefferson Ribeiro', '4E39EB24', 10, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 4E39EB24 - Cartão 002'),
	(318, '108.799.756-95', '2016-05-25 19:52:14', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(319, '123.093.984-96', '2016-05-25 19:52:34', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(320, '123.093.984-96', '2016-05-25 19:55:00', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(321, NULL, '2016-05-25 19:56:34', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(322, '158.983.784-87', '2016-05-25 19:57:49', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(323, '123.093.984-96', '2016-05-25 19:58:04', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(324, '197.998.023-90', '2016-05-25 19:58:11', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(325, '123.093.984-96', '2016-05-25 20:00:14', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(326, '156.784.184-84', '2016-05-25 20:05:49', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(327, '158.983.784-87', '2016-05-25 20:06:07', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(328, '197.998.023-90', '2016-05-25 20:06:26', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(329, '123.093.984-96', '2016-05-25 20:06:31', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(330, '197.998.023-90', '2016-05-25 20:08:54', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(331, NULL, '2016-05-25 20:11:21', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(332, '108.799.756-95', '2016-05-25 20:11:36', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(333, '156.784.184-84', '2016-05-25 20:12:10', '', 'Administrador', b'0', 'Jefferson Ribeiro', '4E39EB24', 10, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 4E39EB24 - Cartão 002'),
	(334, '108.799.756-95', '2016-05-25 20:13:38', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(335, '197.998.023-90', '2016-05-25 20:15:06', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(336, '123.093.984-96', '2016-05-25 20:15:17', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(337, '108.799.756-95', '2016-05-25 20:21:12', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(338, '108.799.756-95', '2016-05-25 20:21:19', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(339, '108.799.756-95', '2016-05-25 20:21:25', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(340, '156.784.184-84', '2016-05-25 20:21:38', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(341, '108.799.756-95', '2016-05-25 20:26:35', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '0AE2E875', 16, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 0AE2E875 - Cartão 008'),
	(342, '197.998.023-90', '2016-05-25 20:26:47', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(343, '123.093.984-96', '2016-05-25 20:26:56', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(344, NULL, '2016-05-25 20:27:04', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(345, NULL, '2016-05-25 20:27:50', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(346, '156.784.184-84', '2016-05-25 20:29:42', '', 'Administrador', b'0', 'Jefferson Ribeiro', '4E39EB24', 10, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 4E39EB24 - Cartão 002'),
	(347, '123.093.984-96', '2016-05-25 20:29:54', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(348, '123.093.984-96', '2016-05-25 20:29:57', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(349, '123.093.984-96', '2016-05-25 20:30:00', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(350, '123.093.984-96', '2016-05-25 20:30:06', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(351, '123.093.984-96', '2016-05-25 20:30:09', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(352, '123.093.984-96', '2016-05-25 20:30:11', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(353, '123.093.984-96', '2016-05-25 20:30:22', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(354, '123.093.984-96', '2016-05-25 20:30:25', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(355, '197.998.023-90', '2016-05-25 20:30:36', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(356, '156.784.184-84', '2016-05-25 20:30:58', '', 'Administrador', b'0', 'Jefferson Ribeiro', '4E39EB24', 10, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 4E39EB24 - Cartão 002'),
	(357, '197.998.023-90', '2016-05-25 20:41:14', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(358, '123.093.984-96', '2016-05-25 20:41:30', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(359, '158.983.784-87', '2016-05-25 20:46:14', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(360, '156.986.988.120-09', '2016-05-25 20:46:30', '', 'Administrador', b'0', 'Maria José', '1EC73A24', 11, 10, b'1', 'Acesso Liberado para: Maria José Tag: 1EC73A24 - Cartão 003'),
	(361, '197.998.023-90', '2016-05-25 20:46:37', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(362, '197.998.023-90', '2016-05-25 20:46:43', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(363, '197.998.023-90', '2016-05-25 20:46:50', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(364, NULL, '2016-05-25 20:47:23', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(365, '197.998.023-90', '2016-05-25 20:47:31', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(366, '123.093.984-96', '2016-05-25 20:47:35', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(367, NULL, '2016-05-25 20:48:29', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(368, NULL, '2016-05-25 20:49:25', '', 'Administrador', b'0', NULL, 'AF791D00', 25, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 - teste sem Pessoa Cadastrado!'),
	(369, '108.799.756-95', '2016-05-25 20:50:04', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', 'AF791D00', 25, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: AF791D00 - teste'),
	(370, '108.799.756-95', '2016-05-25 20:50:17', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', 'AF791D00', 25, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: AF791D00 - teste'),
	(371, NULL, '2016-05-25 20:50:27', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 35D92E00 não Cadastrada!'),
	(372, '156.784.184-84', '2016-05-25 20:50:33', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(373, '158.983.784-87', '2016-05-25 20:51:18', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(374, '123.093.984-96', '2016-05-25 20:51:27', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(375, '158.983.784-87', '2016-05-25 20:52:06', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(376, NULL, '2016-05-25 20:54:39', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(377, '158.983.784-87', '2016-05-25 20:55:18', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(378, '158.983.784-87', '2016-05-25 20:56:17', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(379, '158.983.784-87', '2016-05-25 20:56:29', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(380, NULL, '2016-05-25 20:56:37', '', 'Administrador', b'0', NULL, '75511B00', 21, NULL, b'0', 'Acesso Bloqueado Tag: 75511B00 - Cartão 013 sem Pessoa Cadastrado!'),
	(381, '156.784.184-84', '2016-05-25 20:57:24', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(382, '123.093.984-96', '2016-05-25 21:00:38', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(383, '108.799.756-95', '2016-05-25 21:00:51', '', 'Administrador', b'0', 'Leonardo Gomes Jorge', '2E20D524', 9, 8, b'1', 'Acesso Liberado para: Leonardo Gomes Jorge Tag: 2E20D524 - Cartão 001'),
	(384, '123.093.984-96', '2016-05-25 21:01:03', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(385, '123.093.984-96', '2016-05-25 21:03:59', '', 'Administrador', b'0', 'Larissa Sousa', '7EA8F324', 14, 13, b'1', 'Acesso Liberado para: Larissa Sousa Tag: 7EA8F324 - Cartão 006'),
	(386, '123.093.984-96', '2016-05-25 21:04:20', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(387, '189.976.873-05', '2016-05-25 21:04:39', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(388, '158.983.784-87', '2016-05-25 21:12:52', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(389, '158.983.784-87', '2016-05-25 21:13:00', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(390, NULL, '2016-05-25 21:13:08', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(391, '158.983.784-87', '2016-05-25 21:17:26', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(392, NULL, '2016-05-25 21:17:40', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(393, '197.998.023-90', '2016-05-25 21:17:48', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(394, NULL, '2016-05-25 21:17:56', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(395, '197.998.023-90', '2016-05-25 21:18:07', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(396, '197.998.023-90', '2016-05-25 21:21:10', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(397, NULL, '2016-05-25 21:21:38', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(398, NULL, '2016-05-25 21:21:48', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(399, '197.998.023-90', '2016-05-25 21:21:56', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(400, '156.986.988.120-09', '2016-05-25 21:22:28', '', 'Administrador', b'0', 'Maria José', '1EC73A24', 11, 10, b'0', 'Acesso Bloqueado Pessoa: Maria José Bloqueado!'),
	(401, '156.784.184-84', '2016-05-25 21:23:13', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(402, '156.784.184-84', '2016-05-25 21:33:50', '', 'Administrador', b'0', 'Jefferson Ribeiro', '1EE87124', 17, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 1EE87124 - Cartão 009'),
	(403, '156.784.184-84', '2016-05-25 21:39:55', '', 'Administrador', b'0', 'Jefferson Ribeiro', '4E39EB24', 10, 9, b'1', 'Acesso Liberado para: Jefferson Ribeiro Tag: 4E39EB24 - Cartão 002'),
	(404, '189.976.873-05', '2016-05-25 21:40:07', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(405, NULL, '2016-05-25 21:40:36', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(406, NULL, '2016-05-25 21:40:51', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 35D92E00 não Cadastrada!'),
	(407, NULL, '2016-05-25 21:40:54', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(408, NULL, '2016-05-25 21:40:57', '', 'Administrador', b'0', NULL, '934C1B00', 24, NULL, b'0', 'Acesso Bloqueado Tag: 934C1B00 - Cartão 016 sem Pessoa Cadastrado!'),
	(409, '123.093.984-96', '2016-05-25 21:40:59', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(410, '189.976.873-05', '2016-05-25 21:41:35', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(411, '156.986.988.120-09', '2016-05-25 21:41:45', '', 'Administrador', b'0', 'Maria José', '934C1B00', 24, 10, b'0', 'Acesso Bloqueado Pessoa: Maria José Bloqueado!'),
	(412, NULL, '2016-05-25 21:42:09', '', 'Administrador', b'0', NULL, '75511B00', 21, NULL, b'0', 'Acesso Bloqueado Tag: 75511B00 - Cartão 013 sem Pessoa Cadastrado!'),
	(413, NULL, '2016-05-25 21:42:12', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: 35D92E00 não Cadastrada!'),
	(414, '156.986.988.120-09', '2016-05-25 21:42:16', '', 'Administrador', b'0', 'Maria José', '934C1B00', 24, 10, b'1', 'Acesso Liberado para: Maria José Tag: 934C1B00 - Cartão 016'),
	(415, '189.976.873-05', '2016-05-25 21:42:48', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(416, '189.976.873-05', '2016-05-25 21:42:57', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(417, '158.983.784-87', '2016-05-25 21:45:55', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(418, NULL, '2016-05-25 21:46:09', '', 'Administrador', b'0', NULL, 'AF152F00', 23, NULL, b'0', 'Acesso Bloqueado Tag: AF152F00 - Cartão 015 sem Pessoa Cadastrado!'),
	(419, '197.998.023-90', '2016-05-25 21:46:24', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(420, '123.093.984-96', '2016-05-25 21:46:36', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(421, '158.983.784-87', '2016-06-01 20:43:19', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(422, '158.983.784-87', '2016-06-01 20:43:30', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(423, '158.983.784-87', '2016-06-01 20:43:44', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(424, NULL, '2016-06-01 20:43:53', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(425, '189.976.873-05', '2016-06-01 20:44:08', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(426, NULL, '2016-06-01 20:44:30', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(427, '189.976.873-05', '2016-06-01 20:44:34', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(428, '197.998.023-90', '2016-06-01 20:45:15', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(429, NULL, '2016-06-01 20:45:45', '', 'Administrador', b'0', NULL, '75511B00', 21, NULL, b'0', 'Acesso Bloqueado Tag: 75511B00 - Cartão 013 sem Pessoa Cadastrado!'),
	(430, '197.998.023-90', '2016-06-01 20:46:12', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(431, NULL, '2016-06-01 20:46:35', '', 'Administrador', b'0', NULL, '75511B00', 21, NULL, b'0', 'Acesso Bloqueado Tag: 75511B00 - Cartão 013 sem Pessoa Cadastrado!'),
	(432, '197.998.023-90', '2016-06-01 20:46:43', '', 'Administrador', b'0', 'Joana Fernandes', '4E541224', 12, 11, b'1', 'Acesso Liberado para: Joana Fernandes Tag: 4E541224 - Cartão 004'),
	(433, '158.983.784-87', '2016-06-01 20:48:18', '', 'Administrador', b'0', 'Divino Dias Sousa', '1EB14424', 15, 14, b'1', 'Acesso Liberado para: Divino Dias Sousa Tag: 1EB14424 - Cartão 007'),
	(434, '189.976.873-05', '2016-06-01 20:49:36', '', 'Administrador', b'0', 'Tatiane Gomes Jorge', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorge Tag: 4EA15F24 - Cartão 005'),
	(435, NULL, '2016-06-02 20:48:39', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(436, '156.986.988.120-09', '2016-06-02 20:49:46', '', 'Administrador', b'0', 'Maria José', '934C1B00', 24, 10, b'1', 'Acesso Liberado para: Maria José Tag: 934C1B00 - Cartão 016'),
	(437, NULL, '2016-06-02 20:50:04', '', 'Administrador', b'0', NULL, NULL, NULL, NULL, b'0', 'Acesso Bloqueado Tag: AF791D00 não Cadastrada!'),
	(438, '189.976.873-05', '2016-06-02 20:50:12', '', 'Administrador', b'0', 'Tatiane Gomes Jorgeaa', '4EA15F24', 13, 12, b'1', 'Acesso Liberado para: Tatiane Gomes Jorgeaa Tag: 4EA15F24 - Cartão 005'),
	(439, NULL, '2016-06-02 20:53:45', '', 'Administrador', b'0', NULL, '75511B00', 21, NULL, b'0', 'Acesso Bloqueado Tag: 75511B00 - Cartão 013 sem Pessoa Cadastrado!'),
	(440, '156.986.988.120-09', '2016-06-02 20:56:35', '', 'Administrador', b'0', 'Maria José', '1EC73A24', 11, 10, b'1', 'Acesso Liberado para: Maria José Tag: 1EC73A24 - Cartão 003'),
	(441, '156.986.988.120-09', '2016-06-02 20:56:45', '', 'Administrador', b'0', 'Maria José', '1EC73A24', 11, 10, b'1', 'Acesso Liberado para: Maria José Tag: 1EC73A24 - Cartão 003'),
	(442, '123.093.984-96', '2016-06-02 20:57:08', '', 'Administrador', b'0', 'Larissa Sousa', '431A1B00', 19, 13, b'0', 'Acesso Bloqueado Tag: 431A1B00 - Cartão 011 com Status de Perdido!'),
	(443, '197.998.023-90', '2016-06-02 20:57:23', '', 'Administrador', b'0', 'Joana Fernandes', '66AE2612', 18, 11, b'0', 'Acesso Bloqueado Tag: 66AE2612 - Cartão 010 com Status de Bloqueado!'),
	(444, NULL, '2016-06-02 20:57:27', '', 'Administrador', b'0', NULL, 'F4D3B8EB', 22, NULL, b'0', 'Acesso Bloqueado Tag: F4D3B8EB - Cartão 014 sem Pessoa Cadastrado!'),
	(445, '156.986.988.120-09', '2016-06-02 20:57:32', '', 'Administrador', b'0', 'Maria José', '1EC73A24', 11, 10, b'1', 'Acesso Liberado para: Maria José Tag: 1EC73A24 - Cartão 003'),
	(446, '156.986.988.120-09', '2016-06-02 20:57:40', '', 'Administrador', b'0', 'Maria José', '1EC73A24', 11, 10, b'1', 'Acesso Liberado para: Maria José Tag: 1EC73A24 - Cartão 003');
/*!40000 ALTER TABLE `acesso` ENABLE KEYS */;


-- Copiando estrutura para tabela aps_controleacesso_bd.auditoria_sistema
CREATE TABLE IF NOT EXISTS `auditoria_sistema` (
  `auditoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_alteracao` datetime NOT NULL,
  `nome_tabela` varchar(255) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_registro` int(11) DEFAULT NULL,
  `dados_old` varchar(255) DEFAULT NULL,
  `dados_new` varchar(255) DEFAULT NULL,
  `operacao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`auditoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aps_controleacesso_bd.auditoria_sistema: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria_sistema` DISABLE KEYS */;
INSERT INTO `auditoria_sistema` (`auditoria_id`, `data_alteracao`, `nome_tabela`, `id_usuario`, `id_registro`, `dados_old`, `dados_new`, `operacao`) VALUES
	(3, '2016-06-21 19:43:28', 'pessoa', 1, 9, '0', '0', 'UPDATE'),
	(4, '2016-06-21 19:58:03', 'pessoa', 1, 9, '1', '1', 'UPDATE'),
	(5, '2016-06-21 20:01:43', 'pessoa', 1, 9, 'Jefferson Ribeiro156.784.184-841989-05-01jefferson_riba@hotmail.comjefferson.ribeiroJefferson Ribeiro(34)99148-3212(34)3223-7765', 'Jefferson Ribeiro tESTE156.784.184-841989-05-01jefferson_riba@hotmail.comjefferson.ribeiroJefferson Ribeiro tESTE(34)99148-3212(34)3223-7765', 'UPDATE'),
	(6, '2016-06-21 20:03:55', 'pessoa', 1, 9, 'Jefferson Ribeiro tESTE  156.784.184-84 1989-05-01 jefferson_riba@hotmail.com jefferson.ribeiro Jefferson Ribeiro tESTE  (34)99148-3212 (34)3223-7765', 'Jefferson Ribeiro  156.784.184-84 1989-05-01 jefferson_riba@hotmail.com jefferson.ribeiro Jefferson Ribeiro  (34)99148-3212 (34)3223-7765', 'UPDATE'),
	(7, '2016-06-21 20:19:36', 'cartao', 1, 9, 'Cartão 001 A 8', 'Cartão 001 -- A 8', 'UPDATE'),
	(8, '2016-06-21 20:20:10', 'cartao', 1, 9, 'Cartão 001 -- A 8', 'Cartão 001 A 8', 'UPDATE'),
	(9, '2016-06-21 20:26:35', 'acesso', 1, 447, 'Registro Escluido', 'Registro Escluido', 'DELETE');
/*!40000 ALTER TABLE `auditoria_sistema` ENABLE KEYS */;


-- Copiando estrutura para tabela aps_controleacesso_bd.cartao
CREATE TABLE IF NOT EXISTS `cartao` (
  `id_cartao` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `pessoa_idPEssoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cartao`),
  KEY `FK_rhkptejh4bk9w48f4pwp1qko6` (`pessoa_idPEssoa`),
  CONSTRAINT `FK_rhkptejh4bk9w48f4pwp1qko6` FOREIGN KEY (`pessoa_idPEssoa`) REFERENCES `pessoa` (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aps_controleacesso_bd.cartao: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `cartao` DISABLE KEYS */;
INSERT INTO `cartao` (`id_cartao`, `descricao`, `status`, `tag`, `pessoa_idPEssoa`) VALUES
	(9, 'Cartão 001', 'A', '2E20D524', 8),
	(10, 'Cartão 002', 'A', '4E39EB24', 9),
	(11, 'Cartão 003', 'A', '1EC73A24', 10),
	(12, 'Cartão 004', 'A', '4E541224', 11),
	(13, 'Cartão 005', 'A', '4EA15F24', 12),
	(14, 'Cartão 006', 'A', '7EA8F324', 13),
	(15, 'Cartão 007', 'A', '1EB14424', 14),
	(16, 'Cartão 008', 'A', '0AE2E875', 8),
	(17, 'Cartão 009', 'A', '1EE87124', 9),
	(18, 'Cartão 010', 'B', '66AE2612', 11),
	(19, 'Cartão 011', 'P', '431A1B00', 13),
	(21, 'Cartão 013', 'A', '75511B00', NULL),
	(22, 'Cartão 014', 'A', 'F4D3B8EB', NULL),
	(23, 'Cartão 015', 'A', 'AF152F00', 8),
	(24, 'Cartão 016', 'A', '934C1B00', 10),
	(25, 'teste', 'A', '', NULL);
/*!40000 ALTER TABLE `cartao` ENABLE KEYS */;


-- Copiando estrutura para tabela aps_controleacesso_bd.pessoa
CREATE TABLE IF NOT EXISTS `pessoa` (
  `idpessoa` int(11) NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loguin` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `telefone_celular` varchar(255) DEFAULT NULL,
  `telefone_fixo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela aps_controleacesso_bd.pessoa: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` (`idpessoa`, `ativo`, `cpf`, `data_nascimento`, `email`, `loguin`, `nome`, `rg`, `senha`, `telefone_celular`, `telefone_fixo`) VALUES
	(8, b'1', '108.799.756-95', '1995-07-16', 'leogomes26@hotmail.com', 'leonardo.gomes', 'Leonardo Gomes Jorge', '', '1111111', '(34)99148-1896', '(34)3223-1809'),
	(9, b'1', '156.784.184-84', '1989-05-01', 'jefferson_riba@hotmail.com', 'jefferson.ribeiro', 'Jefferson Ribeiro', '', '123123123', '(34)99148-3212', '(34)3223-7765'),
	(10, b'1', '156.986.988.120-09', '1992-09-07', 'maria@gmail.com', 'maria.jose', 'Maria José', '', '1789098', '(34)997554390', '(34)3214-0087'),
	(11, b'1', '197.998.023-90', '1884-09-04', 'fernandes@yahoo.com.br', 'joana.fernandes', 'Joana Fernandes', '', '123123123', '(34)99675-0987', '(34)3245-6098'),
	(12, b'1', '189.976.873-05', '1998-04-02', 'tatygomes@hotmail.com', 'tatiane.gomes', 'Tatiane Gomes Jorgeaa', '', '121212', '(34)98876-3422', '(34)3223-1709'),
	(13, b'1', '123.093.984-96', '1999-07-14', 'larisouza28@hotmail.com', 'larissa.sousa', 'Larissa Sousa', '', '1234567', '(34)99138-9835', '(34)3248-8973'),
	(14, b'1', '158.983.784-87', '1978-04-16', 'sdias@hotmail.com', 'divino.dias', 'Divino Dias Sousa', '', '8876554', '(34)99156-0085', '(34)3248-9875'),
	(16, b'1', '', NULL, '', '', 'aaaaa', '', '', '', ''),
	(17, b'1', '10879975696', '2016-06-06', 'leogomes26@hotmail.com', 'leonardo.gomes', 'Leonardo Gomes', '123123123', '123123', '', '');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;


-- Copiando estrutura para trigger aps_controleacesso_bd.trg_auditoria_sistema_acesso_dlt
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_auditoria_sistema_acesso_dlt` BEFORE DELETE ON `acesso` FOR EACH ROW BEGIN 
	INSERT INTO auditoria_sistema 
			(data_alteracao,
			 nome_tabela, 
			 id_usuario, 
			 id_registro, 
			 dados_old, 
			 dados_new, 
			 operacao)
   VALUES (NOW(), 
				'acesso', 
				1, 
				OLD.id_acesso, 
				'Registro Escluido',
				'Registro Escluido', 
				'DELETE');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Copiando estrutura para trigger aps_controleacesso_bd.trg_auditoria_sistema_cartao
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_auditoria_sistema_cartao` AFTER UPDATE ON `cartao` FOR EACH ROW BEGIN 
	INSERT INTO auditoria_sistema 
			(data_alteracao,
			 nome_tabela, 
			 id_usuario, 
			 id_registro, 
			 dados_old, 
			 dados_new, 
			 operacao)
   VALUES (NOW(), 
				'cartao', 
				1, 
				OLD.id_cartao, 
				(CONCAT (OLD.descricao," ", OLD.status ," ", OLD.pessoa_idPEssoa)),
				(CONCAT(NEW.descricao," ", NEW.status ," ", NEW.pessoa_idPEssoa)), 
				'UPDATE');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Copiando estrutura para trigger aps_controleacesso_bd.trg_auditoria_sistema_pessoa
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_auditoria_sistema_pessoa` AFTER UPDATE ON `pessoa` FOR EACH ROW BEGIN 
	INSERT INTO auditoria_sistema 
			(data_alteracao,
			 nome_tabela, 
			 id_usuario, 
			 id_registro, 
			 dados_old, 
			 dados_new, 
			 operacao)
   VALUES (NOW(), 
				'pessoa', 
				1, 
				OLD.idpessoa, 
				(CONCAT (OLD.nome ," ", OLD.ativo ," ", OLD.cpf ," ", OLD.data_nascimento ," ", OLD.email ," ", OLD.loguin ," ", OLD.nome ," ", OLD.rg," ", OLD.telefone_celular ," ", OLD.telefone_fixo)),
				(CONCAT(NEW.nome ," ", NEW.ativo ," ", NEW.cpf ," ", NEW.data_nascimento ," ", NEW.email ," ", NEW.loguin ," ", NEW.nome ," ", NEW.rg," ", NEW.telefone_celular ," ",NEW.telefone_fixo)), 
				'UPDATE');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
