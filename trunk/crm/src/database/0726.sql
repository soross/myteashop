update t_power set url='/login.do?task=relogin' where powername='重新登入';
update t_power set url='/login.do?task=exit' where powername='退出系统';
update t_power set url='/login.do?task=notepad' where powername='记事本';
update t_power set url='/login.do?task=calc' where powername='计算器';
update t_power set url='/login.do?task=winmsd' where powername='系统主机信息';
update t_power set url='/login.do?task=toCheckDate' where powername='系统时间校准';
