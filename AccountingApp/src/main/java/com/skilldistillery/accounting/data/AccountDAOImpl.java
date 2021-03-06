package com.skilldistillery.accounting.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.accounting.entities.Transactions;

@Service
@Transactional
public class AccountDAOImpl implements AccountDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Transactions findById(int id) {
		
		return em.find(Transactions.class, id);
		
		
	}

	@Override
	public List<Transactions> findAll() {
		String pqsl = "SELECT c FROM Transactions c";
		List<Transactions> result = em.createQuery(pqsl, Transactions.class).getResultList();
		return result;
	}

	@Override
	@Transactional
	public Transactions addTransaction(Transactions transaction ) {
		// TODO Auto-generated method stub
		transaction.setUnitCost(transaction.getCogs() / transaction.getQuantity());
		transaction.setUnitPrice(transaction.getRevenue() / transaction.getQuantity());
		
		
		
		em.persist(transaction);
		
		em.flush();
		
		
		return transaction;
	}
	
	@Override
	public Transactions update(int id, Transactions transaction) {
		
		Transactions managed = em.find(Transactions.class, id);
		
		if(managed != null) {
		
		
		managed.setProductNumber(transaction.getProductNumber());
		managed.setDescription(transaction.getDescription());
		managed.setQuantity(transaction.getQuantity());
		
		
		
		}
		return managed;
		
	}



	@Override
	public void delete(int id) {
		Transactions toDelete = em.find(Transactions.class, id);
		
		em.remove(toDelete);
		
		
	}


	
	
	
	

}
