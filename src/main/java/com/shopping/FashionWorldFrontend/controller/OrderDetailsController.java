package com.shopping.FashionWorldFrontend.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.FashionWorldBackend.dao.CartDAO;
import com.shopping.FashionWorldBackend.dao.OrderDetailsDAO;
import com.shopping.FashionWorldBackend.dao.ProductDAO;
import com.shopping.FashionWorldBackend.dao.SupplierDAO;
import com.shopping.FashionWorldBackend.model.Category;
import com.shopping.FashionWorldBackend.model.OrderDetails;
import com.shopping.FashionWorldBackend.model.Supplier;

public class OrderDetailsController 
{
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired 
	OrderDetailsDAO orderDetailsDAO;
	
	@RequestMapping("/OrderDetails")
	public String showOrderDetails(Model m)
	{
		OrderDetails orderDetails = new OrderDetails();
		m.addAttribute("orderDetails",orderDetails);
		m.addAttribute("supplist",this.getSuppList());
		List<OrderDetails> orderDetailsList = orderDetailsDAO.getOrderDetailsDetail();
		m.addAttribute("orderDetailsList", orderDetailsList);
		boolean flag=true;
		m.addAttribute("flag",flag);
		return "OrderDetails";
	}
	
	@RequestMapping(value="InsertOrderDetails",method=RequestMethod.POST)
	public String insertOrderDetails(@RequestParam("username") String username,@RequestParam("address") String address,@RequestParam("paymentMethod") String paymentMethod,@RequestParam("supplier") String supplier,@RequestParam("citemid") int citemid,@RequestParam("price")int price,@RequestParam("quantity")int quantity,Model m)
	{
		System.out.println("---Add OrderDetails Starting-----");
		
		OrderDetails orderDetails1 = new OrderDetails();
		orderDetails1.setUsername(username);
		orderDetails1.setAddress(address);
		orderDetails1.setPaymentmethod(paymentMethod);
		orderDetails1.setSupplier(supplier);
		orderDetails1.setPrice(price);
		orderDetails1.setQuantity(quantity);
		orderDetails1.setCitemid(citemid);
		
		orderDetailsDAO.insertOrderDetails(orderDetails1);
		
		List<OrderDetails> list=orderDetailsDAO.getOrderDetailsDetail();
		m.addAttribute("orderDetailsDetail",list);
		
		
		boolean flag=true;
		m.addAttribute("flag",flag);
		
		System.out.println("---OrderDetails Added----");
		
		return "OrderDetails";
		
	}
	

	public LinkedHashMap<Integer,String> getSuppList()
	{
		List<Supplier> list=supplierDAO.getSupplierDetails();
		
		LinkedHashMap<Integer,String> supplist=new LinkedHashMap<Integer,String>();
		
		for(Supplier supp:list)
		{
			supplist.put(supp.getSuppid(),supp.getSuppname());
		}
		
		return supplist;
	}

}
