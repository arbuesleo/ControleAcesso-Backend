package app.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.xml.bind.annotation.XmlRootElement;


import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@XmlRootElement
public class Cartao {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer idCartao;
	@Column(unique=true)
	String tag;
	String status;
	String descricao;
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JsonBackReference	
	Pessoa pessoa;
	

	public Cartao(Integer idCartao, String tag, String status, String descricao, Pessoa pessoa) {
		super();
		this.idCartao = idCartao;
		this.tag = tag;
		this.status = status;
		this.descricao = descricao;
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

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}	
	
	
	
}
