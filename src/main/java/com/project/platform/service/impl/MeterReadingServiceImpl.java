package com.project.platform.service.impl;

import com.project.platform.entity.MeterReading;
import com.project.platform.mapper.MeterReadingMapper;
import com.project.platform.service.MeterReadingService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import com.project.platform.vo.PageVO;

import java.util.List;
import java.util.Map;

/**
 * 抄表信息
 */
@Service
public class MeterReadingServiceImpl  implements MeterReadingService {
    @Resource
    private MeterReadingMapper meterReadingMapper;
    
    @Override
    public PageVO<MeterReading> page(Map<String, Object> query, Integer pageNum, Integer pageSize) {
        PageVO<MeterReading> page = new PageVO();
        List<MeterReading> list = meterReadingMapper.queryPage((pageNum - 1) * pageSize, pageSize, query);
        page.setList(list);
        page.setTotal(meterReadingMapper.queryCount(query));
        return page;
    }

    @Override
    public MeterReading selectById(Integer id) {
        MeterReading meterReading = meterReadingMapper.selectById(id);
        return meterReading;
    }

    @Override
    public List<MeterReading> list() {
        return meterReadingMapper.list();
    }
    @Override
    public void insert(MeterReading entity) {
        check(entity);
        meterReadingMapper.insert(entity);
    }
    @Override
    public void updateById(MeterReading entity) {
        check(entity);
        meterReadingMapper.updateById(entity);
    }
    private void check(MeterReading entity) {

    }
    @Override
    public void removeByIds(List<Integer> ids) {
        meterReadingMapper.removeByIds(ids);
    }
}
