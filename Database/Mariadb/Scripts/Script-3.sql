SELECT p.*,count(upf2.page_id) as followers from `20Vision`.Page p join `20Vision`.UserPageFollow upf 
on upf.page_id = p.page_id and upf.user_id = 10 left join `20Vision`.UserPageFollow upf2 on upf2.page_id = p.page_id group by p.page_id 
order by upf.userpagefollow_created desc