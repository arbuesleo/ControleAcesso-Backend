package app.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import app.model.Cartao;
import app.model.Pessoa;

@Repository
public interface CartaoDao extends JpaRepository<Cartao, Integer>{
  public Cartao findByidCartao(Integer id);
  public List<Cartao> findBypessoa(Pessoa pessoa);
  public Cartao findByTag(String tag);
}
