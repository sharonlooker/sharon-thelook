- view: events
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: browser
    type: string
    sql: ${TABLE}.browser

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: event_type
    type: string
    sql: ${TABLE}.event_type

  - dimension: ip_address
    type: string
    sql: ${TABLE}.ip_address

  - dimension: latitue
    type: number
    sql: ${TABLE}.latitue

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: os
    type: string
    sql: ${TABLE}.os

  - dimension: sequence_number
    type: number
    sql: ${TABLE}.sequence_number

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: traffic_source
    type: string
    sql: ${TABLE}.trafficSource

  - dimension: uri
    type: string
    sql: ${TABLE}.uri

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: zip
    type: string
    sql: ${TABLE}.zip

  - measure: count
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id]

