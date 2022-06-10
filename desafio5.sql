select a.song_name as `cancoes`,
count(b.song_id) as `reproducoes`
from songs as a
inner join reproductions_history as b
on a.song_id = b.song_id
group by a.song_name
 having count(b.song_id) > 1
-- order by cancoes desc
 limit 2;
