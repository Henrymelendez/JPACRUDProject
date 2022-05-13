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
		// TODO Auto-generated method stub
		return null;
	}

}
