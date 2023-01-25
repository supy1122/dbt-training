

{{
    config(
        materialized='table'
    )
}}

--select * from RAW.GLOBALMART.ORDERS
select * from {{ source('GLOBALMART', 'ORDERS') }}