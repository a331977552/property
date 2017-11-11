package uk.co.ukstarjet.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class ExceptionController {

	
		@RequestMapping(value="/404")
		public ModelAndView _404() {
			ModelAndView name = new ModelAndView(); 
			System.out.println("aaaaa");
			name.setViewName("404");
			return name;
			
		}
	
		
		@RequestMapping(value="/500")
		public ModelAndView _500() {
			ModelAndView name = new ModelAndView(); 			
			System.out.println("bbbbbb");
			name.setViewName("500");
			return name;
			
		}
		
	
}
