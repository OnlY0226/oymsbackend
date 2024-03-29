package com.oyms.model;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ParentType {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column parenttype.id
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column parenttype.pname
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    private String pname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column parenttype.isdelete
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    private Byte isdelete;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column parenttype.img_url
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    private String imgUrl;
    private List<GoodType> goodTypes;

    public List<GoodType> getGoodTypes() {
		return goodTypes;
	}

	public void setGoodTypes(List<GoodType> goodTypes) {
		this.goodTypes = goodTypes;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column parenttype.id
     *
     * @return the value of parenttype.id
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column parenttype.id
     *
     * @param id the value for parenttype.id
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column parenttype.pname
     *
     * @return the value of parenttype.pname
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public String getPname() {
        return pname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column parenttype.pname
     *
     * @param pname the value for parenttype.pname
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column parenttype.isdelete
     *
     * @return the value of parenttype.isdelete
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public Byte getIsdelete() {
        return isdelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column parenttype.isdelete
     *
     * @param isdelete the value for parenttype.isdelete
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public void setIsdelete(Byte isdelete) {
        this.isdelete = isdelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column parenttype.img_url
     *
     * @return the value of parenttype.img_url
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public String getImgUrl() {
        return imgUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column parenttype.img_url
     *
     * @param imgUrl the value for parenttype.img_url
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl == null ? null : imgUrl.trim();
    }
}