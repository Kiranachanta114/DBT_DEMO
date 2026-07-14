with CTE AS(
    SELECT
    t.*,
    w.*
    from {{ref('trip_fact')}} t
    left join {{ref('daily_waether')}} w 
    on t.TRIP_DATE = w.date_of
)
select * from CTE