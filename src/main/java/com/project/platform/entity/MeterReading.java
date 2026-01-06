package com.project.platform.entity;

import cn.hutool.core.date.DateTime;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * 抄表信息
 */
public class MeterReading  {
   /**
    * id
    */
   private Integer id;

   private Integer buildingId;
   /**
   * 房屋Id
   */
   private Integer houseId;
   /**
   * 抄表类型
   */
   private String type;
   /**
   * 读数
   */
   private Float reading;
   /**
   * 抄表日期
   */
   private String readingDate;
   /**
   * 费用
   */
   private Float fee;
   /**
   * 抄表人
   */
   private String readBy;
   /**
   * 创建时间
   */
   private LocalDateTime createTime;

   private String buildingName;

   private String houseName;

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }
   public Integer getHouseId() {
      return houseId;
   }

   public void setHouseId(Integer houseId) {
      this.houseId = houseId;
   }

   public String getType() {
      return type;
   }

   public void setType(String type) {
      this.type = type;
   }

   public Float getReading() {
      return reading;
   }

   public void setReading(Float reading) {
      this.reading = reading;
   }

   public String getReadingDate() {
      return readingDate;
   }

   public void setReadingDate(String readingDate) {
      this.readingDate = readingDate;
   }

   public Float getFee() {
      return fee;
   }

   public void setFee(Float fee) {
      this.fee = fee;
   }

   public String getReadBy() {
      return readBy;
   }

   public void setReadBy(String readBy) {
      this.readBy = readBy;
   }

   public LocalDateTime getCreateTime() {
      return createTime;
   }

   public void setCreateTime(LocalDateTime createTime) {
      this.createTime = createTime;
   }

   public Integer getBuildingId() {
      return buildingId;
   }

   public void setBuildingId(Integer buildingId) {
      this.buildingId = buildingId;
   }

   public String getBuildingName() {
      return buildingName;
   }

   public void setBuildingName(String buildingName) {
      this.buildingName = buildingName;
   }

   public String getHouseName() {
      return houseName;
   }

   public void setHouseName(String houseName) {
      this.houseName = houseName;
   }
}
