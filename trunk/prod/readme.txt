mysql> SELECT
    ->   STR_TO_DATE('2010~10~22 20.55.09',
    ->               '%Y~%m~%d %k.%i.%s' ) A;
+---------------------+
| A                   |
+---------------------+
| 2010-10-22 20:55:09 |
+---------------------+
1 row in set (0.00 sec)

ע:
%W ��������(Sunday����Saturday)
%D ��Ӣ��ǰ׺���·ݵ�����(1st, 2nd, 3rd, �ȵȡ���
%Y ��, ����, 4 λ
%y ��, ����, 2 λ
%a ��д����������(Sun����Sat)
%d �·��е�����, ����(00����31)
%e �·��е�����, ����(0����31)
%m ��, ����(01����12)
%c ��, ����(1����12)
%b ��д���·�����(Jan����Dec)
%j һ���е�����(001����366)
%H Сʱ(00����23)
%k Сʱ(0����23)
%h Сʱ(01����12)
%I Сʱ(01����12)
%l Сʱ(1����12)
%i ����, ����(00����59)
%r ʱ��,12 Сʱ(hh:mm:ss [AP]M)
%T ʱ��,24 Сʱ(hh:mm:ss)
%S ��(00����59)
%s ��(00����59)
%p AM��PM
%w һ�������е�����(0=Sunday ����6=Saturday ��
%U ����(0����52), ���������������ڵĵ�һ��
%u ����(0����52), ��������һ�����ڵĵ�һ��
%% һ�����֡�%��




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
			}else if(tree.getSelectedItemId()=="csh_bluefolders")��
				tree.setImagePath("codebase/imgs/csh_bluefolders/");
				tree.refreshItem(0);
			��else if(tree.getSelectedItemId()=="csh_yellowbooks"){
				tree.setImagePath("codebase/imgs/csh_yellowbooks/");
				tree.refreshItem(0);
			}