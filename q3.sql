select institution, name
from institutions natural join authors natural join conferences
where country ='il' and totalcount >=2  and conference ='sig%'
order by institution ASC, name ASC;