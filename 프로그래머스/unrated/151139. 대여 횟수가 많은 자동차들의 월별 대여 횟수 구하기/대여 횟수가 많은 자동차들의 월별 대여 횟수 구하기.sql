SELECT CAR_ID, MONTH(START_DATE) MONTH, COUNT(*) RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY CAR_ID, MONTH(START_DATE)
HAVING COUNT(*) >= 5