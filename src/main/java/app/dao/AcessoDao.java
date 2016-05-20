package app.dao;


import java.util.Date;
import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import app.model.Acesso;

@Repository
public interface AcessoDao extends JpaRepository<Acesso, Integer>{
	@Query(value = "SELECT * FROM acesso ORDER BY acesso.id_acesso DESC LIMIT 10", nativeQuery = true)
	public List<Acesso> pesquisaUltimosDez();
	public List<Acesso> findBydataHoraEntradaBetween(Date start, Date end);
}
