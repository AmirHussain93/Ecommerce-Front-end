package com.shopping.FashionWorldFrontend.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController 
{
	@RequestMapping("/login_Success")
	public String loginSuccess(HttpSession session)
	{
		System.out.println("-------Login Successful-----");
		String page=null;
		boolean loggedIn=true;
       
		//Retrieving the username
		String username=SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username", username);
		session.setAttribute("loggenIn",loggedIn);
		
		//Retrieving role
		Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		
		for (GrantedAuthority role:authorities)
		{
			System.out.println("Role:"+role.getAuthority()+"User Name:"+username+"-----");
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				page="AdminHome";
			}
			else
			{
				page="UserHome";
			}
		}
		return page;
	}

}
