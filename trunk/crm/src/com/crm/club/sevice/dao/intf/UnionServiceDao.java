package com.crm.club.sevice.dao.intf;

import java.util.List;

import com.crm.club.po.UnionBinfo;
import com.crm.club.po.UnionSlog;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;

public interface UnionServiceDao {
	/**
	 * 添加商家
	 * @param union
	 */
   public void addUnion(UnionBinfo union,UnionSlog log);
   /**
	 * 删除商家
	 * @param union
	 */
   public void deleteUnion(UnionBinfo union);
   /**
	 * 注册商家
	 * @param union
	 */
  public void updateState(UnionBinfo union);
   /**
	 * 修改商家
	 * @param union
	 */
   public void updateUnion(UnionBinfo union,UnionSlog log);
   /**
	 * 修改商家
	 * @param union
	 */
  public void updateUnion(UnionBinfo union);
   
   /**
	 * 获得对应商家
	 * @param union
	 */
   public UnionBinfo getUnion(long uid);
   /**
	 * 获得商家总数
	 * @param union
	 */
   public int getCount(UnionBinfo union);
   
   /**
	 * 获取所有商家
	 * @param union
	 */
   public List getUnionList(UnionBinfo union,PageUtil pageUtil);
   /**
	 * 获得分级日志总数
	 * @param union
	 */
 public int getLogCount(UnionSlog log,final String starttime,final String endtime);
   /**
	 * 获取所有日志
	 * @param union
	 */
  public List getLogList(UnionSlog log,PageUtil pageUtil,String starttime, String endtime);
  /**
	 * 获得所选分级日志总数
	 * @param union
	 */
public int getLogCount(String log);
/**
 * 获取所选日志
 * @param union
 */
public List getLogList(String log,PageUtil pageUtil);
   /**
    * 取相应的数据字典
    * @param id
    */
   public List getDate(Long id);
   /**
    * 获取对应的数据字典对象
    * @return
    */
   public TData getObject(Long id);
   /**
    * 获取对应的数据字典对象
    * @return
    */
   public TData getData(String name);
   /**
    * 审核
    * @param id
    * @param check
    */
   public void updateCheck(Long id,String check);
}
