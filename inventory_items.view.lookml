- view: inventory_items
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: cost
    type: number
    sql: ${TABLE}.cost

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: product_brand
    type: string
    sql: ${TABLE}.product_brand

  - dimension: product_category
    type: string
    sql: ${TABLE}.product_category

  - dimension: product_department
    type: string
    sql: ${TABLE}.product_department

  - dimension: product_distribution_center_id
    type: number
    sql: ${TABLE}.product_distribution_center_id

  - dimension: product_id
    type: number
    sql: ${TABLE}.product_id

  - dimension: product_name
    type: string
    sql: ${TABLE}.product_name

  - dimension: product_retail_price
    type: number
    sql: ${TABLE}.product_retail_price

  - dimension: product_sku
    type: string
    sql: ${TABLE}.product_sku

  - dimension_group: sold
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sold_at

  - measure: count
    type: count
    drill_fields: [id, product_name, order_items.count]

