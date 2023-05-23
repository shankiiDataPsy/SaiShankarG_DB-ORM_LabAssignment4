select o.*, p.PRO_NAME from
`order` as o 
inner join supplier_pricing as sp on o.PRICING_ID=sp.PRICING_ID
inner join product as p on p.PRO_ID=sp.PRO_ID
where o.CUS_ID=2