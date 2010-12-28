package com.test.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * �˵��ݹ鹤����
 * @author fanml
 *
 */
@SuppressWarnings("unchecked")
public class MenuUtil
{
    /**
     * �˵��ݹ鷽��
     * @param menulist  ���ѯ���Ĳ˵�list
     * @param pid       ����ID
     * @param idName    ��������ID����
     * @param pidName   ���и���ID����
     * @param listName  �洢��list����
     * @return
     */
    public  List checkMenu(List menulist,int pid,String idName,String pidName,String listName)
    {
        List list = new ArrayList();
        for(int i=0;i<menulist.size();i++)
        {
            Map map = (HashMap)menulist.get(i);
            if(pid==0)
            {
                if(Integer.valueOf(map.get(pidName).toString())==0)
                {
                    List slist = this.checkMenu(menulist,Integer.valueOf(map.get(idName).toString()),idName,pidName,listName);
                    map.put(listName, slist);
                    list.add(map);
                }
                else
                {
                    if(Integer.valueOf(map.get(pidName).toString())==pid)
                    {
                        List slist = this.checkMenu(menulist,Integer.valueOf(map.get(idName).toString()),idName,pidName,listName);
                        map.put(listName, slist);
                        list.add(map);
                    }
                }
            }
            else
            {
                if(Integer.valueOf(map.get(pidName).toString())==pid)
                {
                    List slist = this.checkMenu(menulist,Integer.valueOf(map.get(idName).toString()),idName,pidName,listName);
                    map.put(listName, slist);
                    list.add(map);
                }
            }
            
        }
        return list;
    }
}
