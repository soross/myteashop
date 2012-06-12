package com.crm.group.dao.impl;

import java.io.File;
import java.io.IOException;
import java.security.acl.Group;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import jxl.Workbook;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import oracle.jdbc.OracleTypes;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.group.dao.inf.GroupDao;
import com.crm.group.po.Groups;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.TGrouplog;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.po.VipArea;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.hibernate.HibernateSessionFactory;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;
/**
 * 实现类 GroupDaoImpl
 * 实现集团 增，删，改，查
 * @version 0.5
 * @author hyq $2009/10/26
 */
public class GroupDaoImpl extends HibernateDaoSupport implements GroupDao{
	
	private Connection con = null;

	private WritableSheet sheet = null;

	private WritableWorkbook book;
	
	/**
	 * 添加集团
	 */
	public void addGroup(Groups group) {
		this.getHibernateTemplate().save(group);
	}
	/**
 	 * 删除集团
 	 */
	public void deleteGroup(Groups group) {
		this.getHibernateTemplate().delete(group);
		
	}
	/**
  	 * 获取集团总数
  	 */
	public int getCount(final Groups group) {
		  
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
       
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select count(*) from Groups where 1=1";
				if(!"".equals(group.getGroupname())&&null!=group.getGroupname()){
					hql+=" and groupname like :name";
				}
				if(!"".equals(group.getVocation())&&null!=group.getVocation()){
					hql+=" and vocation =:vocation ";
				}
				if(!"".equals(group.getState())&&null!=group.getState()){
					
					hql+=" and state in ("+group.getState()+")";
				}
				if(!"".equals(group.getManager())&&null!=group.getManager()){
					hql+=" and manager =:manager ";
				}
				
				Query query=session.createQuery(hql);
				if(!"".equals(group.getGroupname())&&null!=group.getGroupname()){
					query.setString("name", "%"+group.getGroupname()+"%");
				}
				if(!"".equals(group.getVocation())&&null!=group.getVocation()){
					query.setString("vocation",group.getVocation() );
				}

				if(!"".equals(group.getManager())&&null!=group.getManager()){
					query.setString("manager", group.getManager());
				}
				
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}});
		return i;
	}
	/**
 	 * @param groupid
 	 * 根据userid，查找集团信息
 	 * @return Groups
 	 */
	public Groups getGroup(String groupid) {
		
		return (Groups)this.getHibernateTemplate().get(Groups.class, groupid);
	}
	/**
 	 * 查询集团
 	 */
	public List searchGroup(final Groups group, final PageUtil pageutil) {
	
		List list=this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select g from Groups g where 1=1";
				if(!"".equals(group.getGroupname())&&null!=group.getGroupname()){
					hql+=" and groupname like :name";
				}
				if(!"".equals(group.getVocation())&&null!=group.getVocation()){
					hql+=" and vocation =:vocation ";
				}
				if(!"".equals(group.getState())&&null!=group.getState()){
					
					hql+=" and state in ("+group.getState()+")";
				}
				if(!"".equals(group.getManager())&&null!=group.getManager()){
					hql+=" and manager =:manager ";
				}
				
				Query query=session.createQuery(hql);
				if(!"".equals(group.getGroupname())&&null!=group.getGroupname()){
					query.setString("name", "%"+group.getGroupname()+"%");
				}
				if(!"".equals(group.getVocation())&&null!=group.getVocation()){
					query.setString("vocation",group.getVocation() );
				}

				if(!"".equals(group.getManager())&&null!=group.getManager()){
					query.setString("manager", group.getManager());
				}
				query.setMaxResults(pageutil.getPagesize());
				query.setFirstResult(pageutil.pastart());
				
				return query.list();
			}});
		return list;
	}
	/**
 	 * 修改集团
 	 */
	public void updateGroup(final Groups group,final String gid) {
		
		
		this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql="update Groups set groupid=:gid,groupname=:gname,vocation=:gvo,grouplevel=:gle,privince=:gpri," +
						"city=:gcity,manager=:gmanager,state=:gstate,address=:gadd,post=:gpost where groupid=:ggid";
				Query query=session.createQuery(hql);
				   query.setString("gid", group.getGroupid());
				   query.setString("gname", group.getGroupname());
				   query.setString("gvo", group.getVocation());
				   query.setString("gle", group.getGrouplevel());
				   query.setString("gpri", group.getPrivince());
				   query.setString("gcity", group.getCity());
				   query.setString("gmanager", group.getManager());
				   query.setString("gstate", group.getState());
				   query.setString("gadd", group.getAddress());
				   query.setString("gpost", group.getPost());
				   query.setString("ggid", gid);
				   query.executeUpdate();
				return null;
			}});
		
		
	}
	
	/**
  	 * 获取城市
  	 */
	public List getCity(final VipCity city) {
		List list=this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select c from VipCity c where c.VProvince='"+city.getVProvince()+"'";
				Query query=session.createQuery(hql);
				return query.list();
			}});
		return list;
	}
	/**
	 * 获取行业
	 */
	public List getData(final TData data) {
		List list=this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select d from TData d where pid="+data.getPid();
				Query query=session.createQuery(hql);
				return query.list();
			}});
		return list;
	}
	/**
	 * 获取省份
	 */
	public List getProvince() {
		List list=this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select p from VipProvince p ";
				Query query=session.createQuery(hql);
				return query.list();
			}});
		return list;
	}
	
	/**
	 * 获取对应城市
	 */
	public VipCity getCity(final String city, final String privince) {
		VipCity citys=(VipCity)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select v from VipCity v where v.VCode="+city+" and v.VProvince="+privince;
				
				Query query=session.createQuery(hql);
				
				return query.uniqueResult();
			}});
		return citys;
	}
	
	/**
	 * 获取对应行业和对应级别
	 */
	public TData getData(Long data) {
		return (TData)this.getHibernateTemplate().get(TData.class, data);
	}
	
	/**
   	 * 获取对应省份
   	 */
	public VipProvince getPro(final String privince) {
		VipProvince vince=(VipProvince)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select v from VipProvince v where v.VCode=:code";
				Query query=session.createQuery(hql);
				query.setString("code", privince);
				
				return query.uniqueResult();
			}});
		return vince;
	}
	/**
   	 * 获取对应级别
   	 */
	public TData getLevel(final String data) {
		TData datas=(TData)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select d from TData d where name like '"+data+"'";
				Query query=session.createQuery(hql);
				return query.uniqueResult();
			}});
		return datas;
	}
	 /**
  	 * 修改集团状态
  	 */
     
	public void updateState(final Groups group) {
		Groups groups=(Groups)this.getHibernateTemplate().get(Groups.class, group.getGroupid());
		groups.setState(group.getState());
		this.getHibernateTemplate().update(groups);
		
	}
	/**
  	 * 得到集团下一个id
  	 */ 
	public String getGroupId(final String gtime,final String province, final String city, final String calling){
		String groupid = (String)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Connection connection = session.connection();
				CallableStatement cs = null;
				cs = connection.prepareCall("{call ?:=fun_groupid(?,?,?,?)}");
				cs.setString(2, gtime);
				cs.setString(3, province);
				cs.setString(4, city);
				cs.setString(5, calling);
				cs.registerOutParameter(1, OracleTypes.VARCHAR);
				cs.execute();
				return cs.getString(1);
			}
			
		});

		return groupid;
	}
	/**
  	 * 添加集团历史记录
  	 */ 
	public void addglog(TGrouplog glog) {
		this.getHibernateTemplate().save(glog);
		
	}
	/**
  	 * 添加集团历史记录
  	 */ 
	public void addhistory(TOldgroupmess hismess) {
		this.getHibernateTemplate().save(hismess);
		
	}
	/**
  	 * 修改无改变行业集团
  	 */
	public void updateGroup(Groups group) {
		this.getHibernateTemplate().update(group);
		
	}
	/**
  	 * 获取对应地区
  	 */
	public VipArea getArea(final Long area) {
		VipArea varea=(VipArea)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select a from VipArea a where a.NId=:nid";
				Query query=session.createQuery(hql);
				query.setLong("nid", area);
				
				return query.uniqueResult();
			}});
		return varea;
	}
	/**
  	 * 获取地区
  	 */
	public List getAreaList(final String city) {
		List list=this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select a from VipArea a where a.VCity=:city ";
				Query query=session.createQuery(hql);
				query.setString("city", city);
				return query.list();
			}});
		return list;
	}
	public VipArea getAreas(final Long nid) {
		VipArea varea=(VipArea)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select a from VipArea a where a.NId=:id";
				Query query=session.createQuery(hql);
				query.setLong("id", nid);
				
				return query.uniqueResult();
			}});
		return varea;
	}
	/**
     * 
     * 添加联系人
     */
	public void addLinker(TGrouplinker linker) {
		this.getHibernateTemplate().save(linker);
		
	}
	 /**
	    * 
	    * 修改联系人
	    */
	public void deleteLinker(TGrouplinker linker) {
		this.getHibernateTemplate().delete(linker);
		
	}
	/**
	    * 
	    * 删除联系人
	    */
	public void updateLinker(TGrouplinker linker) {
		this.getHibernateTemplate().update(linker);
		
	}
	/**
     * 
     * 得到联系人
     */
   
	public TGrouplinker getLinker(String lid) {
		return (TGrouplinker)this.getHibernateTemplate().get(TGrouplinker.class, lid);
		
	}
	/**
	 * 修改集团级别
	 */
	public void updateLevel(final Groups group) {
		this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="update Groups set grouplevel=:level where groupid=:id";
				Query query=session.createQuery(hql);
				query.setString("level", group.getGrouplevel());
				query.setString("id", group.getGroupid());
				query.executeUpdate();
				return null;
			}});
		
	}
	
	
	

}
