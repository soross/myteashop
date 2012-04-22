update menu
set `desc`= REPLACE(`desc`,'华信','泛地缘'),
desc2 = `REPLACE`(desc2,'华信','泛地缘')
where `desc` like '%华信%'
or desc2 like '%华信%';