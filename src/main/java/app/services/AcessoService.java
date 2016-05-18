package app.services;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import app.dao.AcessoDao;
import app.dao.CartaoDao;
import app.dao.PessoaDao;
import app.model.Acesso;
import app.model.Cartao;
import app.model.Pessoa;
@RestController
@RequestMapping("/acesso")
public class AcessoService {
	
	@Autowired
	AcessoDao acessoDao;
	@Autowired
	PessoaDao pessoaDao;
	@Autowired
	CartaoDao cartaoDao;
	
	@RequestMapping(value = "/findAll",
			produces = {"application/json"})
	@ResponseBody
	public List<Acesso> getAllPessoas(){
		return acessoDao.findAll();
	}	
	
	@RequestMapping(value = "/registrarAcesso",
			produces = {"application/json"},
			method = RequestMethod.GET)
	@ResponseBody
	public String registrarAcesso(@RequestParam(value ="tag") String tag){
		//Busca o cartao
		Cartao cartaoAcesso = cartaoDao.findByTag(tag);
		//Verifica se tag existe
		if(cartaoAcesso == null){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", null, null, false, "Acesso Bloqueado Tag: " + tag +" não Cadastrada!");
			acessoDao.save(acesso);
			return "B";
		}
		//Busca Pessoa
		Pessoa pessoaAcesso = pessoaDao.findByCartoes(cartaoAcesso);
		//Verifica se cartao esta vinculado a pessoa
		if(pessoaAcesso == null){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", null, cartaoAcesso, false, "Acesso Bloqueado Tag: " + cartaoAcesso.getTag() +" - "+ cartaoAcesso.getDescricao()+ " sem Pessoa Cadastrada!");
			acessoDao.save(acesso);
			return "B";
		}
		
		//Verifica se cartao esta bloqueado
		if(cartaoAcesso.getStatus().equals("B")){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, false, "Acesso Bloqueado Tag: " + cartaoAcesso.getTag() +" - "+ cartaoAcesso.getDescricao()+ " com Status de Bloqueada!");
			acessoDao.save(acesso);
			return "B";
		}
		//Verifica se cartao esta perdido
		if(cartaoAcesso.getStatus().equals("P")){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, false, "Acesso Bloqueado Tag: " + cartaoAcesso.getTag() +" - "+ cartaoAcesso.getDescricao()+ " com Status de Perdida!");
			acessoDao.save(acesso);
			return "B";
		}
		//Verifica se pessoa esta bloquada		
		if(!pessoaAcesso.getAtivo()){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, false, "Acesso Bloqueado Pessoa: " + pessoaAcesso.getNome() + " Bloqueada!");
			acessoDao.save(acesso);
			return "B";
		}
		//Registra acessi e retorna liberado
		Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, false, "Acesso Liberado para: " + pessoaAcesso.getNome() + " Tag: " 
		+ cartaoAcesso.getTag() + " - "+ cartaoAcesso.getDescricao());
		acessoDao.save(acesso);
		return "L";
		
		
	}
	
}
