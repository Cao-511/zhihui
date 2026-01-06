package com.project.platform.mapper;

import com.project.platform.entity.MeterReading;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;


public interface MeterReadingMapper {
    List<MeterReading> queryPage(Integer offset, Integer pageSize, @Param("query") Map<String, Object> query);

    int queryCount(@Param("query") Map<String, Object> query);

    @Select("SELECT * FROM meter_reading WHERE id = #{id}")
    MeterReading selectById(Integer id);

    @Select("SELECT * FROM meter_reading")
    List<MeterReading> list();

    int insert(MeterReading entity);

    int updateById(MeterReading entity);

    boolean removeByIds(List<Integer> ids);

    @Select("SELECT id FROM meter_reading WHERE house_id like #{houseName}")
    List<Integer> queryLikelist(String houseName);


}