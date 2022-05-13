package com.skilldistillery.accounting.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Transactions {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "item_no")
	private int ProductNumber;
	

	public Transactions() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProductNumber() {
		return ProductNumber;
	}

	public void setProductNumber(int productNumber) {
		ProductNumber = productNumber;
	}

	@Override
	public String toString() {
		return "Transactions [id=" + id + ", ProductNumber=" + ProductNumber + "]";
	}

}
