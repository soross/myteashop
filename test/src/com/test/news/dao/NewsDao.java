package com.test.news.dao;

import java.util.Map;

import com.test.news.vo.NewsTitleBean;

public interface NewsDao {
	// 插入新闻内容
	public void insertNewsInfo(NewsTitleBean newsInfo);

	// 插入新闻图片
	public void insertNewsInfoImg(Map imgMap);
}
