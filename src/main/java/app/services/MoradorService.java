package app.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.dao.MoradorDao;


@RestController
@RequestMapping("morador")
public class MoradorService {
	@Autowired
	MoradorDao moradorDao;
/*	
	@RequestMapping(
			value = "/getMoradors",
			produces = {"application/json"}
			)
	@ResponseBody
	public List<Morador> getMoradors(){	
		Morador moradorTeste = new Morador();
		moradorTeste.setCpf("10879975695");
		moradorTeste.setEmail("leogomes26@hotmail.com");
		moradorTeste.setLoguin("leonardo.gomes");
		moradorTeste.setMoradorAtivo(true);
		moradorTeste.setNome("Leonardo Gomes Jorge");
		moradorTeste.setSenha("llllll");
		moradorDao.save(moradorTeste);
		return moradorDao.findAll();			
	}*/
}
