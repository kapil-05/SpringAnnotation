package com.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.contact.Contact;
import com.demo.contact.ContactDAO;
import com.demo.user.User;
import com.demo.user.UserDAO;

@Controller
public class CharliebrownController {
	
	@Autowired
	UserDAO udao;
	
	@Autowired
	ContactDAO cdao;

	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping(value="/AddProfileToDB",method=RequestMethod.POST)
	public ModelAndView AddProfileToDB(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView("index");
		
		String param[] = req.getParameterValues("profile");
		
		User p = new User();
		
		for(int i=0; i<param.length; i++)
		{
			switch (i) 
			{
				case 0: p.setUsername(param[i]); break;
				case 1: p.setEmail(param[i]); break;
				case 2: p.setPassword(param[i]); break;
				case 3: p.setPhone(param[i]); break;
				case 4: p.setAddress(param[i]); break;			
			}
		}	
		this.udao.insert(p);
		
		System.out.println("saved");
		
		return mv;
	}
	
	@RequestMapping("/ViewUser")
	public ModelAndView ViewUser()
	{
		ModelAndView mv = new ModelAndView("ViewUser");
		
		mv.addObject("userdata", udao.getAllUsers());
		
		for(User s : udao.getAllUsers())
		{
			System.out.println(s.getUsername());
		}
		
		return mv;
	}
	
	@RequestMapping("/ViewOneUser/{id}")
	public ModelAndView ViewOneUser(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("ViewOneUser");
		
		mv.addObject("userdata", udao.getUser(abc));
		
		return mv;
	}
	
	@RequestMapping("/UpdateUser/{id}")
	public ModelAndView UpdateUser(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("UpdateUser");
		
		mv.addObject("userdata", udao.getUser(abc));
		
		return mv;
	}
	
	@RequestMapping(value="/UpdateUserToDB",method=RequestMethod.POST)
	public ModelAndView UpdateUserToBD( HttpServletRequest req )
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewUser");
		
		String param[] = req.getParameterValues("user");
		
		for(int j=0; j<param.length; j++)
		{
			System.out.println(param[j]);
		}
		
		User u = new User();
		
		for(int i=0; i<param.length; i++)
		{
			switch (i) 
			{
				case 0: u.setId(Integer.parseInt(param[i])); break;
				case 1: u.setUsername(param[i]); break;
				case 2: u.setEmail(param[i]); break;
				case 3: u.setPassword(param[i]); break;
				case 4: u.setPhone(param[i]); break;
				case 5: u.setAddress(param[i]); break;			
			}
		}
		
		this.udao.update(u);
		
		return mv;
	}
	
	@RequestMapping("/DeleteUser/{id}") 
	public ModelAndView DeleteUser( @PathVariable("id")int abc )
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewUser");
		
		this.udao.delete(abc);
		
		return mv;
			
	}
	
	@RequestMapping("/AddContact")
	public ModelAndView AddProduct()
	{
		ModelAndView mv = new ModelAndView("AddContact");
		
		return mv;
	}
	
	@RequestMapping(value="/AddContactToDB",method=RequestMethod.POST)
	public ModelAndView AddContactToDB( HttpServletRequest req )
	{
		ModelAndView mv = new ModelAndView("index");
		
		String param[] = req.getParameterValues("contact");
		
		Contact c = new Contact();
		
		for(int i=0; i<param.length; i++)
		{
			switch (i) 
			{
				case 0: c.setName(param[i]); break;
				case 1: c.setNumber(param[i]); break;		
			}
		}	
		this.cdao.insert(c);
		
		System.out.println("saved");
		
		return mv;
	}
	
	@RequestMapping("/ViewContact")
	public ModelAndView ViewContact()
	{
		ModelAndView mv = new ModelAndView("ViewContact");
		
		mv.addObject("contactdata", cdao.getAllContact());
		
		return mv;
	}
}
