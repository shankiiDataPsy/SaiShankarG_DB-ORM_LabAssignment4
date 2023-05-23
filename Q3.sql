select x.CUS_GENDER, count(x.CUS_NAME) from
(
select c.CUS_NAME, c.CUS_GENDER from 
`order` o inner join customer c on o.CUS_ID=c.CUS_ID
where o.ORD_AMOUNT>=3000
group by c.CUS_NAME
) as x
group by x.CUS_GENDER
;
