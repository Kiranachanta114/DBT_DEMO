with CTE AS(
    SELECT 
    TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
    HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,
    


    {{function1('STARTED_AT')}}
    
    
    FROM {{ ref('stg_bike') }} WHERE STARTED_AT!='"starttime"' and STARTED_AT!='starttime'
)
SELECT * FROM CTE