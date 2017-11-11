package uk.co.ukstarjet.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import uk.co.ukstarjet.entity.Household;
import uk.co.ukstarjet.entity.HouseholdExample;

public interface HouseholdMapper {
    int countByExample(HouseholdExample example);

    int deleteByExample(HouseholdExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Household record);

    int insertSelective(Household record);

    List<Household> selectByExample(HouseholdExample example);

    Household selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Household record, @Param("example") HouseholdExample example);

    int updateByExample(@Param("record") Household record, @Param("example") HouseholdExample example);

    int updateByPrimaryKeySelective(Household record);

    int updateByPrimaryKey(Household record);
}