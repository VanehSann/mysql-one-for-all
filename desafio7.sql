
select c.artist_name "artista",
b.album_name as "album",
count(a.user_id) as "seguidores"
from followed_artists as a

inner join artists as c
on c.artist_id = a.artist_id

inner join albums as b
on b.artist_id = c.artist_id

group by album, artista
order by seguidores desc, artista asc, album asc
;
