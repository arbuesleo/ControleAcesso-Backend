package br.com.infobyte.ControleAcesso.services;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.infobyte.ControleAcesso.dao.AcessoDao;
import br.com.infobyte.ControleAcesso.dao.CartaoDao;
import br.com.infobyte.ControleAcesso.dao.PessoaDao;
import br.com.infobyte.ControleAcesso.model.Acesso;
import br.com.infobyte.ControleAcesso.model.Cartao;
import br.com.infobyte.ControleAcesso.model.Pessoa;
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
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", null, cartaoAcesso, false, "Acesso Bloqueado Tag: " + cartaoAcesso.getTag() +" - "+ cartaoAcesso.getDescricao()+ " sem Pessoa Cadastrado!");
			acessoDao.save(acesso);
			return "B";
		}
		
		//Verifica se cartao esta bloqueado
		if(cartaoAcesso.getStatus().equals("B")){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, false, "Acesso Bloqueado Tag: " + cartaoAcesso.getTag() +" - "+ cartaoAcesso.getDescricao()+ " com Status de Bloqueado!");
			acessoDao.save(acesso);
			return "B";
		}
		//Verifica se cartao esta perdido
		if(cartaoAcesso.getStatus().equals("P")){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, false, "Acesso Bloqueado Tag: " + cartaoAcesso.getTag() +" - "+ cartaoAcesso.getDescricao()+ " com Status de Perdido!");
			acessoDao.save(acesso);
			return "B";
		}
		//Verifica se pessoa esta bloquada		
		if(!pessoaAcesso.getAtivo()){
			Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, false, "Acesso Bloqueado Pessoa: " + pessoaAcesso.getNome() + " Bloqueado!");
			acessoDao.save(acesso);
			return "B";
		}
		//Registra acessi e retorna liberado
		Acesso acesso = new Acesso(0,new Date(), false, "", "Administrador", pessoaAcesso, cartaoAcesso, true, "Acesso Liberado para: " + pessoaAcesso.getNome() + " Tag: " 
		+ cartaoAcesso.getTag() + " - "+ cartaoAcesso.getDescricao());
		acessoDao.save(acesso);
		return "L";		
		
	}	
	
	@RequestMapping(value = "/findUltimosDez",
			produces = {"application/json"},
			method = RequestMethod.GET)
	@ResponseBody
	public List<Acesso> getUltimosDez(){
		return acessoDao.pesquisaUltimosDez();
	}
	
	//http://localhost:8888/acesso/findByDate?dtIn=19/05/2016&dtFim=22/05/2016
	@RequestMapping(value = "/findByDate",
			produces = {"application/json"},
			method = RequestMethod.GET)
	@ResponseBody
	public List<Acesso> getByDate(@RequestParam(value ="dtIn") String dtIn, @RequestParam(value ="dtFim") String dtFim){
		String formato = "dd/MM/yyyy";  
		Date dateInicial = null;
		Date dateFinal = null;
		
		try {			
			dateInicial = new SimpleDateFormat(formato).parse(dtIn);
			dateFinal = new SimpleDateFormat(formato).parse(dtFim);  
		} catch (ParseException e) {
			e.printStackTrace();
		}
		dateFinal.setDate(dateFinal.getDate() + 1);
		return acessoDao.findBydataHoraEntradaBetween(dateInicial , dateFinal);
	}
	
	@RequestMapping(value = "/registrarAcessoManual",
			consumes = "application/json",
			produces = "text/plain",
			method = RequestMethod.POST)
	public void registrarAcessoManual(@RequestBody Acesso acesso){
		    acesso.setManual(true);
			acesso.setDataHoraEntrada(new Date());
			acessoDao.save(acesso);
		
	}
	
	//http://localhost:8888/acesso/groupHora?dtIn=19/05/2016&dtFim=22/05/2016
	@RequestMapping(value = "/groupHora",
			produces = {"application/json"},
			method = RequestMethod.GET)
	@ResponseBody
	public List<Object> groupHora(@RequestParam(value ="dtIn") String dtIn, @RequestParam(value ="dtFim") String dtFim){
		String formato = "dd/MM/yyyy";  
		Date dateInicial = null;
		Date dateFinal = null;
		
		try {			
			dateInicial = new SimpleDateFormat(formato).parse(dtIn);
			dateFinal = new SimpleDateFormat(formato).parse(dtFim);  
		} catch (ParseException e) {
			e.printStackTrace();
		}
		dateFinal.setDate(dateFinal.getDate() + 1);
		return acessoDao.pesquisaAcessosPorHora(dateInicial , dateFinal);
	}
	
}
