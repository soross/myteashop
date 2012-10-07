package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.CollectDao;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.FileDao;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TFile;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class FileDaoImpl extends HibernateDaoSupport implements FileDao {
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(final TFile File){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TFile where Filetype='"+File.getFiletype()+"' ";
				
				if(null!=File.getFilename() && !"".equalsIgnoreCase(File.getFilename())){
					hql=hql+ " and Filename like '%"+File.getFilename()+"%'";
				}
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * 添加数据字典
	 * @param File
	 * @return
	 */
	public Boolean addFile(TFile File){
		this.getHibernateTemplate().save(File);		
		return true;
	}
	
	/**
	 * 删除数据字典
	 * @param File
	 * @return
	 */
	public Boolean deleteFile(final TFile File){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TFile where id=:id ";
				
				Query query = session.createQuery(hql);
				query.setLong("id", File.getId());
				
				query.executeUpdate();
				return true;
			}
		});
		
		
		return true;
	}
	
	/**
	 * 更新数据字典
	 * @param File
	 * @return
	 */
	public Boolean updateFile(TFile File){
		this.getHibernateTemplate().update(File);
		return true;
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchFile(Long id){
		return null;
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TFile seachFile(Long id){
		
		TFile File = (TFile)this.getHibernateTemplate().get(TFile.class, id);		
		return File;
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonFile(Long pid){
		return this.getHibernateTemplate().find("from TFile where pid=?", pid);
	}
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentFile(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TFile where pid=0";
				Query query = session.createQuery(hql);
				if(pageUtil!=null){
					query.setMaxResults(pageUtil.getPagesize());
					query.setFirstResult(pageUtil.pastart());
				}
				List list = (List)query.list();
				
				return list;
			}
		});		
		return list;
	}

	public List searchFile(final TFile File) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TFile where 1=1");
				if(null!=File && null!=File.getFilename() && !"".equals(File.getFilename())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=File && null!=File.getFilename() && !"".equals(File.getFilename())){	
					query.setString("name", File.getFilename());
				}
				
				List list = query.list();
				
				return list;
			}			
		});	
		
		return list;
	}

	public List getFileList(final PageUtil pageUtil,final  TFile File) {
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TFile where Filetype= '"+File.getFiletype()+"' ";
				if(null!=File.getFilename() && !"".equalsIgnoreCase(File.getFilename())){
					hql=hql+ " and Filename like '%"+File.getFilename()+"%'";
				}
				Query query =session.createQuery(hql);
				if(null!=pageUtil){
					query.setFirstResult(pageUtil.pastart());
					query.setMaxResults(pageUtil.getPagesize());
				}
				return query.list();
			}			
		});
		
		
	}
	
	
	

}
