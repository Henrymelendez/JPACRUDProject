package com.skilldistillery.accounting.data;

import java.util.List;

import com.skilldistillery.accounting.entities.Transactions;



public interface AccountDAO {

	Transactions findById(int id);
	
	List<Transactions> findAll();
		
	

}