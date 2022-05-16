package com.skilldistillery.accounting;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class AccountingAppApplication extends SpringBootServletInitializer {
	
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(AccountingAppApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(AccountingAppApplication.class, args);
	}

}
