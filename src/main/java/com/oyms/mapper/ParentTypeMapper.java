package com.oyms.mapper;

import com.oyms.model.ParentType;
import com.oyms.model.ParentTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface ParentTypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    long countByExample(ParentTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    int deleteByExample(ParentTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    int insert(ParentType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    int insertSelective(ParentType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    List<ParentType> selectByExampleWithRowbounds(ParentTypeExample example, RowBounds rowBounds);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:53 CST 2019
     */
    List<ParentType> selectByExample(ParentTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:54 CST 2019
     */
    ParentType selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:54 CST 2019
     */
    int updateByExampleSelective(@Param("record") ParentType record, @Param("example") ParentTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:54 CST 2019
     */
    int updateByExample(@Param("record") ParentType record, @Param("example") ParentTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:54 CST 2019
     */
    int updateByPrimaryKeySelective(ParentType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parenttype
     *
     * @mbg.generated Wed Nov 06 00:17:54 CST 2019
     */
    int updateByPrimaryKey(ParentType record);
    List<ParentType> queryParentGoodType();
}