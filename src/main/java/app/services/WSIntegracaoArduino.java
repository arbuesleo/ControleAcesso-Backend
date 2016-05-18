package app.services;


import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;


import app.dao.AcessoDao;
import app.dao.CartaoDao;
import app.dao.PessoaDao;
import app.model.Acesso;
import app.model.Cartao;
import app.model.Pessoa;


@ServerEndpoint(value = "/integracaoArduino")
public class WSIntegracaoArduino {
	private static final Set<Session> sessoes =
			Collections.synchronizedSet(new HashSet<Session>());		
	
	public WSIntegracaoArduino() {
		
	}
	
	@OnOpen
	public void sessaoAberta(Session sessao) {
		System.out.println("sessao aberta em integracaoArduino");
		sessoes.add(sessao);
	}
	@OnClose
	public void sessaoFechada(Session sessao) {
		System.out.println("sessao fechada em integracaoArduino");
		sessoes.remove(sessao);
	}
	
	@OnMessage
	public void receberMensagem(String mensagem) {
		//não recebe mensagens
	}
	
	public static void enviarMensagemClientes(String menasagem) {
		for (Session session : sessoes) {
			try {
				session.getBasicRemote().sendObject(menasagem);
			} catch (Exception e) {
				System.err.println("Erro ao enviar mensagem para o clientes em integracaoArduino. "
			+ e.getMessage());
			}
		}
	}

	public void validarAcesso(String tag){
		
	/*	Cartao cartaoAcesso = null;		
		cartaoAcesso = cartaoDao.findByidCartao(5);		
		
		
		if(cartaoAcesso == null){
			return "Cartao TAG: " +tag+" não Cadastrado no Sistema!";
		}
		
		if (cartaoAcesso.getStatus() == "B"){
			return "Cartao TAG: " +tag+" Bloqueado!";
		}
		
		if (cartaoAcesso.getStatus() == "P"){
			return "Cartao TAG: " +tag+" Perdido!";
		}
		
		Pessoa pessoaAcesso;
		pessoaAcesso = pessoaDao.findByCartoes(cartaoAcesso);
		
		if(pessoaAcesso == null){
			return "Pessoa não cadastrada para o cartão: " +tag;
		}
		
		if(!pessoaAcesso.getAtivo()){
			return "Pessoa " + pessoaAcesso.getNome() + " inativa";
		}
		
		//Acesso acesso = new Acesso(0, new Date(), false, "", "Administrado", pessoaAcesso, cartaoAcesso);
		
		try {
			//acessoDao.save(acesso);
			return "Acesso Registrado com Sucesso, para: " + pessoaAcesso.getNome();
		} catch (Exception e) {
			return "Erro ao registrar acesso: " + e.getMessage();
		}*/
		
	}

}
