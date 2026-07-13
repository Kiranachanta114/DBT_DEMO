with BIKE as(
    select
    distinct
    ENDED_AT AS STATION_ID,
    START_STATION_NAME AS STATION_NAME,
	START_STATIO_ID AS STATION_LAT,
	END_STATION_NAME AS STATION_LANG

    FROM {{ source('DEMO', 'BIKE') }}
    WHERE STATION_ID!='start station id'
)
select * from BIKE