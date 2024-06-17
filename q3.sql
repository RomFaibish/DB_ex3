select DISTINCT institution, name
from institutions natural join authors natural join conferences
where country ='il' and totalcount >= 2 and conference LIKE 'sig%'
order by institution ASC, name ASC;