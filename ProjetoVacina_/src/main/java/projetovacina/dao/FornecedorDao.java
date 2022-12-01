package projetovacina.dao;

import javax.persistence.Query;

import projetovacina.models.Fornecedor;

public class FornecedorDao extends Dao<Fornecedor, Long>{

	public boolean Inativar(Long idVacina) {
		try {
			Query query = em.createNativeQuery("UPDATE fornecedor SET inativo = 1 WHERE id = :idVacina", Fornecedor.class);
			
			query.setParameter("idVacina", idVacina);
			query.executeUpdate();
			return true;
		}catch (Exception x) {
			return false;
		}
	}
}
