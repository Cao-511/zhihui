package com.project.platform.controller;

import com.project.platform.entity.Building;
import com.project.platform.entity.House;
import com.project.platform.entity.MeterReading;
import com.project.platform.entity.User;
import com.project.platform.service.BuildingService;
import com.project.platform.service.HouseService;
import com.project.platform.service.MeterReadingService;
import com.project.platform.service.UserService;
import com.project.platform.vo.PageVO;
import com.project.platform.vo.ResponseVO;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 抄表信息
 */
@RestController
@RequestMapping("/meterReading")
public class MeterReadingController {
    @Resource
    private MeterReadingService meterReadingService;
    @Resource
    private HouseService houseService;
    @Resource
    private BuildingService buildingService;
    @Resource
    private UserService userService;

    /**
     * 分页查询
     *
     * @param query
     * @param pageNum
     * @param pageSize
     * @return
     */
    @GetMapping("page")
    public ResponseVO<PageVO<MeterReading>> page(@RequestParam Map<String, Object> query, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "10") Integer pageSize) {
        PageVO<MeterReading> page = meterReadingService.page(query, pageNum, pageSize);
        page.getList().forEach(meterReading -> {
            Building building = buildingService.selectById(meterReading.getBuildingId());
            if (building != null) {
                meterReading.setBuildingName(building.getCode());
            }
            House house  = houseService.selectById(meterReading.getHouseId());
            if (building != null) {
                meterReading.setHouseName(house.getHouseNumber());
            }
        });
        return ResponseVO.ok(page);

    }

    /**
     * 根据id查询
     *
     * @param id
     * @return
     */
    @GetMapping("selectById/{id}")
    public ResponseVO<MeterReading> selectById(@PathVariable("id") Integer id) {
        MeterReading entity = meterReadingService.selectById(id);
        return ResponseVO.ok(entity);
    }


    /**
     * 列表
     *
     * @return
     */
    @GetMapping("list")
    public ResponseVO<List<MeterReading>> list() {
        return ResponseVO.ok(meterReadingService.list());
    }


    /**
     * 新增
     *
     * @param entity
     * @return
     */
    @PostMapping("add")
    public ResponseVO add(@RequestBody MeterReading entity) {
        meterReadingService.insert(entity);
        return ResponseVO.ok();
    }

    /**
     * 更新
     *
     * @param entity
     * @return
     */
    @PutMapping("update")
    public ResponseVO update(@RequestBody MeterReading entity) {
        meterReadingService.updateById(entity);
        return ResponseVO.ok();
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping("delBatch")
    public ResponseVO delBatch(@RequestBody List<Integer> ids) {
        meterReadingService.removeByIds(ids);
        return ResponseVO.ok();
    }
}
