package app.model;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Acesso {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer idAcesso;
	@Temporal(value = TemporalType.TIMESTAMP)
	Date dataHoraEntrada;
	Boolean manual;
	String tagCartao;
	String nomePessoa;
	String cpfPessoa;
	String justificativa;
	String loguinLiberacao;
    Boolean liberado;
    String mensagem;
	
	@ManyToOne
	Pessoa pessoa;	
	@ManyToOne	
    Cartao cartao;
	
	public Acesso(Integer idAcesso, Date dataHoraEntrada, Boolean manual, String justificativa, String loguinLiberacao, Pessoa pessoa, Cartao cartao, Boolean liberado, String mensagem) {
		super();
		this.idAcesso = idAcesso;
		this.dataHoraEntrada = dataHoraEntrada;
		this.manual = manual;
		this.justificativa = justificativa;
		this.loguinLiberacao = loguinLiberacao;
		this.pessoa = pessoa;
		this.cartao = cartao;
		this.liberado = liberado;
		this.mensagem = mensagem;
	}

	public Acesso() {
		super();
	}

	public Integer getIdAcesso() {
		return idAcesso;
	}

	public void setIdAcesso(Integer idAcesso) {
		this.idAcesso = idAcesso;
	}

	public Date getDataHoraEntrada() {
		return dataHoraEntrada;
	}

	public void setDataHoraEntrada(Date dataHoraEntrada) {
		this.dataHoraEntrada = dataHoraEntrada;
	}

	public Boolean getManual() {
		return manual;
	}

	public void setManual(Boolean manual) {
		this.manual = manual;
	}

	public String getTagCartao() {
		return tagCartao;
	}

	public void setTagCartao(String tagCartao) {
		this.tagCartao = this.cartao.getTag();
	}

	public String getNomePessoa() {
		return nomePessoa;
	}

	public void setNomePessoa(String nomePessoa) {
		this.nomePessoa = this.pessoa.getNome();
	}

	public String getCpfPessoa() {
		return cpfPessoa;
	}

	public void setCpfPessoa(String cpfPessoa) {
		this.cpfPessoa = this.pessoa.getCpf();
	}

	public String getJustificativa() {
		return justificativa;
	}

	public void setJustificativa(String justificativa) {
		this.justificativa = justificativa;
	}

	public String getLoguinLiberacao() {
		return loguinLiberacao;
	}

	public void setLoguinLiberacao(String loguinLiberacao) {
		this.loguinLiberacao = loguinLiberacao;
	}

    public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public Cartao getCartao() {
		return cartao;
	}

	public void setCartao(Cartao cartao) {
		this.cartao = cartao;
	}

	public Boolean getLiberado() {
		return liberado;
	}

	public void setLiberado(Boolean liberado) {
		this.liberado = liberado;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
}
