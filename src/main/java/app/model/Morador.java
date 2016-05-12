package app.model;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@XmlRootElement
public class Morador{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer idMorador;	
	@Temporal(value = TemporalType.DATE)
	Date dataInicio;
	@Temporal(value = TemporalType.DATE)
	Date dataFim;
	Boolean moradorAtivo;
	@OneToOne
	Pessoa pessoa;
	
	
	public Morador(Integer idMorador, Date dataInicio, Date dataFim, Boolean moradorAtivo, Pessoa pessoa) {
		super();
		this.idMorador = idMorador;
		this.dataInicio = dataInicio;
		this.dataFim = dataFim;
		this.moradorAtivo = moradorAtivo;
		this.pessoa = pessoa;
	}


	public Morador() {
		
	}


	public Date getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(Date dataInicio) {
		this.dataInicio = dataInicio;
	}
	public Date getDataFim() {
		return dataFim;
	}
	public void setDataFim(Date dataFim) {
		this.dataFim = dataFim;
	}
	public Boolean getMoradorAtivo() {
		return moradorAtivo;
	}
	public void setMoradorAtivo(Boolean moradorAtivo) {
		this.moradorAtivo = moradorAtivo;
	}
	public Pessoa getPessoa() {
		return pessoa;
	}
	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}


	public Integer getIdMorador() {
		return idMorador;
	}


	public void setIdMorador(Integer idMorador) {
		this.idMorador = idMorador;
	}

}
