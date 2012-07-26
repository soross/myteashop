package test;

import java.util.Scanner;

public class WanNianLi {
	public static boolean runnian(int year)/* 定义变量 */
	{
		if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) /* 利用函数判断输入年份是闰年还是平年 */
			return true;
		else
			return false;
	}

	public static int day1(int year, int month) {
		int a[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };/* 定义数组确定12个月每个月的天数 */
		if (runnian(year)) /* 如果输入年份是闰年 */
			a[1] = 29;/* 二月29天 */
		return a[month - 1];
	}

	public static int day2(int year, int month, int day) {
		int i, sum = 0;
		for (i = 1; i < month; i++) {
			sum += day1(year, i);
		}
		sum += day;
		return sum;
	}

	public static int week1(int year, int month, int day) {
		int number = (year - 1) + (year - 1) / 4 - (year - 1) / 100
				+ (year - 1) / 400 + day2(year, month, day);
		number %= 7;
		return number;
	}

	public static String Week2(int number) {
		switch (number)/* 分类一周七天 */
		{
		case 0:
			return "星期日";
		case 1:
			return "星期一";
		case 2:
			return "星期二";
		case 3:
			return "星期三";
		case 4:
			return "星期四";
		case 5:
			return "星期五";
		case 6:
			return "星期六";
		default:
			return "错误!请您重新输入。";/* 不符和上面七种情况的报错提示 */
		}
	}

	public static void x1(int year, int month, int day) {
		int number = week1(year, month, day);
		if (runnian(year))
			System.out.print("闰年");/* 年份为闰年则输出“闰年“ */
		else
			System.out.print("平年");
		System.out.print(year + "年" + month + "月" + day + "日" + Week2(number)
				+ "\n\n");/* 按年 月 日输出结果 */
	}

	public static void x2(int year, int month) {
		int max, number, i, j = 1;
		max = day1(year, month);
		number = week1(year, month, 1);
		System.out.print(" 星期日 " + " 星期一 " + " 星期二" + " 星期三 " + " 星期四 "
				+ " 星期五 " + " 星期六 " + "\n");/* 按照间隔打印日历 */
		for (i = 0; i < number; i++) {
			System.out.print("        ");
		}
		while (j <= max) {
			System.out.print(j + "\t\t");
			if (i % 7 == 6) {
				System.out.print("\n");
			}
			i++;
			j++;
		}
		System.out.print("\n\n");
	}

	public static boolean x3(int year, int month, int day) {
		if (year < 0 || month < 1 || month > 12 || day < 1
				|| day > day1(year, month))/* 当输入植出现这些情况时 */
			return true;
		else
			return false;
	}

	public static void nianli(int year) {
		int i;
		System.out.print("\n");
		for (i = 1; i <= 12; i++) {
			if (runnian(year))
				System.out.print("闰年");
			else
				System.out.print("平年");
			System.out.print(year + "年" + i + "月" + "\n\n");
		}
	}

	public static void yueli(int year, int month) {
		if (runnian(year))
			System.out.print("闰年");
		else
			System.out.print("平年");
		System.out.print(year + "年" + month + "月" + "\n\n");
		x2(year, month);
	}

	public static void rili(int year, int month, int day) {
		System.out.print("\n");
		x1(year, month, day);
	}

	public static void main(String[] args) {
		int year, month, day, b;
		boolean a;
		Scanner sc = new Scanner(System.in);
		while (true) {
			System.out.print("\n\n\n\n");
			System.out
					.print("             **********************************************************\n\n");
			System.out
					.print("                             *                        *                   \n");
			System.out
					.print("                               欢迎进入万年历查询系统                   \n");
			System.out
					.print("                             *                        *                  \n\n");
			System.out
					.print("             **********************************************************\n\n\n");
			System.out.print("                  1 年历 2 月历 3 日历 4 退出\n");
			System.out.print("                  请输入您的选择<1~4>,按回车键确定: ");
			b = sc.nextInt();
			switch (b) {
			case 1:/* 选择1时 */
				System.out.print("\n请输入您要查的年份: ");/* 给出输入提示 */
				year = sc.nextInt();/* 输入查询的年份 */
				a = x3(year, 1, 1);
				if (a) {
					System.out.print("错误!请您重新输入。\n");/* 输入植异常时报错 */
					break;
				}
				nianli(year);
				break;
			case 2:/* 选择二时 */
				System.out.print("\n请输入您要查的年和月，年月之间用空格隔开: ");/* 给出输入提示 */
				year = sc.nextInt();
				month = sc.nextInt();/* 输入需要查询的年 月 */
				a = x3(year, month, 1);
				if (a) {
					System.out.print("错误!请您重新输入。\n");
					break;
				}
				yueli(year, month);
				break;
			case 3:/* 选择3时 */
				System.out.print("\n请输入您要查的年月日，年月日之间用空格隔开: ");/* 给出输入提示 */
				year = sc.nextInt();
				month = sc.nextInt();
				day = sc.nextInt();/* 输入年 月 日 */
				a = x3(year, month, day);
				if (a) {
					System.out.print("错误!请您重新输入。\n");/* 输入植异常时报错 */
					break;
				}
				rili(year, month, day);
				break;
			case 4:
				System.exit(0);
			default:
				System.out.print("错误!请您重新输入。\n\n");
			}
		}
	}

}
