select * from RAW.GLOBALMART.ORDERS

{{
    config(
        materialized='table'
    )
}}