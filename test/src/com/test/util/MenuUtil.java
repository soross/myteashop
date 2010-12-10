package com.test.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MenuUtil
{

    public  List checkMenu(List menulist,int pid)
    {
        List list = new ArrayList();
        for(int i=0;i<menulist.size();i++)
        {
            Map map = (HashMap)menulist.get(i);
            if(pid==0)
            {
                if(Integer.valueOf(map.get("PID").toString())==0)
                {
                    List slist = this.checkMenu(menulist,Integer.valueOf(map.get("ID").toString()));
                    map.put("SMENU", slist);
                    list.add(map);
                }
                else
                {
                    if(Integer.valueOf(map.get("PID").toString())==pid)
                    {
                        List slist = this.checkMenu(menulist,Integer.valueOf(map.get("ID").toString()));
                        map.put("SMENU", slist);
                        list.add(map);
                    }
                }
            }
            else
            {
                if(Integer.valueOf(map.get("PID").toString())==pid)
                {
                    List slist = this.checkMenu(menulist,Integer.valueOf(map.get("ID").toString()));
                    map.put("SMENU", slist);
                    list.add(map);
                }
            }
            
        }
        return list;
    }
}
