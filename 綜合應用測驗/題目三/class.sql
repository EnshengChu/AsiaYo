-- 從 class 表中選擇 class，其中 name 在子查詢結果中
SELECT class 
FROM class 
WHERE name IN (
    SELECT name 
    FROM (
        SELECT name, DENSE_RANK() OVER (ORDER BY score DESC) AS rnk 
        FROM score
    ) ranked
    WHERE rnk = 2
);