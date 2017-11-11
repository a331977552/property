package uk.co.ukstarjet.service;

import java.io.Serializable;
import java.util.List;

import com.mchange.v2.codegen.bean.Property;

import uk.co.ukstarjet.entity.Houseimg;
import uk.co.ukstarjet.entity.Propertyletting;
import uk.co.ukstarjet.entity.PropertylettingExample;
import uk.co.ukstarjet.entity.custom.PageBean;
import uk.co.ukstarjet.entity.custom.PropertyVo;

public interface PropertyLettingService {
	public Integer 					getTotalNumberOfProperty(PropertylettingExample propertyVo);
	public void 					deletePropertyById(Serializable id);
	public void 					updateProperty(Propertyletting propertyletting);
	public PropertyVo 			findPropertyById(Serializable id);
	public List<PropertyVo> 	findfirst4Propery();
	public PageBean<PropertyVo> findPropertiesByExample(PropertyVo propertyletting,Integer pageSize,Integer currentPage);
	public void 					saveProperty(Propertyletting propertyletting, List<Houseimg> houseimgs);
	
	
	
}
