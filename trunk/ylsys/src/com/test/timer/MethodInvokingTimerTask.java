package com.test.timer;

import com.test.news.timer.NewsTimer;

public class MethodInvokingTimerTask {
	public void run() {
		System.out.println("run...333..");
		//��������
		NewsTimer timer = new NewsTimer();
		timer.CatchNews();
	}
}
