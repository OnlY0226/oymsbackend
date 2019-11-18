package com.oyms.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import com.oyms.dto.GoodsDTO;

@Mapper
public interface GoodsExMapper {
	@Select("SELECT * from goods INNER JOIN goodtype ON goods.goodtype_id = goodtype.id AND goods.isDelete = 0 AND goodtype.isdelete = 0 ORDER BY goodtype.cname ASC")
	List<GoodsDTO> goodList();
}
