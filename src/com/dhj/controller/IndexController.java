package com.dhj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dhj.entity.User;
	@Controller
	@RequestMapping("/index")
	public class IndexController {
		
		@RequestMapping("/index")
		public String index(HttpServletRequest request){
			User user=new User();
			HttpSession session = request.getSession();
			user=(User) session.getAttribute("currentUser");
			System.out.println(user);
			if(user.getRoleName().equals("��������")){
				return "xsry";
			}else if(user.getRoleName().equals("�ͻ�����")){
				return "khjl";
			}else {				
				return "xtgly";
			}
		}
	}
