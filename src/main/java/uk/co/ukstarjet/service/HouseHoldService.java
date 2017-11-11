package uk.co.ukstarjet.service;

import java.io.Serializable;
import java.util.List;

import uk.co.ukstarjet.entity.Household;

public interface HouseHoldService {

	public void saveHouseHoldInfo(Household household);
	public Household findHouseHoldById(Serializable id);
	public void updateHouseHoldInfo(Household household);
	public void deleteHouseHoldInfoById(Serializable id);
	public List<Household> getAllHouseHoldInfos();
	public List<Household> getHouseHoldInfosByPage();
	
	
	
}
