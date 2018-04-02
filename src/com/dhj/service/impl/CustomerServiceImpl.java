package com.dhj.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.stereotype.Service;

import com.dhj.dao.CustomerDao;
import com.dhj.dao.CustomerLossDao;
import com.dhj.dao.OrderDao;
import com.dhj.entity.Customer;
import com.dhj.entity.CustomerFw;
import com.dhj.entity.CustomerGc;
import com.dhj.entity.CustomerGx;
import com.dhj.entity.CustomerLoss;
import com.dhj.entity.Order;
import com.dhj.service.CustomerService;

/**
 * �ͻ�Service�ӿ�
 * @author Administrator
 *
 */
@Service("customerService")
public class CustomerServiceImpl implements CustomerService{

	@Resource
	private CustomerDao customerDao;
	
	@Resource
	private CustomerLossDao customerLossDao;
	
	@Resource
	private OrderDao orderDao;
	
	@Override
	public List<Customer> find(Map<String, Object> map) {
		return customerDao.find(map);
	}

	@Override
	public Long getTotal(Map<String, Object> map) {
		return customerDao.getTotal(map);
	}

	@Override
	public int add(Customer customer) {
		return customerDao.add(customer);
	}

	@Override
	public int update(Customer customer) {
		return customerDao.update(customer);
	}

	@Override
	public int delete(Integer id) {
		return customerDao.delete(id);
	}

	@Override
	public Customer findById(Integer id) {
		return customerDao.findById(id);
	}

	@Override
	public void checkCustomerLoss() {
		List<Customer> customerList=customerDao.findLossCustomer(); // ������ʧ�ͻ�
		for(Customer c:customerList){
			CustomerLoss customerLoss=new CustomerLoss(); // ʵ�����ͻ���ʧʵ��
			customerLoss.setCusName(c.getName()); // �ͻ�����
			customerLoss.setCusManager(c.getCusManager()); // �ͻ�����
			Order order=orderDao.findLastOrderByCusId(c.getId()); // ����ָ���ͻ�����Ķ���
			if(order==null){
				customerLoss.setLastOrderTime(null);
			}else{
				customerLoss.setLastOrderTime(order.getOrderDate()); // ����������µ�����				
			}
			customerLossDao.add(customerLoss); // ��ӵ��ͻ���ʧ��
			c.setState(1); // �ͻ�״̬�޸ĳ�1 ��ʧ״̬
			customerDao.update(c); 
		}
	}

	@Override
	public List<CustomerGx> findCustomerGx(Map<String, Object> map) {
		return customerDao.findCustomerGx(map);
	}

	@Override
	public Long getTotalCustomerGx(Map<String, Object> map) {
		return customerDao.getTotalCustomerGx(map);
	}

	@Override
	public List<CustomerGc> findCustomerGc() {
		return customerDao.findCustomerGc();
	}

	@Override
	public List<CustomerFw> findCustomerFw() {
		return customerDao.findCustomerFw();
	}

	@Override
	public void exportExcel(ServletOutputStream outputStream) {

		List<Customer> list = customerDao.find(null);
		try {
			// 1������������
			HSSFWorkbook workbook = new HSSFWorkbook();
			// 1.1�������ϲ���Ԫ�����
			CellRangeAddress cellRangeAddress = new CellRangeAddress(0, 0, 0, 4);// ��ʼ�кţ������кţ���ʼ�кţ������к�

			// 1.2��ͷ������ʽ
			HSSFCellStyle style1 = createCellStyle(workbook, (short) 16);

			// 1.3���б�����ʽ
			HSSFCellStyle style2 = createCellStyle(workbook, (short) 13);

			// 2������������
			HSSFSheet sheet = workbook.createSheet("�û��б�");
			// 2.1�����غϲ���Ԫ�����
			sheet.addMergedRegion(cellRangeAddress);
			// ����Ĭ���п�
			sheet.setDefaultColumnWidth(25);

			// 3��������
			// 3.1������ͷ�����У���������ͷ����
			HSSFRow row1 = sheet.createRow(0);
			HSSFCell cell1 = row1.createCell(0);
			// ���ص�Ԫ����ʽ
			cell1.setCellStyle(style1);
			cell1.setCellValue("�û��б�");

			// 3.2�������б����У����������б���
			HSSFRow rowHead = sheet.createRow(1);
			String[] titles = { "���", "�ͻ�����", "��Ҫ", "��ϵ��", "��ϰ�绰","������","��ַ" };
			for (int i = 0; i < titles.length; i++) {
				HSSFCell cell2 = rowHead.createCell(i);
				// ���ص�Ԫ����ʽ
				cell2.setCellStyle(style2);
				cell2.setCellValue(titles[i]);
			}

			// 4��������Ԫ�񣻽��û��б�д��excel
			if (list != null) {
				for (int j = 0; j < list.size(); j++) {
					HSSFRow row = sheet.createRow(j + 2);
					HSSFCell cellId = row.createCell(0);
					cellId.setCellValue(list.get(j).getId());
					HSSFCell cellName = row.createCell(1);
					cellName.setCellValue(list.get(j).getName());
					HSSFCell cellOverview = row.createCell(2);
					cellOverview.setCellValue(list.get(j).getLevel());
					HSSFCell cell14 = row.createCell(3);
					cell14.setCellValue(list.get(j).getFr());
					HSSFCell cellLinkPhone = row.createCell(4);
					cellLinkPhone.setCellValue(list.get(j).getPhone());
					HSSFCell cellCreateMan = row.createCell(5);
					cellCreateMan.setCellValue(list.get(j).getCusManager());
					HSSFCell cellCreateTime = row.createCell(6);
					if (list.get(j).getAddress()!= null) {
						cellCreateTime.setCellValue(list.get(j).getAddress());
					} else {
						cellCreateTime.setCellValue("");
					}
				}
			}
			// 5�����
			workbook.write(outputStream);
			workbook.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		
	}
	/**
	 * ������Ԫ����ʽ
	 * 
	 * @param workbook
	 *            ������
	 * @param fontSize
	 *            �����С
	 * @return ��Ԫ����ʽ
	 */
	private static HSSFCellStyle createCellStyle(HSSFWorkbook workbook, short fontSize) {
		HSSFCellStyle style = workbook.createCellStyle();
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);// ˮƽ����
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);// ��ֱ����
		// ��������
		HSSFFont font = workbook.createFont();
		font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);// �Ӵ�����
		font.setFontHeightInPoints(fontSize);
		// ��������
		style.setFont(font);
		return style;
	}
}
