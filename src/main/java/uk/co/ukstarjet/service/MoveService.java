package uk.co.ukstarjet.service;

import java.io.Serializable;
import java.util.List;

import uk.co.ukstarjet.entity.Household;
import uk.co.ukstarjet.entity.Move;

public interface MoveService {

	public void saveMoveInfo(Move move);
	public Move findMovebyId(Serializable serializable);
	
	public void updateMoveInfo(Move move);
	public void deleteMoveById(Serializable id);
	public List<Move> getAllMoveInfos();
	public List<Move> getMovesByPage();
	
	
}
