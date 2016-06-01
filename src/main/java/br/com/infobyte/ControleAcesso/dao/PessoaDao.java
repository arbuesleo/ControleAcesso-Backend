package br.com.infobyte.ControleAcesso.dao;

import java.util.List;

import org.springframework.data.elasticsearch.annotations.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import br.com.infobyte.ControleAcesso.model.Cartao;
import br.com.infobyte.ControleAcesso.model.Pessoa;

@Repository
public interface PessoaDao extends JpaRepository<Pessoa, Integer>{
	public Pessoa findByidPEssoa(Integer id);
	
	@Query("from Pessoa u where u.nome LIKE :nome")
	public List<Pessoa> findByNomeContaining(@Param("nome") String nome);
	public Pessoa findByCartoes(Cartao cartao);

}
