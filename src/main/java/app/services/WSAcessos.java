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


@ServerEndpoint(value = "wsacesos")
public class WSAcessos {
	private static final Set<Session> sessoes =
			Collections.synchronizedSet(new HashSet<Session>());
	@Autowired
	PessoaDao pessoaDao;
	@Autowired
	AcessoDao acessoDao;
	@Autowired
	CartaoDao cartaoDao;
	
	
	
	static{
		
	}
	
	@OnOpen
	public void sessaoAberta(Session sessao) {
		System.out.println("sessao aberta");
		sessoes.add(sessao);
	}
	@OnClose
	public void sessaoFechada(Session sessao) {
		System.out.println("sessao fechada");
		sessoes.remove(sessao);
	}
	
	@OnMessage
	public void receberMensagem(String mensagem) {
		//Chamar funcção de liberar acesso manual
	}
	
	public static void enviarAcessoClientes(Acesso acesso) {
		for (Session session : sessoes) {
			try {
				session.getBasicRemote().sendObject(acesso);
			} catch (Exception e) {
				System.err.println("Erro ao enviar mensagem para o cliente. "
			+ e.getMessage());
			}
		}
	}
	
	public static void enviarMensagemClientes(String acesso) {
		for (Session session : sessoes) {
			try {
				session.getBasicRemote().sendObject(acesso);
			} catch (Exception e) {
				System.err.println("Erro ao enviar mensagem para o cliente. "
			+ e.getMessage());
			}
		}
	}

	public String validarAcesso(String tag){
		
		Cartao cartaoAcesso = null;		
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
		}
		
	}

}
