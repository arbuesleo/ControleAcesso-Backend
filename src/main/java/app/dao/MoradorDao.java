package app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import app.model.Morador;

@Repository
public interface MoradorDao extends JpaRepository<Morador, Integer>{

}
