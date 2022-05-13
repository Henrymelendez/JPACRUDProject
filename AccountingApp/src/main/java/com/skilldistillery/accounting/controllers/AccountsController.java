package com.skilldistillery.accounting.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.accounting.data.AccountDAO;

@Controller
public class AccountsController {
	
	@Autowired
	private AccountDAO dao;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("DEBUG", dao.findById(1));
		return "index";
	}

}
