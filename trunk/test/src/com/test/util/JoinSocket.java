package com.test.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.net.UnknownHostException;

public class JoinSocket
{
	private Socket serv;
	private Inputdata fromserver;
	private Outputdata toserver;

	private int headflag;

	public JoinSocket(String svip, int port, int head) throws Exception
	{
		this.headflag = 2; //2Ϊ����

		try
		{
			serv=new Socket(svip, port);
			serv.setSoTimeout(1200000);
		}
		catch(UnknownHostException uhe)
		{
			System.out.println("�ͻ��˷����쳣 1:"+uhe.toString());
			throw new Exception("ͨѶʧ��1:"+uhe.toString());
		}
		catch(IOException e)
		{
			System.out.println("�ͻ��˷����쳣 2: " + e.toString());
			throw new Exception("ͨѶʧ��2:" + e.toString());
		}/*���������������*/
		catch(Exception e)
		{
			System.out.println("�ͻ��˷����쳣 3: " + e.toString());
			throw new Exception("ͨѶʧ��3: " + e.toString());
		}

		fromserver=new Inputdata(serv.getInputStream(),head);
		toserver=new Outputdata(serv.getOutputStream(),head, this.headflag);

	}
	public String process(String sendline) throws Exception
	{
		String recvline;
		try
		{
			if(toserver.writeLine(sendline)!=0)
			{
				throw new Exception("���ͷ����������쳣");
			}

			recvline=fromserver.readLine();
		}
		catch(IOException e)
		{
			throw e;
		}
		catch(Exception e)
		{
			throw e;
		}
		
		return recvline;
	}
	
	public void close() {
		if(fromserver != null)
			try{
				fromserver.close();
			} catch(Exception e){
				
			}
		if(toserver != null)
			try{
				toserver.close();
			} catch(Exception e) {
				
			}
		if(serv != null)
			try{
				serv.close();
			} catch(Exception e){
				
			}
	}

	public class Inputdata extends BufferedInputStream
	{
		private byte[] bdat;
		private int head;
		private int len;
		private Exception inE;

		public Inputdata(InputStream in,int head)
		{
			super(in);
			this.head=head;
			bdat=new byte[this.head];
		}
		public String readLine() throws Exception
		{
			String indata;
			int ret=0;
			try
			{
				ret=read(bdat, 0, head);
			}
			catch(IOException ioe)
			{
				throw ioe;
			}

			indata=new String(bdat);
			len=(new Integer(indata.trim())).intValue();

			System.out.println("ʵ�ʽ������ݰ�ͷ <<[" + indata + "]");
			if(ret!=indata.length())
			{
				inE=new Exception("Input Data read head'len is not equals want");
				throw inE;
			}

			bdat=new byte[len];
			try
			{
				ret=read(bdat, 0, len);
			}
			catch(IOException ioe)
			{
				System.out.println("ioe : "+ioe.toString());
				throw ioe;
			}
			if(ret!=len || ret<=0)
			{
				inE=new Exception("Input Data length error");
				throw inE;
			}

			indata=new String(bdat);

			System.out.println("ʵ�ʽ������� <<[" + indata + "]");

			return indata;
		}
	}

	public class Outputdata extends BufferedOutputStream
	{
		private byte[] bdat;
		private int head_len;
		private int flag;
		private String outdata="";

		public Outputdata(OutputStream out,int head_len,int flag)
		{
			super(out);
			this.head_len=head_len;
			this.flag = flag;
		}

		public int writeLine(String outdata)
		{
			String tmp;
			int len_src;

			try
			{
				tmp = new String(outdata.getBytes("GB2312"), "ISO8859_1");
			}
			catch(UnsupportedEncodingException ex)
			{
				return -1;
			}

			len_src=tmp.length();
			if(this.flag == 0)							//�󲹿ո�
			{
				for(int i=0;i<(head_len-new Integer(len_src).toString().length());i++)
					this.outdata = this.outdata.concat(" ");

					this.outdata = this.outdata + new Integer(len_src).toString() + outdata;
			}
			else if(this.flag == 1)			//�Ҳ��ո�
			{
				for(int i=0;i<(head_len-new Integer(len_src).toString().length());i++)
					this.outdata = this.outdata.concat(" ");

				this.outdata = new Integer(len_src).toString() + this.outdata + outdata;
			}
			else										//����
			{
				for(int i=0;i<(head_len-new Integer(len_src).toString().length());i++)
					this.outdata = this.outdata.concat("0");

				this.outdata = this.outdata + new Integer(len_src).toString() + outdata;
			}


			len_src = len_src + head_len;
/*
			if(this.flag == 2)
			{
				this.outdata = "WB" + this.outdata;
				len_src += 2;
			}
*/
			System.out.println("ʵ�ʷ������� >>[" + this.outdata + "] ���� :=" +len_src);

			try
			{
				bdat=new byte[len_src];
				bdat=this.outdata.getBytes();
				//String indata=new String(bdat);
				this.write(bdat, 0, len_src) ;
				this.flush();
			}
			catch(IOException ioe)
			{
				System.out.println("���ͷ���������ʱ �쳣 : " + ioe.toString());
				return -1;
			}

			return 0;
		}
	}

	/*public static String getSptItemString(String inSptString, String sigItem, int Itempos, String sign)
	{

		String tmp="";
		String tmpItem="";
		String sbuf="";
		long lenth=0;
		int[] iflag=new int[3];
		int flag;
		int ih=0;
		int s=0;

		boolean bcont=true;
		boolean bflag=false;

		if(sign.length()!=1)
			return null;

		lenth=inSptString.length();

		for(int k=0; k<lenth; k++)
		{
			sbuf=inSptString.substring(k,k+1);
			if(sbuf.equals(sign)==true && bcont==true)
			{

				if(bflag==false && k!=lenth-1)
				{
					if(inSptString.substring(k+1,k+2).equals("[")==true)
					{
						bcont=false;
					}
				}

				if(ih==0)
				{
						iflag[1]=k;
						tmp=inSptString.substring(0,k);
						flag=0;
				}
				else
				{
					// iflag[1] ��¼��һ�ָ���λ��  iflag[2]��¼��ǰ�ָ���λ��
					iflag[2]=k;
					if(bflag==true && ih%2!=0)
					{
						tmp=inSptString.substring(iflag[1]+2,iflag[2]-1);

					}
					else
					{
						tmp=inSptString.substring(iflag[1]+1,iflag[2]);
					}
					iflag[1]=iflag[2];

					if(ih%2==0)
					{
						flag=1;
					}
					else
					{
						flag=2;
						bflag=false;
						//��������
						if(s==999)
						{
							return tmp;
						}
					}
				}
				// �жϴ����Ƿ���Ҫ��ѯ��������
				if(flag==0 || flag==1)
				{
					if(Itempos!=0)
					{
						tmpItem=sigItem+":"+Itempos;
					}
					else
					{
						tmpItem=sigItem;
					}

					if(tmpItem.equals(tmp)==true)
					{
						s=999;
					}
				}
				//�ָ���������
				ih++;
			}

			if(sbuf.equals("]")==true && bcont==false)
			{
					bcont=true;
					bflag=true;
			}

		}

		return null;
	}

	public static void main(String[] args)
	{
		JoinSocket1 JoinSocket1;
		String readline = "";
		String retcode = "";
		try
		{
			JoinSocket1 = new JoinSocket1("192.168.0.197", 6638, 6, 2, 9000);
			readline = JoinSocket1.process("02~1401~10~00001000099~1F~3~");
			retcode = getSptItemString(readline, "00", 0, "~");
			System.out.println("return code = "+ retcode);
		}
		catch(Exception e)
		{
			System.out.println("exception :::" + e.toString());
		}

	}*/
	 public static String getActString(String inActString, int Itempos, String spt) {
	        String tmp = "";
	        
	        if(inActString == null) {
	            return null;
	        }
	        
	        if(inActString.length() == 0) {
	            return "";
	        }
	        
	        int len = inActString.length();
	        int sit = 0;
	        int oldlen = 0;
	        
	        for(int i = 0; i<len; i++) {
	            tmp = inActString.substring(i, i+1);
	            if(tmp.equals(spt) == true) {
	                sit++;
	                if(sit == 1)
	                    tmp = inActString.substring(oldlen, i);
	                else
	                    tmp = inActString.substring(oldlen +1, i);
	                if(Itempos == sit)
	                    return tmp;
	                
	                oldlen = i;
	            }
	        }
	        
	        return null;
	    }
}