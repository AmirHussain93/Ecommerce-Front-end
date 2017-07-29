package com.shopping.FashionWorldFrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.FashionWorldBackend.dao.OrderDetailsDAO;
import com.shopping.FashionWorldBackend.model.OrderDetails;

@Controller
public class OrderDetailsController
{
	@Autowired
	OrderDetailsDAO orderDetailsDAO;
	
	@RequestMapping("/OrderDetails")
	public String showOrderDetails(Model m)
	{
		System.out.println("---OrderDetails Page Displaying-----");
		
		return "OrderDetails";
	}
	
	@RequestMapping(value="/InsertOrderDetails",method=RequestMethod.POST)
	public String insertOrderDetails(@RequestParam("username") String username,@RequestParam("address")String address,Model m)
	{
		System.out.println("---Add UserDetails Starting-----");
		
		OrderDetails orderDetails = new OrderDetails();
		orderDetails.setUsername(username);
		orderDetails.setAddress(address);
		
		orderDetailsDAO.insertOrderDetails(orderDetails);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		System.out.println("---OrderDetails Submitted----");
		
		return "Successful";
	}

}
