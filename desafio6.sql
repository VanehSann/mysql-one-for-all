select 
min(a.plan_price) as "faturamento_minimo",
max(a.plan_price) as "faturamento_maximo",
round(avg(a.plan_price), 2) as  "faturamento_medio",
sum(a.plan_price) as "faturamento_total"
 from plans as a
 inner join users as b
 on a.plan_id = b.plan_id;
