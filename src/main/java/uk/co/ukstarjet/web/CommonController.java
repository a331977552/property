package uk.co.ukstarjet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import uk.co.ukstarjet.entity.custom.PageBean;
import uk.co.ukstarjet.entity.custom.PropertyVo;
import uk.co.ukstarjet.service.PropertyLettingService;

@Controller
public class CommonController {

	@Autowired
	PropertyLettingService property;
	@RequestMapping(value="success")
	public ModelAndView success() {
		
		ModelAndView view=new ModelAndView("success");
	
		
		return view;
	}
	@RequestMapping(value= {"/index.action","/index","/","/index.html"},method=RequestMethod.GET)
	public ModelAndView index() {
		
		
		PageBean<PropertyVo> findPropertiesByExample = property.findPropertiesByExample(null,4, 0);
		ModelAndView view=new ModelAndView();
		view.addObject("voList", findPropertiesByExample);
		System.out.println("aa");
		view.setViewName("index");
		return view;
	}
}
