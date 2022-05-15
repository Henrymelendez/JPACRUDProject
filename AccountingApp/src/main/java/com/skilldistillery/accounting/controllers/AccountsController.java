package com.skilldistillery.accounting.controllers;

import org.hibernate.annotations.ColumnTransformer;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public String addpage() {
		
		return "addTransaction";
	}
	
	
	@RequestMapping(path = "add.do", method = RequestMethod.POST)
	public String addtransaction(Transactions transaction) {
		dao.addTransaction(transaction);
		
		return "redirect:/";
		
	}
	
	@RequestMapping(path = "update.do", params ="id",  method = RequestMethod.GET)
	public String updatePage(int id, Model model) {
		model.addAttribute("account",dao.findById(id));
		
		return "addTransaction";
	}
	
	
	@RequestMapping(path = "updated.do", params ="id",  method = RequestMethod.POST)
	public String updateTansaction(@RequestParam int id, Transactions transaction, Model model) {
		dao.update(id, transaction);
		
		return "redirect:/";
	}
	
	
	
	
	
	
	
	@RequestMapping(path = "delete.do", params = "id", method = RequestMethod.GET)
	public String deleteTransaction(@RequestParam int id, Model model) {
		
		dao.delete(id);
		
		
		return "redirect:/";
	}
	
	
	
	
	@RequestMapping(path = "analytic.do", method = RequestMethod.GET)
	public String analytics(Model model) {
		model.addAttribute("account", dao.findAll());
		
		return "analytics";
	}
	
	
	
	
	
	

}
