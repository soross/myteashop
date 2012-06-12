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
 * ʵ���� GroupDaoImpl
 * ʵ�ּ��� ����ɾ���ģ���
 * @version 0.5
 * @author hyq $2009/10/26
 */
public class GroupDaoImpl extends HibernateDaoSupport implements GroupDao{
	
	private Connection con = null;

	private WritableSheet sheet = null;

	private WritableWorkbook book;
	
	/**
	 * ��Ӽ���
	 */
	public void addGroup(Groups group) {
		this.getHibernateTemplate().save(group);
	}
	/**
 	 * ɾ������
 	 */
	public void deleteGroup(Groups group) {
		this.getHibernateTemplate().delete(group);
		
	}
	/**
  	 * ��ȡ��������
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
 	 * ����userid�����Ҽ�����Ϣ
 	 * @return Groups
 	 */
	public Groups getGroup(String groupid) {
		
		return (Groups)this.getHibernateTemplate().get(Groups.class, groupid);
	}
	/**
 	 * ��ѯ����
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
 	 * �޸ļ���
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
  	 * ��ȡ����
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
	 * ��ȡ��ҵ
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
	 * ��ȡʡ��
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
	 * ��ȡ��Ӧ����
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
	 * ��ȡ��Ӧ��ҵ�Ͷ�Ӧ����
	 */
	public TData getData(Long data) {
		return (TData)this.getHibernateTemplate().get(TData.class, data);
	}
	
	/**
   	 * ��ȡ��Ӧʡ��
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
   	 * ��ȡ��Ӧ����
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
  	 * �޸ļ���״̬
  	 */
     
	public void updateState(final Groups group) {
		Groups groups=(Groups)this.getHibernateTemplate().get(Groups.class, group.getGroupid());
		groups.setState(group.getState());
		this.getHibernateTemplate().update(groups);
		
	}
	/**
  	 * �õ�������һ��id
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
  	 * ��Ӽ�����ʷ��¼
  	 */ 
	public void addglog(TGrouplog glog) {
		this.getHibernateTemplate().save(glog);
		
	}
	/**
  	 * ��Ӽ�����ʷ��¼
  	 */ 
	public void addhistory(TOldgroupmess hismess) {
		this.getHibernateTemplate().save(hismess);
		
	}
	/**
  	 * �޸��޸ı���ҵ����
  	 */
	public void updateGroup(Groups group) {
		this.getHibernateTemplate().update(group);
		
	}
	/**
  	 * ��ȡ��Ӧ����
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
  	 * ��ȡ����
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
     * �����ϵ��
     */
	public void addLinker(TGrouplinker linker) {
		this.getHibernateTemplate().save(linker);
		
	}
	 /**
	    * 
	    * �޸���ϵ��
	    */
	public void deleteLinker(TGrouplinker linker) {
		this.getHibernateTemplate().delete(linker);
		
	}
	/**
	    * 
	    * ɾ����ϵ��
	    */
	public void updateLinker(TGrouplinker linker) {
		this.getHibernateTemplate().update(linker);
		
	}
	/**
     * 
     * �õ���ϵ��
     */
   
	public TGrouplinker getLinker(String lid) {
		return (TGrouplinker)this.getHibernateTemplate().get(TGrouplinker.class, lid);
		
	}
	/**
	 * �޸ļ��ż���
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
