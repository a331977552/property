package uk.co.ukstarjet.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import uk.co.ukstarjet.entity.Propertyletting;
import uk.co.ukstarjet.entity.PropertylettingExample;

public interface PropertylettingMapper {
    int countByExample(PropertylettingExample example);

    int deleteByExample(PropertylettingExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Propertyletting record);

    int insertSelective(Propertyletting record);

    List<Propertyletting> selectByExample(PropertylettingExample example);

    Propertyletting selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Propertyletting record, @Param("example") PropertylettingExample example);

    int updateByExample(@Param("record") Propertyletting record, @Param("example") PropertylettingExample example);

    int updateByPrimaryKeySelective(Propertyletting record);

    int updateByPrimaryKey(Propertyletting record);
}