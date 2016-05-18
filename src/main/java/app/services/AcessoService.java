package app.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import app.dao.AcessoDao;
import app.model.Acesso;
@RestController
@RequestMapping("/acesso")
public class AcessoService {
	
	@Autowired
	AcessoDao acessoDao;
	
	@RequestMapping(value = "/findAll",
			produces = {"application/json"})
	@ResponseBody
	public List<Acesso> getAllPessoas(){
		return acessoDao.findAll();
	}	
	
}
