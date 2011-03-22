package com.test.news.dao.impl;

import java.util.Map;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.test.news.dao.NewsDao;
import com.test.news.vo.NewsTitleBean;

@SuppressWarnings("unchecked")
public class NewsDaoImpl extends SqlMapClientDaoSupport implements NewsDao {

	public void insertNewsInfo(NewsTitleBean newsInfo) {
		getSqlMapClientTemplate().insert("");
	}

	public void insertNewsInfoImg(Map imgMap) {
		getSqlMapClientTemplate().insert("");
	}

}
