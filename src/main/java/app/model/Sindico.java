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
public class Sindico{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer idSindico;
	@Temporal(value = TemporalType.DATE)
	Date dataInicio;
	@Temporal(value = TemporalType.DATE)
	Date dataFim;
	Boolean sindicoAtivo;
	@OneToOne
	Pessoa pessoa;

 	
	public Sindico(Integer idSindico, Date dataInicio, Date dataFim, Boolean sindicoAtivo, Pessoa pessoa) {
		super();
		this.idSindico = idSindico;
		this.dataInicio = dataInicio;
		this.dataFim = dataFim;
		this.sindicoAtivo = sindicoAtivo;
		this.pessoa = pessoa;
	}


	public Sindico() {
		
	}


	public Boolean getSindicoAtivo() {
		return sindicoAtivo;
	}
	public void setSindicoAtivo(Boolean sindicoAtivo) {
		this.sindicoAtivo = sindicoAtivo;
	}
	public Pessoa getPessoa() {
		return pessoa;
	}
	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}
	public Boolean getAtivo() {
		return sindicoAtivo;
	}
	public void setAtivo(Boolean ativo) {
		this.sindicoAtivo = ativo;
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


	public Integer getIdSindico() {
		return idSindico;
	}


	public void setIdSindico(Integer idSindico) {
		this.idSindico = idSindico;
	}
	
	

}
