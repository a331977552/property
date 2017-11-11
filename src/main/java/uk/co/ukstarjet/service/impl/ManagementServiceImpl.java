package uk.co.ukstarjet.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uk.co.ukstarjet.entity.Manager;
import uk.co.ukstarjet.entity.ManagerExample;
import uk.co.ukstarjet.entity.ManagerExample.Criteria;
import uk.co.ukstarjet.mapper.ManagerMapper;
import uk.co.ukstarjet.service.ManagmentService;

@Service
public class ManagementServiceImpl implements ManagmentService {

	@Autowired 
	ManagerMapper 	managerMapper; 
	
	@Override
	public Manager login(Manager manager) {
		
		
		ManagerExample example=new ManagerExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andUsernameEqualTo(manager.getUsername());
		createCriteria.andPasswordEqualTo(manager.getPassword());
		
		List<Manager> selectByExample = managerMapper.selectByExample(example);

		if(selectByExample!=null && selectByExample.size()>0)
		{
			System.out.println(selectByExample);
			return selectByExample.get(0);	
		}
		return null;
	}

}
