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
	public Transactions addTransaction(Transactions transaction ) {
		// TODO Auto-generated method stub
		transaction.setUnitCost(transaction.getCogs() / transaction.getQuantity());
		transaction.setUnitPrice(transaction.getRevenue() / transaction.getQuantity());
		
		em.getTransaction().begin();
		
		em.persist(transaction);
		
		em.flush();
		
		em.getTransaction().commit();
		return transaction;
	}
	
	public Transactions update(int id, Transactions transaction) {
		
		Transactions managed = em.find(Transactions.class, id);
		
		if(managed != null) {
		
		em.getTransaction().begin();
		
		managed.setProductNumber(transaction.getProductNumber());
		managed.setUnitCost(transaction.getUnitCost());
		managed.setDescription(transaction.getDescription());
		
		em.getTransaction().commit();
		
		}
		return managed;
		
	}
	
	
	
	
	

}
