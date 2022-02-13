connection: "snowflake_poc"
# include all the views
include: "/views/**/*.view"

datagroup: lt_poc_orders_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lt_poc_orders_default_datagroup

explore: raw_orders {}
