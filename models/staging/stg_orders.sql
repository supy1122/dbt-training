/*select *,
ordersellingprice - ordercostprice as profit
  
 --raw.globalmart.orders
 from raw.globalmart.ORDERS*/--initial coding

select o.orderid,o.orderdate,o.shipdate,o.shipmode,
o.ordersellingprice - o.ordercostprice as orderprofit,
  c.customername,c.segment,c.country,o.customerid cid,c.customerid,
  p.productid,p.category,p.productname,p.subcategory
 --raw.globalmart.orders
 from {{ ref('RAW_ORDERS') }} as o
 left join {{ ref('RAW_CUSTOMER') }} as c
 on cid = c.customerid
 left join {{ ref('RAW_PRODUCT') }} as p
 on o.productid = p.productid
