package uk.co.ukstarjet.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uk.co.ukstarjet.entity.Pickup;
import uk.co.ukstarjet.mapper.PickupMapper;
import uk.co.ukstarjet.service.PickupService;
@Service
public class PickupServiceImpl implements PickupService {

	@Resource
	PickupMapper pickupMapper;
	
	@Override
	public void savePickupInfo(Pickup pickup) {
		// TODO Auto-generated method stub
		pickupMapper.insert(pickup);
	}

	@Override
	public void updatePickupInfo(Pickup pickup) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deletePickupById(Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public Pickup findPickupById(Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pickup> getAllPickupInfos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pickup> getPickupsByPage() {
		// TODO Auto-generated method stub
		return null;
	}

}
