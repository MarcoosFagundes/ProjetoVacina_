package projetovacina.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Vacinas {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(unique = true)
	private String nome;
	
	@ManyToOne
	private Usuario user;
	
	private int qnt_dose;
	
	@Enumerated(EnumType.STRING)
	private TipoVacinaEnum tipo;
	
	private String descricao;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Usuario getUser() {
		return user;
	}

	public void setUser(Usuario user) {
		this.user = user;
	}

	public int getQnt_dose() {
		return qnt_dose;
	}

	public void setQnt_dose(int qnt_dose) {
		this.qnt_dose = qnt_dose;
	}

	public TipoVacinaEnum getTipo() {
		return tipo;
	}

	public void setTipo(TipoVacinaEnum tipo) {
		this.tipo = tipo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
		
}
