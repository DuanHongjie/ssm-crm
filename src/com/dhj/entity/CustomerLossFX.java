package com.dhj.entity;

/**
 * 客户流失分析实体
 * @author Administrator
 *
 */
public class CustomerLossFX {

	private String lossreason; // 流失原因
	private int num; // 数量
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getLossreason() {
		return lossreason;
	}
	public void setLossreason(String lossreason) {
		this.lossreason = lossreason;
	}
	
	
}
