package com.test.util;

import java.io.PrintStream;

public class RandomUtils
{
  public static String generateRandomNumberStr(int length)
  {
    if ((length < 1) || (length > 9)) {
      throw new IllegalArgumentException();
    }
    char[] randomChar = new char[length];

    for (int i = 0; i < length; )
    {
      double rand = Math.random() * 10.0D;
      int num = (int)(rand + 48.0D);
      if ((num >= 48) && (num <= 57)) {
        randomChar[i] = (char)num;
        ++i;
      }
    }

    return new String(randomChar);
  }

  public static int generateRandomNumber(int length)
  {
    return Integer.parseInt(generateRandomNumberStr(length));
  }

  public static String generateRandomString(int length)
  {
    if (length < 1) {
      throw new IllegalArgumentException();
    }
    char[] randomChar = new char[length];

    for (int i = 0; i < length; )
    {
      double rand = Math.random() * 74.0D;
      int num = (int)(rand + 48.0D);

      if (((num >= 48) && (num <= 57)) || ((num >= 65) && (num <= 90)) || ((num >= 97) && (num <= 122))) {
        randomChar[i] = (char)num;
        ++i;
      }
    }

    return new String(randomChar);
  }

  public static String generateFilterRandomString(int length)
  {
    return generateRandomString(length).replace("I", "i").replace("l", "L").replace("O", "o").replace("0", "o");
  }

  public static void main(String[] args) {
    for (int i = 0; i < 100; ++i) {
      System.out.println(generateRandomNumber(9));
    }
    System.out.println('9');
    System.out.println(generateFilterRandomString(4));
  }
}
