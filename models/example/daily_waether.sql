with daily_weather as(
    select
    date(time) as date_of,
    clouds,
    humidity,
    weather
    from {{ source('DEMO', 'WEATHER') }}
),

daily_weather_agg as(
    select
    date_of,
    round(avg(clouds),2) as avg_clouds,
    round(avg(humidity),2) as avg_humidity,
    weather
    from daily_weather

    group by date_of,weather
    qualify row_number() over(partition by date_of order by count(weather)desc)=1
)




select * from daily_weather_agg