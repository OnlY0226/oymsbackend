package com.oyms.controller;

import java.io.Console;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.oyms.dto.ApiDTO;
import com.oyms.model.GoodType;
import com.oyms.model.Goods;
import com.oyms.service.GoodsService;

@RestController
@RequestMapping("/mallgoods")

public class MallGoodsController {
	@Autowired
	private ApiDTO<Goods> apiDTO;
	@Autowired
	private ApiDTO<GoodType> apiDTOgoodType;
	@Autowired
	private GoodsService goodsService;
	// 根据商品类型Id显示商品
	@GetMapping("/show")
	public ApiDTO<?> showGoods(Integer goodTypeId,Integer parentTypeId) {
		List<Goods> goodList = goodsService.showGoods(goodTypeId);
		List<GoodType> goodTypesList = goodsService.showGoodTypesList(parentTypeId);
		apiDTO.setIsSuccess(true);
		apiDTO.setData(goodList);
		apiDTOgoodType.setData2(goodTypesList);
		return apiDTO;

	}
	@GetMapping("/detail")
	public ApiDTO<?> detail(Long goodId){
		Goods detail = goodsService.detail(goodId);
		apiDTO.setData(null);
		apiDTO.setData2(null);
		apiDTO.setIsSuccess(true);
		apiDTO.setResult(detail);
		return apiDTO;
	}
}
