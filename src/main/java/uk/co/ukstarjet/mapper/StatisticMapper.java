package uk.co.ukstarjet.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import uk.co.ukstarjet.entity.Statistic;
import uk.co.ukstarjet.entity.StatisticExample;

public interface StatisticMapper {
    int countByExample(StatisticExample example);

    int deleteByExample(StatisticExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Statistic record);

    int insertSelective(Statistic record);

    List<Statistic> selectByExample(StatisticExample example);

    Statistic selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Statistic record, @Param("example") StatisticExample example);

    int updateByExample(@Param("record") Statistic record, @Param("example") StatisticExample example);

    int updateByPrimaryKeySelective(Statistic record);

    int updateByPrimaryKey(Statistic record);
}