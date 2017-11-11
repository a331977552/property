package uk.co.ukstarjet.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import uk.co.ukstarjet.entity.Pickup;
import uk.co.ukstarjet.entity.PickupExample;

public interface PickupMapper {
    int countByExample(PickupExample example);

    int deleteByExample(PickupExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Pickup record);

    int insertSelective(Pickup record);

    List<Pickup> selectByExample(PickupExample example);

    Pickup selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Pickup record, @Param("example") PickupExample example);

    int updateByExample(@Param("record") Pickup record, @Param("example") PickupExample example);

    int updateByPrimaryKeySelective(Pickup record);

    int updateByPrimaryKey(Pickup record);
}