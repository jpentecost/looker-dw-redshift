connection: "dw_poc-redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: data_warehouse_redshift_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: data_warehouse_redshift_default_datagroup

explore: dimcallcharacteristics {}

explore: dimcustomer {}

explore: dimdate {}

explore: dimexitpoint {}

explore: dimtime {}

explore: factcalldetail {}
