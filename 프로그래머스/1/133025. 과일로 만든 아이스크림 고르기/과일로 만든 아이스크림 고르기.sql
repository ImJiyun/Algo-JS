-- 코드를 입력하세요
SELECT t1.FLAVOR FROM FIRST_HALF as t1
JOIN ICECREAM_INFO as t2
ON t1.FLAVOR = t2.FLAVOR
WHERE t1.TOTAL_ORDER > 3000 AND t2.INGREDIENT_TYPE = 'fruit_based'
ORDER BY t1.TOTAL_ORDER DESC