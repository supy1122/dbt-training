/*select *,
ordersellingprice - ordercostprice as profit
  
 --raw.globalmart.orders
 from ANALYTICS.dbt_sdey.RAW_ORDERS*/--initial coding

select o.orderid,o.orderdate,o.shipdate,o.shipmode,
o.ordersellingprice - o.ordercostprice as profit,
  c.customername,c.segment,c.country,
  p.category,p.productname,p.subcategory
 --raw.globalmart.orders
 from {{ ref('RAW_ORDERS') }} as o
 left join {{ ref('RAW_CUSTOMER') }} as c
 on o.customerid = c.customername
 left join {{ ref('RAW_PRODUCT') }} as p
 on o.productid = p.productid
