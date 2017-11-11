package uk.co.ukstarjet.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uk.co.ukstarjet.entity.Houseimg;
import uk.co.ukstarjet.entity.HouseimgExample;
import uk.co.ukstarjet.entity.Propertyletting;
import uk.co.ukstarjet.entity.PropertylettingExample;
import uk.co.ukstarjet.entity.PropertylettingExample.Criteria;
import uk.co.ukstarjet.entity.custom.PageBean;
import uk.co.ukstarjet.entity.custom.PropertyVo;
import uk.co.ukstarjet.mapper.HouseimgMapper;
import uk.co.ukstarjet.mapper.PropertylettingMapper;
import uk.co.ukstarjet.service.PropertyLettingService;
import uk.co.ukstarjet.utils.TextUtils;

@Service
public class PropertyLettingServiceImpl implements PropertyLettingService {

	@Autowired
	PropertylettingMapper propertylettingMapper;
	@Autowired
	HouseimgMapper houseimgMapper;

	@Override
	public void deletePropertyById(Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateProperty(Propertyletting propertyletting) {
		// TODO Auto-generated method stub

	}

	@Override
	public PropertyVo findPropertyById(Serializable id) {
		
		Propertyletting selectByPrimaryKey = propertylettingMapper.selectByPrimaryKey((Integer)id);
		HouseimgExample example=new HouseimgExample();
		uk.co.ukstarjet.entity.HouseimgExample.Criteria createCriteria = example.createCriteria();
		createCriteria.andPropertyidEqualTo((Integer)id);
		List<Houseimg> selectByExample = houseimgMapper.selectByExample(example);
		PropertyVo propertyVo=new PropertyVo();
		propertyVo.setImgs(selectByExample);
		propertyVo.setProperty(selectByPrimaryKey);
		
		
		return propertyVo;
	}

	@Override
	public List<PropertyVo> findfirst4Propery() {
		PropertylettingExample example=new PropertylettingExample();
		example.setOrderByClause("id asc limit 0,8");
		List<Propertyletting> selectByExample = propertylettingMapper.selectByExample(example);
		List<PropertyVo> list=new ArrayList<>();
		for (Propertyletting propertyletting : selectByExample) {
			
			HouseimgExample example2=new HouseimgExample();
			example2.setOrderByClause("id asc limit 0,1");
			uk.co.ukstarjet.entity.HouseimgExample.Criteria createCriteria = example2.createCriteria();
			createCriteria.andPropertyidEqualTo(propertyletting.getId());
			List<Houseimg> selectByExample2 = houseimgMapper.selectByExample(example2);
			if (selectByExample2!=null && selectByExample2.size()>0) {
				PropertyVo e=new PropertyVo();
				e.setProperty(propertyletting);
				e.setImgs(selectByExample2);
				list.add(e);	
			}
			if(list.size()>=4)
				break;
		}
		
		return list;
	}

	@Override
	public PageBean<PropertyVo> findPropertiesByExample(PropertyVo property, Integer pageSize, Integer currentPage) {

		PropertylettingExample example = new PropertylettingExample();

		if (property != null) {
			Criteria criteria = example.createCriteria();
			if (property.getProperty() != null) {
				if (!TextUtils.isEmpty(property.getProperty().getHousetype()))
					criteria.andHousetypeEqualTo(property.getProperty().getHousetype());
				if (!TextUtils.isEmpty(property.getProperty().getName())) {
					criteria.andNameLike("%" + property.getProperty().getName() + "%");
				}
			}
			if (property.getMinPrice() == null || property.getMinPrice() < 0) {
				if (!TextUtils.isEmpty(property.getPriceRange())) {
					String priceRange = property.getPriceRange();
					String[] split = priceRange.split("-");
					property.setMinPrice(Integer.parseInt(split[0]));
				} else {
					property.setMinPrice(0);
				}

			}
			if (property.getMaxPrice() == null || property.getMaxPrice() > 100000) {
				if (!TextUtils.isEmpty(property.getPriceRange())) {
					String priceRange = property.getPriceRange();
					String[] split = priceRange.split("-");
					property.setMaxPrice(Integer.parseInt(split[1]));
				} else {
					property.setMaxPrice(100000);
				}

			} else if (property.getMaxPrice() < property.getMinPrice()) {
				property.setMaxPrice(property.getMinPrice());

			}

			criteria.andPriceBetween(property.getMinPrice(), property.getMaxPrice());

		}

		Integer totallCount = getTotalNumberOfProperty(example);

		PageBean<PropertyVo> bean = new PageBean<>(currentPage, totallCount.intValue(), pageSize);
		// bean.getStartCount(), bean.getPageSize();
		Integer startCount = bean.getStartCount();
		example.setOrderByClause("id desc limit " + startCount + "," + bean.getPageSize());
		List<Propertyletting> propertylettings = propertylettingMapper.selectByExample(example);
		List<PropertyVo> propertyVos = new ArrayList<>();
		HouseimgExample example2 = new HouseimgExample();
		for (Propertyletting p : propertylettings) {
			PropertyVo vo = new PropertyVo();
			example2.clear();
			uk.co.ukstarjet.entity.HouseimgExample.Criteria createCriteria2 = example2.createCriteria();
			createCriteria2.andPropertyidEqualTo(p.getId());
			List<Houseimg> imgs = houseimgMapper.selectByExample(example2);
			if (imgs == null || imgs.size() == 0) {
				vo.setHasImg(false);
			} else {
				vo.setHasImg(true);
				vo.setImgs(imgs);

			}
			vo.setProperty(p);
			propertyVos.add(vo);
		}

		bean.setBeans(propertyVos);

		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void saveProperty(Propertyletting propertyletting, List<Houseimg> houseimgs) {
		propertylettingMapper.insert(propertyletting);
		Integer id = propertyletting.getId();
		System.out.println(id);
		if (houseimgs.size() > 0) {
			for (Houseimg houseimg : houseimgs) {
				houseimg.setPropertyid(id);
				houseimgMapper.insert(houseimg);
			}

		}

	}

	@Override
	public Integer getTotalNumberOfProperty(PropertylettingExample example) {

		return propertylettingMapper.countByExample(example);

	}

}
