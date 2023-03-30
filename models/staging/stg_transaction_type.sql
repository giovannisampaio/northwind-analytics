with source as (
   select * from {{ source('northwind','transaction_type')}}
)
select * from source
