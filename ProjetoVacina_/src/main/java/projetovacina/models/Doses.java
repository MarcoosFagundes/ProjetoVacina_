package projetovacina.models;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Doses {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	private Vacinas vacina;
	
	private int nDoses;
	
	@Column(name = "Data_Vencimento", columnDefinition = "DATE")
	private LocalDate Datavencimento;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Vacinas getVacina() {
		return vacina;
	}

	public void setVacina(Vacinas vacina) {
		this.vacina = vacina;
	}

	public int getnDoses() {
		return nDoses;
	}

	public void setnDoses(int nDoses) {
		this.nDoses = nDoses;
	}

	public LocalDate getDatavencimento() {
		return Datavencimento;
	}

	public void setDatavencimento(LocalDate datavencimento) {
		Datavencimento = datavencimento;
	}
	
	
	
}
