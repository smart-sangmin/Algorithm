SELECT MCDP_CD "진료과코드", COUNT(MCDP_CD) "5월예약건수"
from APPOINTMENT
WHERE APNT_YMD LIKE '2022-05-%'
GROUP BY MCDP_CD
ORDER BY COUNT(MCDP_CD), MCDP_CD;