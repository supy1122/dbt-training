with orders as
(
select * from {{ ref('RAW_ORDERS') }}

)
select orderid,sum(ordersellingprice) as total_sp
from orders
group by orderid
having total_sp <0