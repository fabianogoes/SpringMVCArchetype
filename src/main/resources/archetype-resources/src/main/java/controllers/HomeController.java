#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package controllers;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import services.ExampleService;

@Controller
public class HomeController {

	@Autowired
	private ExampleService service;
	
	@RequestMapping("/")
	public String home(Model model){
		model.addAttribute("list", service.list());
		model.addAttribute("messages", Arrays.asList("Message 1","Message 2","Message 3"));
		return "home";
	}
	
}
