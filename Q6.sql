select c.CAT_ID, c.CAT_NAME, p.PRO_NAME, sp.SUPP_PRICE from 
product p inner join supplier_pricing sp on p.PRO_ID=sp.PRO_ID 
inner join category c on c.CAT_ID=p.CAT_ID 
where sp.SUPP_PRICE in 
(
select MIN(sp.SUPP_PRICE) from 
-- select * from
category c inner join product p on c.CAT_ID = p.CAT_ID
inner join supplier_pricing sp on p.PRO_ID = sp.PRO_ID
group by c.CAT_ID
)