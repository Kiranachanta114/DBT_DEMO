with BIKE as(
    select
    distinct
    ENDED_AT AS STATION_ID,
    START_STATION_NAME AS STATION_NAME,
	START_STATIO_ID AS STATION_LAT,
	END_STATION_NAME AS STATION_LANG

    FROM {{ ref('stg_bike') }}
    WHERE STATION_ID!='start station id'
)
select * from BIKE