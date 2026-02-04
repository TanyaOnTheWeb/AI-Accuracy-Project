SELECT *,
ABS(actual_sales - predicted_sales) AS error
FROM ai_prediction;


SELECT 
ROUND(100-AVG(ABS(actual_sales - predicted_sales) / NULLIF(actual_sales,0))*100,2) AS accuracy 
FROM ai_prediction;

SELECT 
ROUND(100-AVG(ABS(actual_sales - predicted_sales) / NULLIF(actual_sales,0))*100,2) AS accuracy 
FROM ai_prediction
GROUP BY region;

SELECT date,
AVG(ABS(actual_sales - predicted_sales)) AS avg_error
FROM ai_prediction
GROUP BY date
ORDER BY date;