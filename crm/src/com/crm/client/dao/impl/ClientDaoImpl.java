package com.crm.client.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.jgroups.tests.adaptjms.Request;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.client.dao.inf.ClientDao;
import com.crm.client.po.TClient;
import com.crm.client.po.TClientallot;
import com.crm.client.po.TGradelog;
import com.crm.group.po.VipCity;
import com.crm.page.PageUtil;
import com.crm.pub.excel.DoExcelUtil;

public class ClientDaoImpl extends HibernateDaoSupport implements ClientDao {

	/**
	 * 取得日志记录数
	 * 
	 * @return
	 */
	public Integer getGradeLogCount(){
		return (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TGradelog";
				Query query = session.createQuery(hql);
				
				return query.uniqueResult();
			}
		});
	}
	
	/**
	 * 取得等级修改日志
	 * @param pageUtil
	 * @return
	 */
	public List searchGradeLog(final PageUtil pageUtil){
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql ="from TGradelog order by checkdate desc"; 
				Query query = session.createQuery(hql);
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}
		});
		
	}
	/**
	 * 调整客户登记
	 * 
	 * @param gradelog
	 * @return
	 */
	public Boolean updateClientGrade(final TGradelog gradelog) {
		this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				session.save(gradelog);
				String hql = "update TClient set grade="
						+ gradelog.getNewgrade() + " where phone="
						+ gradelog.getPhone();
				Query query = session.createQuery(hql);
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}

	/**
	 * 导出到Excel
	 * 
	 * @param phones
	 * @return
	 */
	public Boolean exportClient(String[] phones) {
		DoExcelUtil excelUtil = new DoExcelUtil();

		try {

			excelUtil.creatExcelFile("c:\\text.xls");
			excelUtil.openExcel("c:\\text.xls");

			StringBuffer sbf = new StringBuffer(
					"select * from t_clientinfo where phone in(");
			for (int i = 0; i < phones.length; i++) {
				sbf.append(phones[i] + ",");
			}
			sbf.append(")");

			excelUtil.exportToExcel(sbf.toString(), this.getHibernateTemplate()
					.getSessionFactory().openSession().connection());

		} catch (Exception e) {
			e.printStackTrace();
		}

		return true;
	}

	/**
	 * 根据条件查询客户列表
	 * 
	 * @param client
	 * @param map
	 * @param pageUtil
	 * @return
	 */
	public List searchClientList(final TClient client, final Map map,
			final PageUtil pageUtil) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TClient where 1=1 ");

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							hql.append(" and phone=:phone ");
						}
						if (null != client.getAddress()
								&& !"".equals(client.getAddress())) {
							hql.append(" and address like :address ");
						}
						if (null != client.getGrade()
								&& !"".equals(client.getGrade())
								&& 0 != client.getGrade()) {
							if (-1 != client.getGrade()) {
								hql.append(" and grade=:grade");
							} else {
								hql.append(" and grade=:grade");
							}
						}
						if(null != client.getLinkman()){
							hql.append(" and linkman=:linkman");
						}
						
						hql.append(" order by phone");

						Query query = session.createQuery(hql.toString());

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							query.setString("phone", client.getPhone());
						}
						if (null != client.getAddress()
								&& !"".equals(client.getAddress())) {
							query.setString("address", "%"
									+ client.getAddress() + "%");
						}
						if (null != client.getGrade()
								&& !"".equals(client.getGrade())
								&& 0 != client.getGrade()) {
							if (-1 != client.getGrade()) {
								query.setLong("grade", client.getGrade());
							}else{
								query.setLong("grade", 23);
							}
						}
						if(null != client.getLinkman()){
							query.setString("linkman", client.getLinkman());
						}
						
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						List list = query.list();
						return list;
					}
				});

		return list;
	}

	/**
	 * 取得总记录数
	 * 
	 * @param map
	 * @param client
	 * @return
	 */
	public Integer getCount(final TClient client, Map map) {
		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"select count(*) from TClient where 1=1 ");

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							hql.append(" and phone=:phone ");
						}
						if (null != client.getAddress()
								&& !"".equals(client.getAddress())) {
							hql.append(" and address like :address ");
						}
						if (null != client.getGrade()
								&& !"".equals(client.getGrade())
								&& 0 != client.getGrade()) {
							if (-1 != client.getGrade()) {
								hql.append(" and grade=:grade");
							} else {
								hql.append(" and grade=:grade");
							}
						}
						if(null!=client.getLinkman()){
							hql.append(" and linkeman = :linkeman");
						}
						Query query = session.createQuery(hql.toString());

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							query.setString("phone", client.getPhone());
						}
						if (null != client.getAddress()
								&& !"".equals(client.getAddress())) {
							query.setString("address", "%"
									+ client.getAddress() + "%");
						}
						if (null != client.getGrade()
								&& !"".equals(client.getGrade())
								&& 0 != client.getGrade()) {
							if (-1 != client.getGrade()) {
								query.setLong("grade", client.getGrade());
							}else{								
								query.setLong("grade", 23);								
							}
						}
						if(null!=client.getLinkman()){
							query.setString("linkman", client.getLinkman());
						}
						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});

		return count;
	}

	/**
	 * 取得总记录数
	 * 
	 * @param client
	 * @return
	 */
	public Integer getCount(final TClient client) {

		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"select count(*) from TClient where 1=1 ");
						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							hql.append(" and phone=:phone ");
						}
						if (null != client.getProvice()
								&& !"".equals(client.getProvice())) {
							hql.append(" and provice=:provice ");
						}
						if (null != client.getCity()
								&& !"".equals(client.getCity())) {
							hql.append(" and city=:city ");
						}
						if (null != client.getArea()
								&& !"".equals(client.getArea())) {
							hql.append(" and area=:area ");
						}

						Query query = session.createQuery(hql.toString());

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							query.setString("phone", client.getPhone());
						}
						if (null != client.getProvice()
								&& !"".equals(client.getProvice())) {
							query.setString("provice", client.getProvice()
									.toString());
						}
						if (null != client.getCity()
								&& !"".equals(client.getCity())) {
							String cityHql = "from VipCity where VCode=:code and VProvince=:pro";
							Query cityQuery = session.createQuery(cityHql);
							cityQuery.setString("code", client.getCity()
									.toString().substring(1, 4));
							cityQuery.setString("pro", client.getCity()
									.toString().substring(4, 6));
							VipCity newCity = (VipCity) cityQuery
									.uniqueResult();

							query.setLong("city", newCity.getNId());
						}
						if (null != client.getArea()
								&& !"".equals(client.getArea())) {
							query.setLong("area", client.getArea());
						}

						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});

		return count;
	}

	/**
	 * 添加客户基本信息
	 * 
	 * @param client
	 * @return
	 */
	public Boolean addClient(TClient client) {
		this.getHibernateTemplate().save(client);
		return true;

	}

	/**
	 * 删除基本信息
	 * 
	 * @param client
	 * @return
	 */
	public Boolean deleteClient(TClient client) {
		this.getHibernateTemplate().delete(client);
		return true;

	}

	/**
	 * 更新客户基本信息
	 * 
	 * @param client
	 * @return
	 */
	public Boolean updateClient(TClient client) {
		return null;

	}

	/**
	 * 查询客户列表
	 * 
	 * @param client
	 * @return
	 */
	public List searchClient(final TClient client, final PageUtil pageUtil) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TClient where 1=1 ");

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							hql.append(" and phone=:phone ");
						}
						if (null != client.getProvice()
								&& !"".equals(client.getProvice())) {
							hql.append(" and provice=:provice");
						}
						if (null != client.getCity()
								&& !"".equals(client.getCity())) {
							hql.append(" and city=:city");
						}
						if (null != client.getArea()
								&& !"".equals(client.getArea())) {
							hql.append(" and area=:area");
						}

						Query query = session.createQuery(hql.toString());

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							query.setString("phone", client.getPhone());
						}
						if (null != client.getProvice()
								&& !"".equals(client.getProvice())) {
							query.setString("provice", client.getProvice()
									.toString());
						}
						if (null != client.getCity()
								&& !"".equals(client.getCity())) {
							String cityHql = "from VipCity where VCode=:code and VProvince=:pro";
							Query cityQuery = session.createQuery(cityHql);
							cityQuery.setString("code", client.getCity()
									.toString().substring(1, 4));
							cityQuery.setString("pro", client.getCity()
									.toString().substring(4, 6));
							VipCity newCity = (VipCity) cityQuery
									.uniqueResult();

							query.setLong("city", newCity.getNId());
						}
						if (null != client.getArea()
								&& !"".equals(client.getArea())) {
							query.setLong("area", client.getArea());
						}

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						List list = query.list();
						return list;
					}
				});

		return list;
	}

	/**
	 * 取得一个客户 根据电话号码
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone) {

		return (TClient) this.getHibernateTemplate().get(TClient.class, phone);
	}

	/**
	 * 取得城市下的地区
	 * 
	 * @param
	 * @return
	 */
	public List searchAreaList(final String vcity) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from VipArea where VCity = :vcity";
						Query query = session.createQuery(hql);
						query.setString("vcity", vcity);
						return query.list();
					}
				});

		return list;

	}

	/**
	 * 取得某省份的城市列表
	 * 
	 * @param
	 * @return
	 */
	public List searchCityList(final String proCode) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from VipCity where VProvince = :proCode";
						Query query = session.createQuery(hql);
						query.setString("proCode", proCode);
						return query.list();
					}
				});

		return list;
	}

	/**
	 * 取得省份列表
	 * 
	 * @param phone
	 * @return
	 */
	public List searchProvinceList() {

		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from VipProvince";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});

		return list;
	}

	/**
	 * 查询客户列表
	 * 
	 * @param client
	 * @return
	 */
	public TClient searchClient(TClient client) {
		return (TClient) this.getHibernateTemplate().get(TClient.class,
				client.getPhone());
	}

	/**
	 * 更改是否为集团用户
	 * 
	 * @param client
	 * @return
	 */
	public Boolean updateIsGroup(final TClient client) {
		this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "update TClient set isgroup="
						+ client.getIsgroup() + " where phone="
						+ client.getPhone();
				Query query = session.createQuery(hql);
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}

	/**
	 * 系统管理可分配的用户列表
	 * 
	 * @param client
	 * @param pageUtil
	 * @return
	 */
	public List clientList(final TClient client, final PageUtil pageUtil) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
	      public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sql = new StringBuffer();
				sql.append("select c.phone as phone,c.name as name,c.type as type,c.code as code,c.linkman as linkman," +
						"f.fee as fee,s.vintegral as score,c.address as address,c.regdate as regdate from t_client c");
				sql.append(" left join (select a.phone,a.manager,a.state from t_clientallot a," +
				"(select phone,max(fdate) as fdate from t_clientallot group by phone) b where a.phone=b.phone and a.fdate=b.fdate) t on c.phone=t.phone");
				sql.append(" left join (select phone,sum(fullfee) as fee from t_fee " +
						"where to_char(feedate,'yyyymm') between to_char(add_months(sysdate,-3),'yyyymm') " +
						"and to_char(add_months(sysdate,-1),'yyyymm') group by phone) f on c.phone=f.phone ");
				sql.append(" left join (select phone,vintegral from t_total_score) s on c.phone=s.phone ");
				sql.append(" where c.isgroup='0' and c.grade=20 and c.linkman is null and (t.state='2' or t.manager is null)");
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	sql.append(" and c.phone like :phone");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	sql.append(" and f.fee>=:safee");
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	sql.append(" and f.fee<=:efee");
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	sql.append(" and s.vintegral>=:sascore");
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	sql.append(" and s.vintegral<=:endscore");
                }
                
                SQLQuery query = session.createSQLQuery(sql.toString());
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	query.setString("phone", "%"+client.getPhone()+"%");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	query.setLong("safee", client.getSafee());
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	query.setLong("efee", client.getEfee());
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	query.setLong("sascore", client.getSascore());
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	query.setLong("endscore", client.getEndscore());
                }
                query.setFirstResult(pageUtil.pastart());
                query.setMaxResults(pageUtil.getPagesize());
               query.addScalar("phone", Hibernate.STRING);
               query.addScalar("name", Hibernate.STRING);
               query.addScalar("type", Hibernate.STRING);
               query.addScalar("code", Hibernate.STRING);
               query.addScalar("linkman", Hibernate.STRING);
               query.addScalar("fee", Hibernate.LONG);
               query.addScalar("score", Hibernate.LONG);
               query.addScalar("address", Hibernate.STRING);
               query.addScalar("regdate", Hibernate.DATE);
		       return query.list();
		 }
		});
		return list;

	}

	/**
	 * 获取系统管理员可分配用户记录
	 * 
	 * @param client
	 * @return
	 */
	public int getClientCount(final TClient client) {
		Object count = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sql = new StringBuffer();
				sql.append("select count(c.phone) as a from t_client c");
				sql.append(" left join (select a.phone,a.manager,a.state from t_clientallot a," +
						"(select phone,max(fdate) as fdate from t_clientallot group by phone) b where a.phone=b.phone and a.fdate=b.fdate) t on c.phone=t.phone");
				sql.append(" left join (select phone,sum(fullfee) as fee from t_fee " +
						"where to_char(feedate,'yyyymm') between to_char(add_months(sysdate,-3),'yyyymm') " +
						"and to_char(add_months(sysdate,-1),'yyyymm') group by phone) f on c.phone=f.phone ");
				sql.append(" left join (select phone,vintegral from t_total_score) s on c.phone=s.phone ");
				sql.append(" where c.isgroup='0' and c.grade=20 and c.linkman is null and (t.state='2' or t.manager is null)");
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	sql.append(" and c.phone like :phone");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	sql.append(" and f.fee>=:safee");
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	sql.append(" and f.fee<=:efee");
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	sql.append(" and s.vintegral>=:sascore");
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	sql.append(" and s.vintegral<=:endscore");
                }
                
                SQLQuery query = session.createSQLQuery(sql.toString());
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	query.setString("phone", "%"+client.getPhone()+"%");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	query.setLong("safee", client.getSafee());
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	query.setLong("efee", client.getEfee());
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	query.setLong("sascore", client.getSascore());
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	query.setLong("endscore", client.getEndscore());
                }
                query.addScalar("a", Hibernate.INTEGER);
				return query.uniqueResult();
			}});
		return count==null?0:Integer.parseInt(count.toString());
	}
	
	   /**
     * 新增分配客户
     * @param allot
     */
    public void addClientAllot(final List list){
    	this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
			    for(Object obj:list){
			    	TClientallot allot = (TClientallot)obj;
			    	session.save(allot);
			    }
				return null;
			}});
    }
    
    /**
     * 查找相应客户经理要接收客户的列表
     * @param manager
     * @param pageUtil
     * @return
     */
    public List acceptList(final String manager,final TClientallot allot,final PageUtil pageUtil){
    	List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sql = new StringBuffer();
				sql.append("select {a.*} from t_clientallot a, ");
				sql.append("(select phone,max(fdate) as fdate from t_clientallot group by phone) b ");
				sql.append(" where a.phone=b.phone and a.fdate=b.fdate and a.state='0' and a.manager='"+manager+"'");
				if(allot.getPhone()!=null && !"".equals(allot.getPhone())){
					sql.append(" and a.phone like :phone");
				}
				
				if(allot.getSadate()!=null && !"".equals(allot.getSadate())){
					sql.append(" and a.fdate>=:sadate");
				}
				
				if(allot.getEdate()!=null && !"".equals(allot.getEdate())){
					sql.append(" and a.fdate<=:edate");
				}				
				SQLQuery query = session.createSQLQuery(sql.toString());
				if(allot.getPhone()!=null && !"".equals(allot.getPhone())){
					query.setString("phone", "%"+allot.getPhone()+"%");
				}
				
				if(allot.getSadate()!=null && !"".equals(allot.getSadate())){
					query.setTimestamp("sdate", allot.getSadate());
				}
				
				if(allot.getEdate()!=null && !"".equals(allot.getEdate())){
					query.setTimestamp("edate", allot.getEdate());
				}
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				query.addEntity("a", TClientallot.class);
				return query.list();
			}});
    	
    	return list;
    }
    
    /**
     * 查找相应客户经理要接收客户的记录数
     * @param manager
     * @param pageUtil
     * @return
     */
    public int acceptCount(final String manager,final TClientallot allot){
    	Object count = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sql = new StringBuffer();
				sql.append("select count(*) as c from t_clientallot a, ");
				sql.append("(select phone,max(fdate) as fdate from t_clientallot group by phone) b ");
				sql.append(" where a.phone=b.phone and a.fdate=b.fdate and a.state='0' and a.manager='"+manager+"'");
				
				if(allot.getPhone()!=null && !"".equals(allot.getPhone())){
					sql.append(" and a.phone like :phone");
				}
				
				if(allot.getSadate()!=null && !"".equals(allot.getSadate())){
					sql.append(" and a.fdate>=:sadate");
				}
				
				if(allot.getEdate()!=null && !"".equals(allot.getEdate())){
					sql.append(" and a.fdate<=:edate");
				}				
				SQLQuery query = session.createSQLQuery(sql.toString());
				if(allot.getPhone()!=null && !"".equals(allot.getPhone())){
					query.setString("phone", "%"+allot.getPhone()+"%");
				}
				
				if(allot.getSadate()!=null && !"".equals(allot.getSadate())){
					query.setTimestamp("sdate", allot.getSadate());
				}
				
				if(allot.getEdate()!=null && !"".equals(allot.getEdate())){
					query.setTimestamp("edate", allot.getEdate());
				}				
				
				query.addScalar("c", Hibernate.INTEGER);
				return query.uniqueResult();
			}
    		
    	});
    	return count==null?0:Integer.parseInt(count.toString());
    }
    
    /**
     * 修改维系人
     * @param allot
     */
    public void updateManager(final String[] phones,final String manager){
    	this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "update TClient set linkman=:manager where phone in (0";
				for(int i=0;i<phones.length;i++){
					hql=hql+","+phones[i];
				}
				hql=hql+")";
				Query query = session.createQuery(hql);
				query.setString("manager", manager);
				query.executeUpdate();
				return null;
			}});
    }
    
    /**
     * 修改客户经理分配状态
     * @param phones
     * @param manager
     * @param state
     */
    public void updateState(final Long[] ids,final String state){
    	this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "update TClientallot set state=:state,cdate=sysdate where id in (0";
				for(int i=0;i<ids.length;i++){
					hql=hql+","+ids[i];
				}
				hql=hql+")";
				Query query = session.createQuery(hql);
				query.setString("state", state);
				query.executeUpdate();
				return null;
			}});
    }

    /**
     * 获得可调配得客户列表
     * @return
     */
    public List deployList(final TClient client,final PageUtil pageUtil){
    	List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sql = new StringBuffer();
				sql.append("select c.phone as phone,c.name as name,c.type as type,c.code as code,c.linkman as linkman,f.fee as fee,s.vintegral as score,c.address as address,c.regdate as regdate from t_client c");
				sql.append(" left join (select a.phone,a.manager,a.state from t_clientallot a," +
				"(select phone,max(fdate) as fdate from t_clientallot group by phone) b where a.phone=b.phone and a.fdate=b.fdate) t on c.phone=t.phone");
				sql.append(" left join (select phone,sum(fullfee) as fee from t_fee " +
						"where to_char(feedate,'yyyymm') between to_char(add_months(sysdate,-3),'yyyymm') " +
						"and to_char(add_months(sysdate,-1),'yyyymm') group by phone) f on c.phone=f.phone ");
				sql.append(" left join (select phone,vintegral from t_total_score) s on c.phone=s.phone ");
				sql.append(" where t.state='1'");
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	sql.append(" and c.phone like :phone");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	sql.append(" and f.fee>=:safee");
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	sql.append(" and f.fee<=:efee");
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	sql.append(" and s.vintegral>=:sascore");
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	sql.append(" and s.vintegral<=:endscore");
                }
                
                SQLQuery query = session.createSQLQuery(sql.toString());
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	query.setString("phone", "%"+client.getPhone()+"%");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	query.setLong("safee", client.getSafee());
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	query.setLong("efee", client.getEfee());
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	query.setLong("sascore", client.getSascore());
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	query.setLong("endscore", client.getEndscore());
                }
                query.setFirstResult(pageUtil.pastart());
                query.setMaxResults(pageUtil.getPagesize());
                query.addScalar("phone", Hibernate.STRING);
                query.addScalar("name", Hibernate.STRING);
                query.addScalar("type", Hibernate.STRING);
                query.addScalar("code", Hibernate.STRING);
                query.addScalar("linkman", Hibernate.STRING);
                query.addScalar("fee", Hibernate.LONG);
                query.addScalar("score", Hibernate.LONG);
                query.addScalar("address", Hibernate.STRING);
                query.addScalar("regdate", Hibernate.DATE);
		        return query.list();
		 }
		});
		return list;

    }
    
    /**
     * 获得可调配得客户记录数
     * @return
     */
    public int getDeployCount(final TClient client){
    	Object count = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sql = new StringBuffer();
				sql.append("select count(c.phone) as a from t_client c");
				sql.append(" left join (select a.phone,a.manager,a.state from t_clientallot a," +
						"(select phone,max(fdate) as fdate from t_clientallot group by phone) b where a.phone=b.phone and a.fdate=b.fdate) t on c.phone=t.phone");
				sql.append(" left join (select phone,sum(fullfee) as fee from t_fee " +
						"where to_char(feedate,'yyyymm') between to_char(add_months(sysdate,-3),'yyyymm') " +
						"and to_char(add_months(sysdate,-1),'yyyymm') group by phone) f on c.phone=f.phone ");
				sql.append(" left join (select phone,vintegral from t_total_score) s on c.phone=s.phone ");
				sql.append(" where t.state='1'");
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	sql.append(" and c.phone like :phone");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	sql.append(" and f.fee>=:safee");
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	sql.append(" and f.fee<=:efee");
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	sql.append(" and s.vintegral>=:sascore");
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	sql.append(" and s.vintegral<=:endscore");
                }
                
                SQLQuery query = session.createSQLQuery(sql.toString());
                if(client.getPhone()!=null && !"".equals(client.getPhone())){
                	query.setString("phone", "%"+client.getPhone()+"%");
                }
                if(client.getSafee()!=null && client.getSafee()!=0){
                	query.setLong("safee", client.getSafee());
                }
                if(client.getEfee()!=null && client.getEfee()!=0){
                	query.setLong("efee", client.getEfee());
                }
                if(client.getSascore()!=null && client.getSascore()!=0){
                	query.setLong("sascore", client.getSascore());
                }
                if(client.getEndscore()!=null && client.getEndscore()!=0){
                	query.setLong("endscore", client.getEndscore());
                }
                query.addScalar("a", Hibernate.INTEGER);
				return query.uniqueResult();
			}
    		
    	});
    	return count==null?0:Integer.parseInt(count.toString());
    }
    
    /**
     * 新增导入数据
     * @param list
     */
    public void addImportClient(TClient client){
    	this.getHibernateTemplate().save(client);
    }
}
