select b.artist_name "artista",
a.album_name as "album"
from albums as a
inner join artists as b
on b.artist_id = a.artist_id
where b.artist_name like "Walter Phoenix"
order by artista asc, album asc
;
