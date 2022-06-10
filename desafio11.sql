select 
	a.song_name as nome_musica,
	case
		when b.song_name like '%Streets' then replace(b.song_name, "Streets" ,"Code Review")
		when b.song_name like '%Her Own' then replace(b.song_name, "Her Own" , "Trybe")
 		when b.song_name like '%Inner Fire' then replace(b.song_name, "Inner Fire" ,"Project")
 		when b.song_name like '%Silly' then replace(b.song_name, "Silly" ,"Nice")
		when b.song_name like '%Circus' then replace(b.song_name, "Circus", "Pull Request")
		else ''
	end as novo_nome
from songs as a
inner join songs as b
on a.song_id = b.song_id
-- group by novo_nome
having novo_nome != '';
