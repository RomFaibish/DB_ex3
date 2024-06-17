select name,year
from authors natural join conferences a1, authors natural join conferences a2
where a1.name= a2.name and a1.year=a2.year and a1.Subarea= 'ai'