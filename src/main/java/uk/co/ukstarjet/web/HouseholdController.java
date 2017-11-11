package uk.co.ukstarjet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import uk.co.ukstarjet.entity.Household;
import uk.co.ukstarjet.service.HouseHoldService;

/**
 * 保洁
 * 
 * @author cody
 *
 */
@Controller
public class HouseholdController {

	@Autowired
	HouseHoldService 	houseHoldService; 
	@RequestMapping(value = "saveHouseHoldInfo.action")
	public ModelAndView saveHouseHoldInfo(Household value) {

		houseHoldService.saveHouseHoldInfo(value);
		ModelAndView view = new ModelAndView();
		
		view.setViewName("success");
		return view;

	}

	@RequestMapping(value = "household.action")
	public ModelAndView contact() {

		ModelAndView view = new ModelAndView();

		view.setViewName("household");
		return view;
	}

}
