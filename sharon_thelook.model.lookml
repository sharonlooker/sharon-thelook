- connection: thelook

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: events
  joins:
    - join: users
      type: left_outer 
      sql_on: ${events.user_id} = ${users.id}
      relationship: many_to_one


- explore: inventory_items

- explore: numbers_small

- explore: order_items
  joins:
    - join: inventory_items
      type: left_outer 
      sql_on: ${order_items.inventory_item_id} = ${inventory_items.id}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${order_items.user_id} = ${users.id}
      relationship: many_to_one
      

- explore: users

