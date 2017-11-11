package uk.co.ukstarjet.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uk.co.ukstarjet.mapper.StatisticMapper;
import uk.co.ukstarjet.service.StatisticService;
@Service
public class StatisticServiceImpl implements StatisticService {
	
		
	@Autowired
	private StatisticMapper statisticMapper;
	
	public StatisticMapper getStatisticMapper() {
		return statisticMapper;
	}

	public void setStatisticMapper(StatisticMapper statisticMapper) {
		this.statisticMapper = statisticMapper;
	}

	@Override
	public void updateVisitedPeople(Integer numberOfvisitedPeople) {
		
		
	}

	@Override
	public Integer getNumberOfVisitedPeople() {
		statisticMapper.hashCode();
		return null;
	}

}
