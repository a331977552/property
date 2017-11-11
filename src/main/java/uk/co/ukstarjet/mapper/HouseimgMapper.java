package uk.co.ukstarjet.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import uk.co.ukstarjet.entity.Houseimg;
import uk.co.ukstarjet.entity.HouseimgExample;

public interface HouseimgMapper {
    int countByExample(HouseimgExample example);

    int deleteByExample(HouseimgExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Houseimg record);

    int insertSelective(Houseimg record);

    List<Houseimg> selectByExample(HouseimgExample example);

    Houseimg selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Houseimg record, @Param("example") HouseimgExample example);

    int updateByExample(@Param("record") Houseimg record, @Param("example") HouseimgExample example);

    int updateByPrimaryKeySelective(Houseimg record);

    int updateByPrimaryKey(Houseimg record);
}