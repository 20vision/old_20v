/*select page_id from UserPageFollow where user_id like 19*/

/*select p.*,count(pl.projectlike_id) as likes, if(count(pl2.projectlike_id)>0,true,false) as mylike,
pg.unique_pagename as unique_pagename,pg.pagename as pagename
from Project p join UserPageFollow up on up.page_id = p.page_id and up.user_id = 19
join Page pg on pg.page_id = p.page_id
left join ProjectLike pl on pl.project_id = p.project_id
left join ProjectLike pl2 on pl2.project_id = p.project_id and pl2.user_id = 19
where p.public = 1 and p.restricted = 0 and pg.restricted = 0
group by p.project_id order by p.project_created desc*/

/*update Page set restricted = 0 where page_id = 41

update Project set restricted = 1 where project_id = 58
SELECT p.*,count(upf2.page_id)  as followers, if(count(upf.userpagefollow_id)>0,true,false) as ifollow from Page p 
join UserPageFollow upf on upf.page_id = p.page_id and upf.user_id = 19 
left join UserPageFollow upf2 on upf2.page_id = p.page_id where p.restricted = 0 group by p.page_id order by upf.userpagefollow_created desc
*/


