/*SELECT count(upf.userpagefollow_id) as followers,upf.page_id from UserPageFollow upf 
left join UserPageFollow upf2 on upf2.page_id = upf.page_id and upf2.user_id = 10
where upf.page_id = 27*/

/*select upf2.userpagefollow_id, count(upf.userpagefollow_id) from UserPageFollow upf2 where upf2.user_id like 10 and upf2.page_id like 27
left join UserPageFollow upf on upf.page_id like 27*/
/*select r.* from Report r where projectorpage = 1 group by reference_id*/