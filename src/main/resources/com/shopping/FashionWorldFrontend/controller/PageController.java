package com.shopping.FashionWorldFrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController  
{
	@RequestMapping("/AboutUs")
	public String showAboutUs()
	{
		return "AboutUs";
	}
	
	@RequestMapping("/")
	public String showIndex()
	{
		return "index";
	}
	
	@RequestMapping("/Register")
	public String showRegister()
	{
		return "Register";
	}
	
	@RequestMapping("/ContactUs")
	public String showContactUs()
	{
		return "ContactUs";
	}
	
	@RequestMapping("/Login")
	public String showLogin()
	{
		return "Login";
	

}
