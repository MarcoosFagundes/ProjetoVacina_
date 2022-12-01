package projetovacina.dao;

import javax.persistence.Query;

import projetovacina.models.Fornecedor;

public class FornecedorDao extends Dao<Fornecedor, Long>{

	public boolean Inativar(Long fornecedorid) {
		try {
			Query query = em.createNativeQuery("UPDATE fornecedor u SET u.inativo = 1 WHERE u.id =: fornecedorid", Fornecedor.class);
			
			query.setParameter("fornecedorid", fornecedorid);
			query.executeUpdate();
			return true;
		}catch (Exception x) {
			return false;
		}
	}
}
