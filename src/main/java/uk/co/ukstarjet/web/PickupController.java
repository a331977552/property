package uk.co.ukstarjet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import uk.co.ukstarjet.entity.Pickup;
import uk.co.ukstarjet.service.PickupService;

@Controller
public class PickupController {

	@Autowired
	PickupService pickupService;

	
	@RequestMapping(value ="savepickupinfo.action")
	public ModelAndView savePickupInfo(Pickup value) {
		System.out.println(value.getName());
		ModelAndView view = new ModelAndView();
		if(value.getPickupdata() ==null)
		{
			
			view.setViewName("redirect:/pickup");
			
			return view;
		}				
		pickupService.savePickupInfo(value);
		view.addObject("pickup",value);
		view.setViewName("success");
		return view;
	}

	@RequestMapping(value = "pickup.action")
	public ModelAndView pickupIndex() {
			
		ModelAndView view = new ModelAndView();

		view.setViewName("pickup");
		return view;
	}
	

}
