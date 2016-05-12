package app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import app.model.Acesso;

@Repository
public interface AcessoDao extends JpaRepository<Acesso, Integer>{
	
}
