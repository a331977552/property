package uk.co.ukstarjet.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 典当
 * 
 * @author cody
 *
 */
@Controller
public class SellingController {

	@RequestMapping(value = "selling.action")
	public ModelAndView sellingIndex() {

		ModelAndView view = new ModelAndView();

		view.setViewName("selling");
		return view;
	}
}
