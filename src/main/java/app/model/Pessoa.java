package app.model;


import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@XmlRootElement
public class Pessoa {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer idPEssoa;
	String nome;
	String cpf;
	String rg;
	String telefoneFixo;
	String telefoneCelular;
	String email;
	String loguin;
	String senha;
	Boolean ativo;
	@Temporal(value=TemporalType.DATE)
	Date dataNascimento;
	@OneToMany(mappedBy="pessoa")
	List<Cartao> cartoes;
	@OneToMany(mappedBy = "pessoa")
	List<Acesso> acesso;




	public Pessoa(Integer idPEssoa, String nome, String cpf, String rg, String telefoneFixo, String telefoneCelular,
			String email, String loguin, String senha, Boolean ativo, Date dataNascimento, List<Cartao> cartoes,
			List<Acesso> acesso) {
		super();
		this.idPEssoa = idPEssoa;
		this.nome = nome;
		this.cpf = cpf;
		this.rg = rg;
		this.telefoneFixo = telefoneFixo;
		this.telefoneCelular = telefoneCelular;
		this.email = email;
		this.loguin = loguin;
		this.senha = senha;
		this.ativo = ativo;
		this.dataNascimento = dataNascimento;
		this.cartoes = cartoes;
		this.acesso = acesso;
	}


	public Pessoa() {
		
	}

		
	public Integer getIdPEssoa() {
		return idPEssoa;
	}

	public void setIdPEssoa(Integer idPEssoa) {
		this.idPEssoa = idPEssoa;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getTelefoneFixo() {
		return telefoneFixo;
	}

	public void setTelefoneFixo(String telefoneFixo) {
		this.telefoneFixo = telefoneFixo;
	}

	public String getTelefoneCelular() {
		return telefoneCelular;
	}

	public void setTelefoneCelular(String telefoneCelular) {
		this.telefoneCelular = telefoneCelular;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoguin() {
		return loguin;
	}

	public void setLoguin(String loguin) {
		this.loguin = loguin;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}


	public Boolean getAtivo() {
		return ativo;
	}


	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}


	public List<Cartao> getCartoes() {
		return cartoes;
	}


	public void setCartoes(List<Cartao> cartoes) {
		this.cartoes = cartoes;
	}


	public List<Acesso> getAcesso() {
		return acesso;
	}


	public void setAcesso(List<Acesso> acesso) {
		this.acesso = acesso;
	}	

	
}
