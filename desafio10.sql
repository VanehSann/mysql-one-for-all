
select 
	c.song_name as `nome`,
	count(b.song_id) as `reproducoes` 
from users as a
inner join reproductions_history as b
on a.user_id = b.user_id
inner join songs as c
on b.song_id = c.song_id
where a.plan_id = 1 or a.plan_id = 4
group by c.song_name
order by c.song_name asc, reproducoes desc 
;

