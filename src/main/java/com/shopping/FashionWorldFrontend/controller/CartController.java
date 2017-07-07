package com.shopping.FashionWorldFrontend.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopping.FashionWorldBackend.dao.CartDAO;
import com.shopping.FashionWorldBackend.dao.ProductDAO;
import com.shopping.FashionWorldBackend.model.Cart;
import com.shopping.FashionWorldBackend.model.Product;

@Controller
public class CartController 
{
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/addToCart")
    public String addToCart(@PathVariable("prodid")int prodid, @RequestParam("quantity")int quantity,HttpSession session,Model m)
	{
		Cart cart=new Cart();
		
		String username=(String) session.getAttribute("username");
		cart.setCartid(1001);
		cart.setProdid(prodid);
		cart.setQuantity(quantity);
		
		cart.setStatus("N");
		cart.setUsername(username);
		
		Product product=productDAO.getProduct(prodid);
		cart.setProdname(product.getProdname());
		cart.setPrice(product.getPrice());
		
		cartDAO.addToCart(cart);
		List<Cart> list=cartDAO.getCartItems(username);
		m.addAttribute("list",list);
		
		return "Cart";
		 
		 
	}
		
    @RequestMapping(value="/updateCartItem/{prodid}")
	public String updateCartITem(@PathVariable("citemid")int citemid, @RequestParam("quantity")int quantity,HttpSession session,Model m)
	{
		Cart cart=cartDAO.getCartItem(citemid);
		
		String username=(String) session.getAttribute("username");
		cart.setQuantity(quantity);
		cartDAO.updateCartItem(cart);
		
		List<Cart> list=cartDAO.getCartItems(username);
		
		m.addAttribute("cartitems",list);
		
		return "Cart";
	}
    
    @RequestMapping(value="/deleteCartItem/{citemid}")
    public String deleteCartItem(@PathVariable("citemid")int citemid,HttpSession session,Model m)
    {
    	Cart cart=cartDAO.getCartItem(citemid);
    	
    	String username=(String) session.getAttribute("username");
    	cartDAO.deleteCartItem(cart);
    	
        List<Cart> list=cartDAO.getCartItems(username);
		
		m.addAttribute("cartitems",list);
    	return "Cart";
    	
    }
    
}
