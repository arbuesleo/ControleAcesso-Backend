package app.dao;

import java.util.List;

import org.springframework.data.elasticsearch.annotations.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import app.model.Pessoa;

@Repository
public interface PessoaDao extends JpaRepository<Pessoa, Integer>{
	public Pessoa findByidPEssoa(Integer id);
	@Query("select u from pessoa u where u.nome LIKE CONCAT('%',:nome,'%')")
	public List<Pessoa> findBynomeLike(String nome);

}
