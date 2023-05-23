select * from supplier where SUPP_ID in
(
select SUPP_ID from supplier_pricing group by SUPP_ID
having count(PRICING_ID) > 2
);