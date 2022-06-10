select
count(a.user_id) as `quantidade_musicas_no_historico`
from users as a
inner join reproductions_history as b
on b.user_id = a.user_id
where a.user_name like "Bill"
;
