INSERT INTO `aps_controleacesso_bd`.`pessoa` 
(`ativo`, `cpf`, `data_nascimento`, `email`, `loguin`, `nome`, `rg`, `senha`, `telefone_celular`, `telefone_fixo`) 
VALUES 
('1', '108.799.756-95', '1995-07-17', 'leogomes26@hotmail.com', 'leonardo.gomes', 'Leonardo Gomes Jorge', 'MG-18.299.527', '123123123', 
'(34)99148-1896', '(34)3223-1709');
INSERT INTO `aps_controleacesso_bd`.`cartao` (`descricao`, `status`, `tag`) VALUES ('Cartao 001', 'A', '1A5V22');
UPDATE `aps_controleacesso_bd`.`cartao` SET `pessoa_idPEssoa`=1 WHERE  `id_cartao`=1;