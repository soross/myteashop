package com.crm.pub.excel;

import java.util.Comparator;

import com.crm.pub.po.TPower;

public class ComparatorPower implements Comparator {
	public int compare(Object arg0, Object arg1) {
		TPower power0 = (TPower) arg0;
		TPower power1 = (TPower) arg1;
		// ���ȱȽ����䣬���������ͬ����Ƚ�����
		int flag = power0.getSortid().compareTo(power1.getSortid());
		if (flag == 0) {
			return power0.getId().compareTo(power1.getId());
		} else {
			return flag;
		}
	}

}
