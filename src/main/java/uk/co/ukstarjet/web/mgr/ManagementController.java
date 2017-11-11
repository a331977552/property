package uk.co.ukstarjet.web.mgr;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;



import uk.co.ukstarjet.entity.Houseimg;
import uk.co.ukstarjet.entity.Manager;
import uk.co.ukstarjet.entity.Propertyletting;
import uk.co.ukstarjet.service.ManagmentService;
import uk.co.ukstarjet.service.PropertyLettingService;
import uk.co.ukstarjet.utils.TextUtils;

@Controller
public class ManagementController {

	
	@Autowired
	ManagmentService managmentService;
	@Autowired
	PropertyLettingService 	propertyLettingService; 
	
	@RequestMapping("mgr/index.action")
	public ModelAndView index() {
		
		ModelAndView  modelAndView =new ModelAndView();
		
		modelAndView.setViewName("management/index");
		return modelAndView;
	}
	@RequestMapping("mgr/login.action")
	public ModelAndView login() {
		
		ModelAndView  modelAndView =new ModelAndView();
		
		modelAndView.setViewName("management/login");
		return modelAndView;
	}
	
	
	
	
	@RequestMapping("mgr/userlogin.action")
	public ModelAndView login(Manager manager,HttpSession httpSession) {
		System.out.println(manager);
		ModelAndView  modelAndView =new ModelAndView();
		System.out.println(TextUtils.isEmpty(manager.getUsername()));
		if(TextUtils.isEmpty(manager.getUsername())) {
			modelAndView.addObject("error","用户名不能为空!");
			modelAndView.setViewName("management/login");
			return modelAndView;
		}
		if(TextUtils.isEmpty(manager.getPassword())) {
			modelAndView.addObject("error","密码不能为空!");
			modelAndView.setViewName("management/login");
			return modelAndView;
		}
		Manager login = managmentService.login(manager);
		if(login!=null) {
			httpSession.setAttribute("user",login);
			modelAndView.setViewName("redirect:index.action");
			return modelAndView;
		}
		
		modelAndView.addObject("user",login);
		modelAndView.addObject("error","用户名或密码不正确!");
		modelAndView.setViewName("management/login");
		return modelAndView;
	}
	
	
	@RequestMapping("mgr/addProperty.action")
	public ModelAndView addProperty(Propertyletting propertyletting,@RequestParam("picture") CommonsMultipartFile picture[]) throws IllegalStateException, IOException {
		
		
		List<Houseimg> houseimgs=new ArrayList<Houseimg>();
		for(CommonsMultipartFile file: picture) {
			String extension = FilenameUtils.getExtension(file.getOriginalFilename());
			String replaceAll = UUID.randomUUID().toString().replaceAll("-","");
			String  url=replaceAll+"."+extension;
			file.transferTo(new File("d:\\upload\\"+url));
			Houseimg e=new Houseimg();
			e.setUrl("pic\\"+url);
			houseimgs.add(e);
		}
		propertyLettingService.saveProperty(propertyletting,houseimgs);
		
		ModelAndView  modelAndView =new ModelAndView();		
		modelAndView.setViewName("redirect:success.action");
		return modelAndView;
	}
	@RequestMapping("mgr/success.action")
	public ModelAndView success() {
		ModelAndView  modelAndView =new ModelAndView();
		modelAndView.addObject("message","添加房屋成功");
		
		modelAndView.setViewName("management/success");
		return modelAndView;
	}

	
	
	
	
}
