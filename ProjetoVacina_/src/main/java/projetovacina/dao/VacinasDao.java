package projetovacina.dao;

import javax.persistence.Query;

import projetovacina.models.Vacinas;

public class VacinasDao extends Dao<Vacinas, Long>{

	public boolean Inativar(Long idVacina) {
		try {
			Query query = em.createNativeQuery("UPDATE vacinas SET inativo = true WHERE id =:idVacina", Vacinas.class);
			
			query.setParameter("idVacina", idVacina);
			query.executeUpdate();
			return true;
		}catch (Exception x) {
			return false;
		}
	}
}
