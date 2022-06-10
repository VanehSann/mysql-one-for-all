select distinct b.user_name as `usuario`,
if(date(max(a.played_date)) like '2021%', 'Usuário ativo', 'Usuário inativo') as `condicao_usuario`
from reproductions_history as a
inner join users as b
on a.user_id = b.user_id
group by b.user_name
order by usuario asc;
