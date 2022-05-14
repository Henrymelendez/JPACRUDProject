package com.skilldistillery.accounting.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.accounting.data.AccountDAO;
import com.skilldistillery.accounting.entities.Transactions;

@Controller
public class AccountsController {
	
	@Autowired
	private AccountDAO dao;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("account", dao.findAll());
		
		return "index";
	}
	
	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public String updatePage() {
		
		return "addTransaction";
	}
	
	
	@RequestMapping(path = "add.do")
	public String addtransaction(Transactions transaction) {
		dao.addTransaction(transaction);
		
		return "index";
		
	}
	
	
	@RequestMapping(path = "analytic.do", method = RequestMethod.GET)
	public String analytics(Model model) {
		model.addAttribute("account", dao.findAll());
		
		return "analytics";
	}
	
	
	
	
	
	

}
