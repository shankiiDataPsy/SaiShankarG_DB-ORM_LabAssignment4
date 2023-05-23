
(
select p.PRO_ID, p.PRO_NAME, o.ORD_DATE from 
product p 
inner join supplier_pricing sp on sp.PRO_ID=p.PRO_ID 
inner join `order` as o on o.PRICING_ID=sp.PRICING_ID
where o.ORD_DATE>'2021-10-05'
);
