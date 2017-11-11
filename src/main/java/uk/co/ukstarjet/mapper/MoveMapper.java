package uk.co.ukstarjet.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import uk.co.ukstarjet.entity.Move;
import uk.co.ukstarjet.entity.MoveExample;

public interface MoveMapper {
    int countByExample(MoveExample example);

    int deleteByExample(MoveExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Move record);

    int insertSelective(Move record);

    List<Move> selectByExample(MoveExample example);

    Move selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Move record, @Param("example") MoveExample example);

    int updateByExample(@Param("record") Move record, @Param("example") MoveExample example);

    int updateByPrimaryKeySelective(Move record);

    int updateByPrimaryKey(Move record);
}