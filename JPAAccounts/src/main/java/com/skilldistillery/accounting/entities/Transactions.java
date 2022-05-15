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
	private int productNumber;
	
	private String description;
	
	private int quantity;
	
	@Column(name = "unit_price")
	private double unitPrice;
	
	@Column(name = "std_cost")
	private double unitCost;
	
	@Column(name = "cost_goods_sold")
	private double cogs;
	
	private double revenue;
	
	

	public Transactions() {
		super();
	}
	
	
	

	public Transactions(int productNumber, String description, double revenue,double cogs, int quantity) {
		super();
		this.productNumber = productNumber;
		this.description = description;
		this.quantity = quantity;
		this.cogs = cogs;
		this.revenue = revenue;
	}




	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	@Override
	public String toString() {
		return "Transactions [id=" + id + ", productNumber=" + productNumber + ", description=" + description
				+ ", quantity=" + quantity + ", unitPrice=" + unitPrice + ", unitCost=" + unitCost + ", cogs=" + cogs
				+ ", revenue=" + revenue + "]";
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public double getUnitCost() {
		return unitCost;
	}

	public void setUnitCost(double unitCost) {
		this.unitCost = unitCost;
	}

	public double getCogs() {
		return cogs;
	}

	public void setCogs(double cogs) {
		this.cogs = cogs;
	}

	public double getRevenue() {
		return revenue;
	}

	public void setRevenue(double revenue) {
		this.revenue = revenue;
	}

	public int getProductNumber() {
		return productNumber;
	}

	public void setProductNumber(int productNumber) {
		this.productNumber = productNumber;
	}

}
