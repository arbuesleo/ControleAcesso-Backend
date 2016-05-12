package app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Cartao {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer idCartao;
	String tag;
	String status;
	@ManyToOne		
	Pessoa pessoa;
	
	public Cartao(Integer idCartao, String tag, String status, Pessoa pessoa) {
		super();
		this.idCartao = idCartao;
		this.tag = tag;
		this.status = status;
		this.pessoa = pessoa;
	}
	public Cartao() {
		super();
	}
	public Integer getIdCartao() {
		return idCartao;
	}
	public void setIdCartao(Integer idCartao) {
		this.idCartao = idCartao;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Pessoa getPessoa() {
		return pessoa;
	}
	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}	
	
}
