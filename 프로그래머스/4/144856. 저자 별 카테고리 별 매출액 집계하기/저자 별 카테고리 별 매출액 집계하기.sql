-- 코드를 입력하세요
SELECT B1.AUTHOR_ID, A.AUTHOR_NAME, B1.CATEGORY, SUM(B1.PRICE * B2.SALES) AS TOTAL_SALES
FROM BOOK B1
JOIN AUTHOR A
ON A.AUTHOR_ID = B1.AUTHOR_ID
JOIN BOOK_SALES B2
ON B2.BOOK_ID = B1.BOOK_ID
WHERE MONTH(SALES_DATE) = '01'
GROUP BY AUTHOR_NAME, CATEGORY
ORDER BY AUTHOR_ID, CATEGORY DESC