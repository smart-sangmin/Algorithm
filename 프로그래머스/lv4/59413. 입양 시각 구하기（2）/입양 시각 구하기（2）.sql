SET @hour = -1;
SELECT (@hour := @hour + 1) HOUR, IFNULL((
    SELECT COUNT(*)
    FROM ANIMAL_OUTS
    WHERE @hour = HOUR(DATETIME)
    GROUP BY HOUR(DATETIME)
), 0) COUNT
FROM ANIMAL_OUTS
WHERE @hour < 23;