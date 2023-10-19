-- 코드를 입력하세요
SELECT U.USER_ID, U.NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_USER U
JOIN USED_GOODS_BOARD B
ON B.WRITER_ID = U.USER_ID
WHERE STATUS = 'DONE'
GROUP BY USER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES 
