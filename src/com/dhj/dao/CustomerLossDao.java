package com.dhj.dao;

import java.util.List;
import java.util.Map;

import com.dhj.entity.CustomerLoss;
import com.dhj.entity.CustomerLossFX;

/**
 * �ͻ���ʧDao�ӿ�
 * @author Administrator
 *
 */
public interface CustomerLossDao {

	
	/**
	 * ��ѯ�ͻ���ʧ����
	 * @param map
	 * @return
	 */
	public List<CustomerLoss> find(Map<String,Object> map);
	
	
	/**
	 * ��ȡ�ܼ�¼��
	 * @param map
	 * @return
	 */
	public Long getTotal(Map<String,Object> map);
	
	/**
	 * ��ӿͻ���ʧ��¼
	 * @param customerLoss
	 * @return
	 */
	public int add(CustomerLoss customerLoss);
	
	/**
	 * ͨ��Id����ʵ��
	 * @param id
	 * @return
	 */
	public CustomerLoss findById(Integer id);
	
	/**
	 * �޸Ŀͻ���ʧ��¼
	 * @param customerLoss
	 * @return
	 */
	public int update(CustomerLoss customerLoss);


	public List<CustomerLossFX> find2();
}
