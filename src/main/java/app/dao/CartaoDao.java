package app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import app.model.Cartao;

@Repository
public interface CartaoDao extends JpaRepository<Cartao, Integer>{

}
