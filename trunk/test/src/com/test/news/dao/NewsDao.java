package com.test.news.dao;

import java.util.Map;

import com.test.news.vo.NewsTitleBean;

public interface NewsDao {
	// ������������
	public void insertNewsInfo(NewsTitleBean newsInfo);

	// ��������ͼƬ
	public void insertNewsInfoImg(Map imgMap);
}
