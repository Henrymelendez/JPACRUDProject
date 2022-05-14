package com.skilldistillery.accounting;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.accounting.data.AccountDAO;
import com.skilldistillery.accounting.entities.Transactions;

@SpringBootTest
class AccountingAppApplicationTests {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private AccountDAO dao;
	
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAAccounts");
		
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
		
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		dao = null;
	}

	@Test
	void test_create_transaction_method() {
		Transactions t = new Transactions();
		t.setProductNumber(30001);
		t.setDescription("A bottle of water");
		t.setQuantity(80000);
		t.setRevenue(1000000);
		
		dao.addTransaction(t);
		Transactions result = dao.findById(7);
		
		assertNotNull(t);
		
		assertEquals(80000,result.getQuantity());
		
	
	}

}
