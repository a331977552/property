package uk.co.ukstarjet.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uk.co.ukstarjet.entity.Move;
import uk.co.ukstarjet.mapper.MoveMapper;
import uk.co.ukstarjet.service.MoveService;
@Service
public class MoveServiceImpl implements MoveService {

	@Autowired
	MoveMapper moveMapper; 
	@Override
	public void saveMoveInfo(Move move) {
		
		moveMapper.insert(move);
		
		
		
	}

	@Override
	public Move findMovebyId(Serializable serializable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMoveInfo(Move move) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMoveById(Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Move> getAllMoveInfos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Move> getMovesByPage() {
		// TODO Auto-generated method stub
		return null;
	}

}
