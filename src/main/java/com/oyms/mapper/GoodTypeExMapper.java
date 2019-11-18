package com.oyms.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.oyms.dto.GoodTypeDTO;

@Mapper
public interface GoodTypeExMapper {
	@Select("SELECT * from goodtype INNER JOIN parenttype ON goodtype.parent_id = parenttype.id AND goodtype.isdelete = 0 AND parenttype.isdelete = 0 ORDER BY parenttype.pname ASC")
	List<GoodTypeDTO> goodTypeList();
	
	@Select("select p.id,p.pname,g.id gid,g.cname FROM parenttype p LEFT JOIN goodtype g ON p.id = g.parent_id")
	List<GoodTypeDTO> selectParentList();
}
