package com.oyms.dto;

import java.util.Date;
import java.util.List;

import com.oyms.model.GoodType;

import lombok.Data;

@Data
public class GoodTypeDTO {
    private Integer id;
    private Integer parentId;
    private String cname;
    private Byte isdelete;
    private Date createTime;
    private String imgSrc;
	private String pname;
	private List<GoodType> goodTypes;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Byte getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(Byte isdelete) {
		this.isdelete = isdelete;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public List<GoodType> getGoodTypes() {
		return goodTypes;
	}
	public void setGoodTypes(List<GoodType> goodTypes) {
		this.goodTypes = goodTypes;
	}
	
}
