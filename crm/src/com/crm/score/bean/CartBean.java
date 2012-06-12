package com.crm.score.bean;

import java.util.HashMap;
import java.util.Map;
import com.crm.score.po.TChangeItem;

/**
 * @author lxj
 * ���ﳵbean
 */
public class CartBean {

	private Map<Long,TChangeItem> carMap;//���ﳵ,��Ʒ��źͶһ���ϸ
	
	private Long count = new Long(0); //��Ʒ����
	
	private Long totalScore = new Long(0); //�ܻ���
	
    public  CartBean(){
    	this.carMap = new HashMap<Long,TChangeItem>();//��ʼ�����ﳵ
    }

	public Map<Long, TChangeItem> getCarMap() {
		return carMap;
	}

	public void setCarMap(Map<Long, TChangeItem> carMap) {
		this.carMap = carMap;
	}

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
	}

	public Long getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(Long totalScore) {
		this.totalScore = totalScore;
	}

	
	/**
	 * ��ȡ��Ʒ����
	 * @return
	 */
	public int getType(){
		return this.carMap.size();
	}
	
	/**
	 * �������Ʒ�ǵ�һ�ζһ��������ﳵ������һ����Ʒ����������������Ʒ����
	 * �������������Ҫ���¹��ﳵ����Ʒ�������ܻ���
	 * @param pid
	 */
	public void buy(TChangeItem changeItem){
		Long pid = changeItem.getPid();
		TChangeItem item = carMap.get(pid);
		if(item==null){
			item = new TChangeItem();
			item.setPname(changeItem.getPname());
			item.setPicture(changeItem.getPicture());
			item.setChangenum(new Long(1));
			item.setBacknum(new Long(0));	
			item.setScore(changeItem.getScore());
			item.setPid(pid);
			item.setVdate(changeItem.getVdate());
			carMap.put(pid, item);
		}else{
		   item.setChangenum(new Long(item.getChangenum()+1));
		   item.setBacknum(new Long(item.getChangenum()-1));	
		}
		
		this.count+=1;
		this.totalScore= new Long(changeItem.getScore()+this.totalScore);
	}
	 
	/**
	 * �޸���Ʒ����,�����������ܻ���
	 * @param pid
	 * @param count
	 */
	public void update(Long pid,Long count){
		TChangeItem item = carMap.get(pid);
		this.count+=count-item.getChangenum();
		this.totalScore=this.totalScore+(count-item.getChangenum())*item.getScore();
		item.setChangenum(count);
		item.setBacknum(item.getChangenum()-1);
	}
	
	/**
	 * ɾ����Ʒ,�����������ܻ���
	 * @param pid
	 */
	public void delete(Long pid){
		TChangeItem item =carMap.get(pid);
		this.count-=item.getChangenum();
		this.totalScore-=item.getChangenum()*item.getScore();
		carMap.remove(pid);
		
	}
	
	public void clear(){
		this.count=new Long(0);
		this.totalScore=new Long(0);
		carMap.clear();
	}
}
