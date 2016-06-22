DELIMITER $$ 
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
END$$

DELIMITER $$ 
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
END$$

DELIMITER $$ 
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
END$$