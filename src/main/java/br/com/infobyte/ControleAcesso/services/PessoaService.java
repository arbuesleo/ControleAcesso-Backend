package br.com.infobyte.ControleAcesso.services;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.infobyte.ControleAcesso.dao.PessoaDao;
import br.com.infobyte.ControleAcesso.model.Cartao;
import br.com.infobyte.ControleAcesso.model.Pessoa;

@RestController
@RequestMapping("/pessoa")
public class PessoaService {
	@Autowired
	PessoaDao pessoaDao;
	
	
	@RequestMapping(value = "/findAll",
			produces = {"application/json"})
	@ResponseBody
	public List<Pessoa> getAllPessoas(){
		return pessoaDao.findAll();
	}	
	
	@RequestMapping(value = "/add",
			consumes = {"application/json"},
			produces = {"text/plain"},
			method = RequestMethod.POST
	)
	public void addPessoa(@RequestBody Pessoa pessoa){	
		pessoaDao.save(pessoa);
	}
	
	@RequestMapping(value = "/finbById",
					produces = {"application/json"},
					method = RequestMethod.GET
	)
	public Pessoa findById(@RequestParam(value ="id") Integer id){	
		return pessoaDao.findByidPEssoa(id);
	}
	
	@RequestMapping(value = "/deleteById",
			method = RequestMethod.GET
	)
	public void deleteById(@RequestParam(value ="id") Integer id){
		 Pessoa pessoa = pessoaDao.findByidPEssoa(id);
		 for (Cartao cartao : pessoa.getCartoes()) {
			 cartao.setPessoa(null);			 
		 }
		 pessoaDao.save(pessoa);
		 pessoaDao.delete(id);
	}
	
	
}
