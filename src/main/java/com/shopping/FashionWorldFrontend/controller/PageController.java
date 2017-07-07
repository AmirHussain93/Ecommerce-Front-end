package com.shopping.FashionWorldFrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.FashionWorldBackend.dao.ProductDAO;
import com.shopping.FashionWorldBackend.model.Product;

@Controller
public class PageController  
{
	
	
	@Autowired
	ProductDAO productDAO;
	
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
	@RequestMapping("/ProductPage")
	public String showProducts(Model m)
	{
		List<Product> prodlist=productDAO.getProductDetails();
		m.addAttribute("prodlist",prodlist);
		return "ProductPage";
	}

}
