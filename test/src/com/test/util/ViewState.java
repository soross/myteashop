package com.test.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class ViewState extends HashMap<String, String>  {
	
	public String ToRequest() throws IOException
	{
		String res = "";
		Set<String> set = this.keySet();
		for(String s : set)
		{
			res += "[" + s + "::" + this.get(s) + "]";
		}

		//Ñ¹Ëõ
	    ByteArrayOutputStream out = new ByteArrayOutputStream();
	    GZIPOutputStream gzip = new GZIPOutputStream(out);
	    gzip.write(res.getBytes());
	    gzip.close();

	    //×ªbase64
		BASE64Encoder encoder = new BASE64Encoder();
		res = encoder.encodeBuffer(out.toByteArray());		
		res = res.replace("\r", "").replace("\n", "==C").replace("+", "==J");
		return res;
	}
	
	public ViewState()
	{
		super();
	}
	
	public ViewState(String s)
	{
		super();
		if (StringUtils.isEmpty(s))
		{
			return;
		}
		try
		{
			//base64½âÂë
			s = s.replace("==C", "\r\n").replace("==J", "+");
	
			BASE64Decoder decoder = new BASE64Decoder();
		    ByteArrayInputStream in = new ByteArrayInputStream(decoder.decodeBuffer(s));
		    GZIPInputStream gunzip = new GZIPInputStream(in);
		    
		    //½âÑ¹Ëõ
		    byte[] buffer = new byte[256];
		    int n;
		    ByteArrayOutputStream out = new ByteArrayOutputStream();
		    while ((n = gunzip.read(buffer)) >= 0) {
		      out.write(buffer, 0, n);
		    }
			
			String src = out.toString();
			src = src.substring(1, src.length()-1);
			List<String> list = StringUtils.stringToList(src, "][");
			for(String sub : list)
			{
				String[] sArray = sub.split("::");
				this.put(sArray[0], (sArray.length>1? sArray[1]:""));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}