#!/bin/bash

# Define the list of model names
models=(
    "stg_customer"
    "stg_employees"
    "stg_employee_privileges"
    "stg_privileges"
    "stg_transaction_type"
    "stg_shippers"
    "stg_order_tax_status"
    "stg_order_status"
    "stg_orders"
    "stg_products"
    "stg_purchase_order"
    "stg_suppliers"
    "stg_inventory_transactions"
    "stg_invoices"
    "stg_order_detail_status"
    "stg_order_details"
    "stg_purchase_order_details"
)

# Loop over the models and create the SQL files
for model in "${models[@]}"
do
    # Extract the source name from the model name by removing the "stg_" prefix
    source_name="${model#stg_}"

    # Define the SQL content for the model
    sql_content="with source as (
   select * from {{ source('northwind','${source_name}')}}
)
select * from source"

    # Create the SQL file with the model content
    echo "$sql_content" > "$model.sql"
done
