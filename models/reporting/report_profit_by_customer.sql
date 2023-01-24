select customerid,segment,country,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by customerid,segment,country

--select customerid,segment,country from {{ ref('stg_orders') }}
