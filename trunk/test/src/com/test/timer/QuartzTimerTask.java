package com.crm.timer;

import java.util.TimerTask;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class QuartzTimerTask extends TimerTask implements Job{

	public void run() {
		System.out.println("run.....222....");
	}
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		run();
	}

}
