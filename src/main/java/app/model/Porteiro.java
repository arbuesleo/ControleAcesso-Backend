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
public class Porteiro{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer idPorteiro;
	@Temporal(value = TemporalType.DATE)
	Date dataInicio;
	@Temporal(value = TemporalType.DATE)
	Date dataFim;
	Boolean porteiroAtivo;
	@OneToOne
	Pessoa pessoa;
	

	
	public Porteiro(Integer idPorteiro, Date dataInicio, Date dataFim, Boolean porteiroAtivo, Pessoa pessoa) {
		super();
		this.idPorteiro = idPorteiro;
		this.dataInicio = dataInicio;
		this.dataFim = dataFim;
		this.porteiroAtivo = porteiroAtivo;
		this.pessoa = pessoa;
	}

	public Porteiro() {
		
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
	public Boolean getAtivo() {
		return porteiroAtivo;
	}
	public void setAtivo(Boolean ativo) {
		this.porteiroAtivo = ativo;
	}
	public Boolean getPorteiroAtivo() {
		return porteiroAtivo;
	}
	public void setPorteiroAtivo(Boolean porteiroAtivo) {
		this.porteiroAtivo = porteiroAtivo;
	}
	public Pessoa getPessoa() {
		return pessoa;
	}
	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public Integer getIdPorteiro() {
		return idPorteiro;
	}

	public void setIdPorteiro(Integer idPorteiro) {
		this.idPorteiro = idPorteiro;
	}
	
	

}
