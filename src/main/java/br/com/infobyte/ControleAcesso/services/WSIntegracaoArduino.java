package br.com.infobyte.ControleAcesso.services;


import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;



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
		System.out.println("Menagem Recebida" + mensagem);
	}
	
	public static void enviarMensagemClientes(String menasagem) {
		System.out.println("Enviando mensagem para clientes: "+menasagem);
		for (Session session : sessoes) {
			try {				
				session.getBasicRemote().sendObject(menasagem);
			} catch (Exception e) {
				System.err.println("Erro ao enviar mensagem para o clientes em integracaoArduino. "
			+ e.getMessage());
			}
		}
	}



}
