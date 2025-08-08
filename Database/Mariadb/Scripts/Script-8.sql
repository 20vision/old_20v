/*select if(p.restricted = 1,true,false) as pagerestriction, if(pr.restricted = 1,true,false) as projectrestricted
from Page p left join Project pr on pr.page_id = p.page_id and pr.project_id = 58
where p.page_id = 41*/

/*update Page set restricted = 1 where page_id = 41*/