/*select rp.*,rl.* from Reply rp left join ReplyLike rl on rl.reply_id = rp.reply_id where rp.post_reference_id like 35 and rp.type = 0*/
/*SELECT x.*,y.likes from Project x join(select p.project_id, count(l.projectlike_id) as likes from Project p left join ProjectLike l on p.project_id = l.project_id group by p.project_id) as y on y.project_id = x.project_id order by (y.likes - 1)/POW(((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(x.project_created))/3600) + 2, 1.5) DESC
*/
select * from DiscussionPost where project_id like 9 order by post_created desc
/*
SELECT x.*,y.likes from Reply x join(select p.reply_id, count(l.replylike_id) as likes from Reply p left join ReplyLike l on p.reply_id = l.reply_id and l.type = ? group by p.reply_id) as y on y.reply_id = x.reply_id and x.post_reference_id like ? and x.type = ? order by (y.likes - 1)/POW(((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(x.reply_created))/3600) + 2, 1.5) DESC
*/