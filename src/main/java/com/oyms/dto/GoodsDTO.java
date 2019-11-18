package com.oyms.dto;

import java.util.Date;

import lombok.Data;
@Data
public class GoodsDTO {
    private Long id;
    private String goodname;
    private Integer goodtypeId;
    private Float goodprice;
    private Long goodnum;
    private String gooddesc;
    private String goodimgurl;
    private String cname;
    private Integer parentId;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getGoodname() {
		return goodname;
	}
	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}
	public Integer getGoodtypeId() {
		return goodtypeId;
	}
	public void setGoodtypeId(Integer goodtypeId) {
		this.goodtypeId = goodtypeId;
	}
	public Float getGoodprice() {
		return goodprice;
	}
	public void setGoodprice(Float goodprice) {
		this.goodprice = goodprice;
	}
	public Long getGoodnum() {
		return goodnum;
	}
	public void setGoodnum(Long goodnum) {
		this.goodnum = goodnum;
	}
	public String getGooddesc() {
		return gooddesc;
	}
	public void setGooddesc(String gooddesc) {
		this.gooddesc = gooddesc;
	}
	public String getGoodimgurl() {
		return goodimgurl;
	}
	public void setGoodimgurl(String goodimgurl) {
		this.goodimgurl = goodimgurl;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
    
}
