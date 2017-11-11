package uk.co.ukstarjet.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uk.co.ukstarjet.entity.Household;
import uk.co.ukstarjet.mapper.HouseholdMapper;
import uk.co.ukstarjet.service.HouseHoldService;

@Service
public class HouseHoldServiceImpl implements HouseHoldService {

	@Autowired
	HouseholdMapper householdMapper ;
	@Override
	public void saveHouseHoldInfo(Household household) {
		// TODO Auto-generated method stub
		householdMapper.insert(household);
	}

	@Override
	public Household findHouseHoldById(Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateHouseHoldInfo(Household household) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteHouseHoldInfoById(Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Household> getAllHouseHoldInfos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Household> getHouseHoldInfosByPage() {
		// TODO Auto-generated method stub
		return null;
	}

}
