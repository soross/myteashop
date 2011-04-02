package com.test.action.advertising;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.test.database.advertising.impl.AdvertisingDaoImpl;
import com.test.util.BasicAction;
@SuppressWarnings("unchecked")
public class AdvertisingAction extends BasicAction{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    private AdvertisingDaoImpl advertisingDao;
    
    public AdvertisingDaoImpl getAdvertisingDao()
    {
        return advertisingDao;
    }

    public void setAdvertisingDao(AdvertisingDaoImpl advertisingDao)
    {
        this.advertisingDao = advertisingDao;
    }

    public String show()
    {
        this.before();
        Map m = new HashMap();
        int code = 0;
        Map p = new HashMap();
        p.put("ADVERTISING_ID", "1");
        p.put("ADVERTISING_TITLE", "广告");
        p.put("ADVERTISING_URL", "http://www.baidu.com");
        p.put("ADVERTISING_IMAGE", "../../image/login/login_img.jpg");
        p.put("ADVERTISING_POSITIONID", "0");
        Map p1 = new HashMap();
        p1.put("ADVERTISING_ID", "2");
        p1.put("ADVERTISING_TITLE", "广告");
        p1.put("ADVERTISING_URL", "http://www.163.com");
        p1.put("ADVERTISING_IMAGE", "../../image/login/login_tit.jpg");
        p1.put("ADVERTISING_POSITIONID", "0");
        List list = new ArrayList();
        list.add(p);
        list.add(p1);
        try
        {
            Map mapC = new HashMap();
            mapC.put("POSITION_MARKERS", "0");
            List centerList = advertisingDao.getAdvertisingList(mapC);
            m.put("CENTERLIST", centerList);
//              m.put("CENTERLIST", list);
        }
        catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            code = 1;
        }
        
        try
        {
            Map mapU = new HashMap();
            mapU.put("POSITION_MARKERS", "1");
//            List upList = advertisingDao.getAdvertisingList(mapU);
//            m.put("UPLIST", upList);
            m.put("UPLIST", list);
        }
        catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            code = 1;
        }
        
        try
        {
            Map mapD = new HashMap();
            mapD.put("POSITION_MARKERS", "2");
//            List downList = advertisingDao.getAdvertisingList(mapD);
//            m.put("DOWNLIST",downList);
            m.put("DOWNLIST",list);
        }
        catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            code = 1;
        }
        
        try
        {
            Map mapL = new HashMap();
            mapL.put("POSITION_MARKERS", "3");
//            List lfetList = advertisingDao.getAdvertisingList(mapL);
//            m.put("LFETLIST", lfetList);
            m.put("LEFTLIST", list);
        }
        catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            code = 1;
        }
        
        try
        {
            Map mapR = new HashMap();
            mapR.put("POSITION_MARKERS", "4");
//            List rightList = advertisingDao.getAdvertisingList(mapR);
//            m.put("RIGHTLISTT", rightList);
            m.put("RIGHTLISTT", list);
        }
        catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            code = 1;
        }
        
        m.put("CODE", code);
      //json返回结果
        writeMapToJson(m);
        return null;
	}
   
    
}

