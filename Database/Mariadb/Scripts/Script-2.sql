/*SELECT p.* from Page p join UserPageFollow upf on upf.page_id = p.page_id and upf.user_id = 12 order by upf.userpagefollow_created desc
SELECT x.*,y.likes, w.unique_pagename, w.pagename from Project x join(select ppg.page_id, pg.unique_pagename, pg.pagename from Project ppg join Page pg on ppg.page_id = pg.page_id group by ppg.page_id) as w on w.page_id = x.page_id join(select p.project_id, count(l.projectlike_id) as likes from Project p left join ProjectLike l on p.project_id = l.project_id group by p.project_id) as y on y.project_id = x.project_id order by (y.likes - 1)/POW(((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(x.project_created))/3600) + 2, 1.5) DESC*/


/*SELECT p.*,count(upf.userpagefollow_id) as follows from Page p left join UserPageFollow upf 
on upf.page_id = p.page_id and upf.user_id != 10 group by p.page_id
order by (count(upf.userpagefollow_id) - 1)/POW(((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(upf.userpagefollow_created))/3600) + 2, 1.5) desc*/

SELECT x.*, count(upf2.userpagefollow_id) as followers from Page x 
	join(SELECT p.page_id from Page p left join UserPageFollow upf on upf.page_id = p.page_id  group by p.page_id 
			EXCEPT 
		SELECT pp.page_id from Page pp inner join UserPageFollow uppf on uppf.page_id = pp.page_id 
			and uppf.user_id = 10 group by pp.page_id
	)as y on y.page_id = x.page_id
left join UserPageFollow upf2 on x.page_id = upf2.page_id group by x.page_id 
order by (count(upf2.userpagefollow_id) - 1)/POW(((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(upf2.userpagefollow_created))/3600) + 2, 1.5) desc

