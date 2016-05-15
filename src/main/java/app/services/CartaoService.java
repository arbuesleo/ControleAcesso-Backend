package app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import app.dao.CartaoDao;
import app.dao.PessoaDao;
import app.model.Cartao;
import app.model.Pessoa;

@RestController
@RequestMapping("/cartao")
public class CartaoService {
	
	@Autowired
	CartaoDao cartaoDao;
	
	@Autowired
	PessoaDao pessoaDao;
	
	@RequestMapping(value = "/findAll",
			produces = {"application/json"})
	@ResponseBody
	public List<Cartao> getAllCartoes(){
		return cartaoDao.findAll();
	}
	
	@RequestMapping(value = "/findDisponiveis",
			produces = {"application/json"})
	@ResponseBody
	public List<Cartao> getDisponiveis(){
		return cartaoDao.findBypessoa(null);
	}
	
	
	@RequestMapping(value = "/add",
			consumes = {"application/json"},
			produces = {"text/plain"},
			method = RequestMethod.POST
	)
	public void addCartao(@RequestBody Cartao cartao){	
		
		if(cartao.getIdCartao() != null){
			Pessoa pessoa = cartaoDao.findByidCartao(cartao.getIdCartao()).getPessoa();
			cartao.setPessoa(pessoa);
		}
		
		
		cartaoDao.save(cartao);
	}
	
	@RequestMapping(value = "/findById",
			produces = {"application/json"},
			method = RequestMethod.GET
	)
	public Cartao findById(@RequestParam(value ="id") Integer id){	
		return cartaoDao.findByidCartao(id);
	}
	
	@RequestMapping(value = "/deleteById",
			method = RequestMethod.GET
	)
	public void deleteById(@RequestParam(value ="id") Integer id){	
		 cartaoDao.delete(id);
	}
	
	@RequestMapping(value = "/removePessoaCartao",
			method = RequestMethod.GET
	)
	public void removePessoaCartao(@RequestParam(value ="id") Integer id){	
		Cartao cartao = cartaoDao.findByidCartao(id);
		cartao.setPessoa(null);		
		cartaoDao.save(cartao);
	}
	
	@RequestMapping(value = "/addPessoaCartao",
			method = RequestMethod.GET
	)
	public void addPessoaCartao(@RequestParam(value ="idCartao") Integer idCartao, @RequestParam(value ="idPessoa") Integer idPessoa){	
		Cartao cartao = cartaoDao.findByidCartao(idCartao);
		Pessoa pessoa = pessoaDao.findByidPEssoa(idPessoa);
		cartao.setPessoa(pessoa);
		cartaoDao.save(cartao);
	}
	
	
}
