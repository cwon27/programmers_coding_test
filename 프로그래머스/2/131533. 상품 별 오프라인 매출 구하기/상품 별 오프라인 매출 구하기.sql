-- 코드를 입력하세요
SELECT DISTINCT
    P.PRODUCT_CODE
    , P.PRICE * SUM(OS.SALES_AMOUNT) AS PRICE
FROM 
    PRODUCT P
    INNER JOIN OFFLINE_SALE OS
        ON P.PRODUCT_ID = OS.PRODUCT_ID
GROUP BY
    P.PRODUCT_CODE
ORDER BY 
    PRICE DESC
    , P.PRODUCT_CODE ASC