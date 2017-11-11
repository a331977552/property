package uk.co.ukstarjet.service;

import java.io.Serializable;
import java.util.List;

import uk.co.ukstarjet.entity.Move;
import uk.co.ukstarjet.entity.Pickup;

public interface PickupService {

	
	
	public void savePickupInfo(Pickup pickup);
	public void updatePickupInfo(Pickup pickup);
	public void deletePickupById(Serializable id);
	public Pickup findPickupById(Serializable id);
	public List<Pickup> getAllPickupInfos();
	public List<Pickup> getPickupsByPage();
	
	
}
