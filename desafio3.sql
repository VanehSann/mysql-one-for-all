
select 
distinct a.user_name as `usuario`,
count(b.song_id) as `qtde_musicas_ouvidas`,
round(sum(c.song_duration/60), 2) as `total_minutos`
from users as a
inner join reproductions_history as b
on b.user_id = a.user_id
inner join songs as c
on c.song_id = b.song_id
group by usuario
order by `usuario` asc, `total_minutos` asc
;


-- select 
-- distinct c.user_name as `usuario`,
-- b.user_id like c.user_id as `qtde_musicas_ouvidas`,
-- a.song_name as `musica_nome`,
-- sum(a.song_duration) as `total_minutos`
-- from songs as a
-- inner join reproductions_history as b
-- on a.song_id = b.song_id
-- inner join users as c
-- on c.user_id = b.user_id
-- group by usuario, qtde_musicas_ouvidas, musica_nome
-- order by `usuario` asc, `total_minutos` asc
-- ;

-- select 
-- distinct c.user_name as `usuario`,
-- c.user_id as `qtde_musicas_ouvidas`,
-- sum(a.song_duration/60) as `total_minutos`
-- from songs as a
-- inner join reproductions_history as b
-- on a.song_id = b.song_id
-- inner join users as c
-- on c.user_id = b.user_id
-- group by usuario, qtde_musicas_ouvidas
-- order by `usuario` asc, `total_minutos` asc
-- ;
