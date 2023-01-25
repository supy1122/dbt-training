{{
    config(
        materialized='table'
    )
}}

--select * from RAW.GLOBALMART.PRODUCT
select * from {{ source('GLOBALMART', 'PRODUCT') }}