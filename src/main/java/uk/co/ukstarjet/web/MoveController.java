package uk.co.ukstarjet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import uk.co.ukstarjet.entity.Move;
import uk.co.ukstarjet.service.MoveService;

/**
 * 搬家服务
 * @author cody
 *
 */
@Controller
public class MoveController {

	@Autowired
	MoveService moveService;
	
	@RequestMapping(value="move.action")
public ModelAndView moveIndex() {
		
		ModelAndView view=new ModelAndView();
		
		
		view.setViewName("move");
		return view;
	}
	@RequestMapping(value="saveMoveInfo.action")
	public ModelAndView saveMoveInfo(Move move) {
		
		moveService.saveMoveInfo(move);
		
		ModelAndView view=new ModelAndView();
		
		
		view.setViewName("success");
		return view;
	}
	
	
}
