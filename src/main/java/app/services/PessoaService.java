package app.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import app.dao.PessoaDao;
import app.model.Pessoa;

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
	
	
}
