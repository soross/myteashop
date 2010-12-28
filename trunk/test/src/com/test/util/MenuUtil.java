package com.test.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 菜单递归工具类
 * @author fanml
 *
 */
@SuppressWarnings("unchecked")
public class MenuUtil
{
    /**
     * 菜单递归方法
     * @param menulist  表查询出的菜单list
     * @param pid       父类ID
     * @param idName    表中自身ID名称
     * @param pidName   表中父类ID名称
     * @param listName  存储的list名称
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
