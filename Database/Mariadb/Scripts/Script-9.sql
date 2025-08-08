/*select * from Label l join (select pl.label_id,pl.project_id from ProjectLabel pl 
join Project p on p.project_id = pl.project_id and p.project_id = 57 and p.page_id = 40) as y on y.label_id = l.label_id
group by l.label_id order by hierarchy*/

/*
select p.*, count(pl2.projectlike_id) as likes, if((count(pl3.projectlike_id)>0),'true','false') as mylike from Project p join ProjectLabel pl on pl.project_id = p.project_id and pl.label_id = 91
and p.public = 1 left join ProjectLike pl2 on pl2.project_id = p.project_id 
left join ProjectLike pl3 on pl3.project_id = p.project_id and pl3.user_id = 19 group by p.project_id order by p.project_created desc*/

/*select p.*,count(pl.projectlike_id) as likes, if(count(pl2.projectlike_id)>0,true,false) as mylike from Project p 
left join ProjectLike pl on pl.project_id = p.project_id
left join ProjectLike pl2 on pl2.project_id = p.project_id and pl2.user_id = 19
where p.public = 1 and p.page_id = 40
group by p.project_id 
order by project_created desc*/

/*select p.*,count(pl.projectlike_id) as likes,if(count(pl2.projectlike_id)>0,true,false) as mylike
from Project p left join ProjectLike pl on pl.project_id = p.project_id
left join ProjectLike pl2 on pl2.project_id = p.project_id and pl2.user_id = 19
where p.project_id = 58 and p.page_id = 41 and p.public = 1*/

/*
update Label l join PageUser p on p.page_id = l.page_id and p.user_id = 19 and l.label_id = 88 set l.hierarchy = 2*/
/*
SELECT count(upf.userpagefollow_id) as followers, upf2.userpagefollow_id from UserPageFollow upf left join UserPageFollow upf2 on upf2.page_id = upf.page_id and upf2.user_id = 19  where upf.page_id = 56

select p.*, count(upf.userpagefollow_id) as followers, if((count(upf2.userpagefollow_id)>0),true,false) as ifollow from Page p join UserPageFollow upf on upf.page_id = p.page_id 
where p.unique_pagename = 'tesla' join UserPageFollow upf2 on upf2.page_id = p.page_id and upf2.user_id = ?*/

select p.*, count(upf.userpagefollow_id) as followers, if((count(upf2.userpagefollow_id)>0),true,false) as ifollow from Page p join UserPageFollow upf on upf.page_id = p.page_id join UserPageFollow upf2 on upf2.page_id = p.page_id and upf2.user_id = 19 where p.unique_pagename = 'spacex'



