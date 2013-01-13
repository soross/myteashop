package com.crm.tool;


public  class StringUtil {
	public static String trimByStringBuffer(String str){
		StringBuffer sfr = new StringBuffer(str);   
        int c = 0;   
        for (int i = 0; i <sfr.length(); i++) {   
            if (sfr.charAt(i) != ' ') {   
                if (c > 0) {   
                    sfr.delete(0, i);   
                    sfr.reverse();   
                    return sfr.toString();   
                }   
                sfr.delete(0, i);   
                i = 0;   
                c += 1;   
                sfr.reverse();   
            }   
        }   
        return str;  		
	}
	public static String trimByChar(String str){
		char[] cArray = str.toCharArray();   
        int index = 0;   
        for (int i = 0; i < cArray.length; i++) {   
            if (cArray[i] != ' ') {   
                index = i;   
                break;   
            }   
        }   
        char[] tArray1 = new char[cArray.length - index];   
        for (int i = 0; i < cArray.length; i++) {   
            if (index + i < cArray.length) {   
                tArray1[i] = cArray[index + i];   
            }   
        }   
        for (int i = tArray1.length - 1; i >=0; i--) {   
            if (tArray1[i] != ' ') {   
                index = i;   
                break;   
            }   
        }   
        char[] tArray = new char[index + 1];   
        for (int i = 0; i < index + 1; i++) {   
            tArray[i] = tArray1[i];   
        }   
        return new String(tArray);  
	}
	
	public static String toString(String txt) {
		return StringUtil.toString(txt, "");
	}
	
	public static String toString(Object obj) {
		return StringUtil.toString(obj, "");
	}
	
	public static String toString(Object obj, Object str) {
		return StringUtil.toString(obj, str + "");
	}
	
	public static String toString(Object obj, String str) {
		return MatchUtil.isEmpty(obj) ? str: obj + "";
	}
}
