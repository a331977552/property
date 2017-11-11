package uk.co.ukstarjet.web;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import uk.co.ukstarjet.entity.Propertyletting;
import uk.co.ukstarjet.entity.PropertylettingExample;
import uk.co.ukstarjet.entity.custom.PageBean;
import uk.co.ukstarjet.entity.custom.PropertyVo;
import uk.co.ukstarjet.mapper.PropertylettingMapper;
import uk.co.ukstarjet.service.PropertyLettingService;

/**
 * 房屋租赁
 * 
 * @author cody
 *
 */
@Controller
public class PropertyLettingController {

	@Autowired
	PropertyLettingService propertyLettingService;

	@RequestMapping(value = "propertyLetting.action")
	public ModelAndView propertyIndex(HttpServletRequest request,HttpServletResponse response,PropertyVo propertyVo, Integer pageSize, Integer currentPage) {
//		PageBean<PropertyVo> page = propertyLettingService.findPropertiesByExample(propertyVo, pageSize, currentPage);
		ModelAndView view = new ModelAndView();
		Cookie[] cookies = request.getCookies();
		boolean hasCookie=false;
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals("properyHistory")) {
				hasCookie=true;
				String value = cookie.getValue();
				String[] ids = value.split("#");
				List<PropertyVo> historyProperties=new ArrayList<PropertyVo>(); 
				
			  for2:	for (String id : ids) {
					PropertyVo findPropertyById = propertyLettingService.findPropertyById(Integer.parseInt(id));
					historyProperties.add(findPropertyById);
					if(historyProperties.size()>=4)
					break for2;
				}
				view.addObject("history",historyProperties);
				break;
			}	
			
		}
		if(!hasCookie)
		{
			List<PropertyVo> findPropertiesByExample = propertyLettingService.findfirst4Propery();
			view.addObject("recommend",findPropertiesByExample);
		}
		
//		view.addObject("page", page);
		
		
		
		
		view.setViewName("propertyLetting");
		return view;
	}

	@RequestMapping(value = "propertyLettingjson.action")
	public @ResponseBody PageBean<PropertyVo> propertyLettingjson(@RequestBody PropertyVo propertyVo) 
	{
		
		
		PageBean<PropertyVo> page = propertyLettingService.findPropertiesByExample(propertyVo,propertyVo.getPageSize(),propertyVo.getCurrentPage());
		
		return page;
	}
	
	@RequestMapping(value="propertyDetails.action")
	public ModelAndView propertyDetails(HttpServletRequest request,HttpServletResponse response,Integer id) {
		
		
		PropertyVo vo = propertyLettingService.findPropertyById(id);
		ModelAndView andView=new ModelAndView();
		Cookie[] cookies = request.getCookies();
		boolean hasCookie=false;
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals("properyHistory")) {
				hasCookie=true;
				String value = cookie.getValue();
				String[] split = value.split("#");
				StringBuilder ids=new StringBuilder();
				for (String string : split) {
					if(!string.equals(id+"")) {
						ids.append(string).append("#");
					}
					
				}
				value=(id+"#")+ids.toString();
				cookie.setValue(value);
				response.addCookie(cookie);
				break;
			}	
		}
		if(!hasCookie) {
			Cookie cookie = new Cookie("properyHistory", id.toString());		
			response.addCookie(cookie);		
		}
		
		
		andView.setViewName("propertyDetails");
		andView.addObject("vo",vo);
		return andView;
	}
	
	
}
