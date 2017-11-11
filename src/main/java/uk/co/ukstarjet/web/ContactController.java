package uk.co.ukstarjet.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 联系我们
 * @author cody
 *
 */
@Controller
public class ContactController {

	@RequestMapping(value="contact.action")
	public ModelAndView contact() {
		
		ModelAndView view=new ModelAndView();
		
		
		view.setViewName("contact");
		return view;
	}
	
}
