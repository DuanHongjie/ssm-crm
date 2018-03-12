package com.dhj.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dhj.dao.OrderDetailsDao;
import com.dhj.entity.OrderDetails;
import com.dhj.service.OrderDetailsService;

/**
 * 订单详情Service实现类
 * @author Administrator
 *
 */
@Service("orderDetailsService")
public class OrderDetailsServiceImpl implements OrderDetailsService{

	@Resource
	private OrderDetailsDao orderDetailsDao;
	
	@Override
	public List<OrderDetails> find(Map<String, Object> map) {
		return orderDetailsDao.find(map);
	}

	@Override
	public Long getTotal(Map<String, Object> map) {
		return orderDetailsDao.getTotal(map);
	}

	@Override
	public float getTotalPriceByOrderId(Integer orderId) {
		return orderDetailsDao.getTotalPriceByOrderId(orderId);
	}

}
