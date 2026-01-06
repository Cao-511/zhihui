package com.project.platform.service;

import com.project.platform.entity.MeterReading;
import com.project.platform.vo.PageVO;

import java.util.List;
import java.util.Map;

/**
 * 抄表信息
 */
public interface MeterReadingService {

    PageVO<MeterReading> page(Map<String, Object> query, Integer pageNum, Integer pageSize);

    MeterReading selectById(Integer id);

    List<MeterReading> list();

    void insert(MeterReading entity);

    void updateById(MeterReading entity);

    void removeByIds(List<Integer> id);
}
