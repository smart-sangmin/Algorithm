
    
SET @BEST_REVIEWER = (
    SELECT M.MEMBER_ID
    FROM REST_REVIEW R
    JOIN MEMBER_PROFILE M ON R.MEMBER_ID = M.MEMBER_ID
    GROUP BY M.MEMBER_ID
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

SELECT MEMBER_NAME, REVIEW_TEXT, DATE_FORMAT(REVIEW_DATE, "%Y-%m-%d") REVIEW_DATE
FROM REST_REVIEW R
JOIN MEMBER_PROFILE M ON R.MEMBER_ID = M.MEMBER_ID
WHERE M.MEMBER_ID = @BEST_REVIEWER
ORDER BY 3, 2
