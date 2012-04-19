mysql> SELECT
    ->   STR_TO_DATE('2010~10~22 20.55.09',
    ->               '%Y~%m~%d %k.%i.%s' ) A;
+---------------------+
| A                   |
+---------------------+
| 2010-10-22 20:55:09 |
+---------------------+
1 row in set (0.00 sec)

注:
%W 星期名字(Sunday……Saturday)
%D 有英语前缀的月份的日期(1st, 2nd, 3rd, 等等。）
%Y 年, 数字, 4 位
%y 年, 数字, 2 位
%a 缩写的星期名字(Sun……Sat)
%d 月份中的天数, 数字(00……31)
%e 月份中的天数, 数字(0……31)
%m 月, 数字(01……12)
%c 月, 数字(1……12)
%b 缩写的月份名字(Jan……Dec)
%j 一年中的天数(001……366)
%H 小时(00……23)
%k 小时(0……23)
%h 小时(01……12)
%I 小时(01……12)
%l 小时(1……12)
%i 分钟, 数字(00……59)
%r 时间,12 小时(hh:mm:ss [AP]M)
%T 时间,24 小时(hh:mm:ss)
%S 秒(00……59)
%s 秒(00……59)
%p AM或PM
%w 一个星期中的天数(0=Sunday ……6=Saturday ）
%U 星期(0……52), 这里星期天是星期的第一天
%u 星期(0……52), 这里星期一是星期的第一天
%% 一个文字“%”




else if(tree.getSelectedItemId()=="csh_vista"){
				tree.setImagePath("codebase/imgs/csh_vista/");
				tree.refreshItem(0);
			}else if(tree.getSelectedItemId()=="csh_bluebooks"){
				tree.setImagePath("codebase/imgs/csh_bluebooks/");
				tree.refreshItem(0);
			}else if(tree.getSelectedItemId()=="csh_winstyle"){
				tree.setImagePath("codebase/imgs/csh_winstyle/");
				tree.refreshItem(0);
			}else if(tree.getSelectedItemId()=="csh_scbrblue"){
				tree.setImagePath("codebase/imgs/csh_scbrblue/");
				tree.refreshItem(0);
			}else if(tree.getSelectedItemId()=="csh_bluefolders")｛
				tree.setImagePath("codebase/imgs/csh_bluefolders/");
				tree.refreshItem(0);
			｝else if(tree.getSelectedItemId()=="csh_yellowbooks"){
				tree.setImagePath("codebase/imgs/csh_yellowbooks/");
				tree.refreshItem(0);
			}