package com.test.news.timer;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import com.test.news.dao.NewsDao;
import com.test.news.get.CatchNewsInfo;
import com.test.news.get.CatchNewsList;
import com.test.news.get.GlobVar;
import com.test.news.vo.NewsTitleBean;

public class NewsTimer {

	public void CatchNews() {
		List list = catchNewsList.catchNewsList();

		for (Object obj : list) {
			NewsTitleBean titleBean = (NewsTitleBean) obj;
			NewsTitleBean newsInfo = catchNewsInfo.catchNewsInfo(titleBean);
			// 插入数据库
			newsDao.insertNewsInfo(newsInfo);
			titleBean = null;
		}
		// 把所有的图片入库
		Map imgMap = GlobVar.IMG_MAP;
		GlobVar.IMG_MAP = new Hashtable<String, String>();
		newsDao.insertNewsInfoImg(imgMap);
	}

	private NewsDao newsDao;

	private CatchNewsInfo catchNewsInfo; // 捕获新闻内容

	private CatchNewsList catchNewsList;// 捕获新闻列表

	public CatchNewsInfo getCatchNewsInfo() {
		return catchNewsInfo;
	}

	public void setCatchNewsInfo(CatchNewsInfo catchNewsInfo) {
		this.catchNewsInfo = catchNewsInfo;
	}

	public CatchNewsList getCatchNewsList() {
		return catchNewsList;
	}

	public void setCatchNewsList(CatchNewsList catchNewsList) {
		this.catchNewsList = catchNewsList;
	}

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}
}
