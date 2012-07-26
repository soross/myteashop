package test;

import java.util.Scanner;

public class WanNianLi {
	public static boolean runnian(int year)/* ������� */
	{
		if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) /* ���ú����ж�������������껹��ƽ�� */
			return true;
		else
			return false;
	}

	public static int day1(int year, int month) {
		int a[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };/* ��������ȷ��12����ÿ���µ����� */
		if (runnian(year)) /* ���������������� */
			a[1] = 29;/* ����29�� */
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
		switch (number)/* ����һ������ */
		{
		case 0:
			return "������";
		case 1:
			return "����һ";
		case 2:
			return "���ڶ�";
		case 3:
			return "������";
		case 4:
			return "������";
		case 5:
			return "������";
		case 6:
			return "������";
		default:
			return "����!�����������롣";/* ������������������ı�����ʾ */
		}
	}

	public static void x1(int year, int month, int day) {
		int number = week1(year, month, day);
		if (runnian(year))
			System.out.print("����");/* ���Ϊ��������������ꡰ */
		else
			System.out.print("ƽ��");
		System.out.print(year + "��" + month + "��" + day + "��" + Week2(number)
				+ "\n\n");/* ���� �� �������� */
	}

	public static void x2(int year, int month) {
		int max, number, i, j = 1;
		max = day1(year, month);
		number = week1(year, month, 1);
		System.out.print(" ������ " + " ����һ " + " ���ڶ�" + " ������ " + " ������ "
				+ " ������ " + " ������ " + "\n");/* ���ռ����ӡ���� */
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
				|| day > day1(year, month))/* ������ֲ������Щ���ʱ */
			return true;
		else
			return false;
	}

	public static void nianli(int year) {
		int i;
		System.out.print("\n");
		for (i = 1; i <= 12; i++) {
			if (runnian(year))
				System.out.print("����");
			else
				System.out.print("ƽ��");
			System.out.print(year + "��" + i + "��" + "\n\n");
		}
	}

	public static void yueli(int year, int month) {
		if (runnian(year))
			System.out.print("����");
		else
			System.out.print("ƽ��");
		System.out.print(year + "��" + month + "��" + "\n\n");
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
					.print("                               ��ӭ������������ѯϵͳ                   \n");
			System.out
					.print("                             *                        *                  \n\n");
			System.out
					.print("             **********************************************************\n\n\n");
			System.out.print("                  1 ���� 2 ���� 3 ���� 4 �˳�\n");
			System.out.print("                  ����������ѡ��<1~4>,���س���ȷ��: ");
			b = sc.nextInt();
			switch (b) {
			case 1:/* ѡ��1ʱ */
				System.out.print("\n��������Ҫ������: ");/* ����������ʾ */
				year = sc.nextInt();/* �����ѯ����� */
				a = x3(year, 1, 1);
				if (a) {
					System.out.print("����!�����������롣\n");/* ����ֲ�쳣ʱ���� */
					break;
				}
				nianli(year);
				break;
			case 2:/* ѡ���ʱ */
				System.out.print("\n��������Ҫ�������£�����֮���ÿո����: ");/* ����������ʾ */
				year = sc.nextInt();
				month = sc.nextInt();/* ������Ҫ��ѯ���� �� */
				a = x3(year, month, 1);
				if (a) {
					System.out.print("����!�����������롣\n");
					break;
				}
				yueli(year, month);
				break;
			case 3:/* ѡ��3ʱ */
				System.out.print("\n��������Ҫ��������գ�������֮���ÿո����: ");/* ����������ʾ */
				year = sc.nextInt();
				month = sc.nextInt();
				day = sc.nextInt();/* ������ �� �� */
				a = x3(year, month, day);
				if (a) {
					System.out.print("����!�����������롣\n");/* ����ֲ�쳣ʱ���� */
					break;
				}
				rili(year, month, day);
				break;
			case 4:
				System.exit(0);
			default:
				System.out.print("����!�����������롣\n\n");
			}
		}
	}

}
