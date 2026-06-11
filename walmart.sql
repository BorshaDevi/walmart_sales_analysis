Select * FROM walmart
-- DROP TABLE walmart
SELECT COUNT(*) FROM walmart
SELECT DISTINCT(payment_method) FROM walmart

SELECT COUNT(DISTINCT (branch)) FROM walmart

SELECT DISTINCT (branch) 
FROM walmart
ORDER BY 1



-- Business Problems

-- Pro-1 Find different payment method and number of transaction,number of quantity sold.
SELECT payment_method,
COUNT(*)as tr_count,
SUM(quantity) as num_quantity_sold
FROM walmart
GROUP BY payment_method

-- Pro-2 
-- Identify the highest-rated category in each branch, displaying the branch, category
-- AVG RATING

SELECT 
branch,
category,
rating
FROM
( 
     SELECT 
     branch,
     category,
     ROUND(AVG(rating)::numeric,2) as rating,
     RANK() OVER(
               PARTITION BY branch ORDER BY AVG(rating) DESC  ) as rnk
     FROM walmart
     GROUP BY 1,2
	   )
WHERE rnk=1	   


-- Pro-3  Identify the busiest day for each branch based on the number of transactions.


-- SELECT * FROM walmart

-- SELECT
-- TO_CHAR(TO_DATE(date,'dd/mm/yy'),'DAY') as formate_date
-- FROM walmart

-- SELECT 
-- branch,
-- payment_method,
-- COUNT(*) AS transactions
-- FROM walmart
-- GROUP BY branch,payment_method
-- ORDER BY 1,3 DESC

SELECT 
*
FROM(
SELECT 
branch,
TO_CHAR(TO_DATE(date,'dd/mm/yy'),'DAY') as formate_date,
COUNT(*) AS transactions,
RANK() OVER(
          PARTITION BY branch ORDER BY COUNT(*)DESC) AS RNK
FROM walmart
GROUP BY branch,formate_date
)
WHERE RNK =1


-- Pro-4  Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.

SELECT  
payment_method,
SUM(quantity) as total_quantity
FROM walmart
GROUP BY 1

-- Pro-5 
--Determine the average, minimum, and maximum rating of category for each city. 
-- List the city, average_rating, min_rating, and max_rating.

SELECT 
city,
category,
ROUND(AVG(rating)::numeric,2) as category_avg,
MAX(rating) as category_max,
MIN(rating) as category_min
FROM walmart
GROUP BY 1,2


-- Pro-6
-- Calculate the total profit for each category by considering total_profit as
-- (unit_price * quantity * profit_margin). 
-- List category and total_profit, ordered from highest to lowest profit.

SELECT 
      category,
	  SUM(total*profit_margin) as total_profit
FROM walmart
GROUP BY 1
ORDER BY 2 DESC


-- Pro-7
-- Determine the most common payment method for each Branch. 
-- Display Branch and the preferred_payment_method.
WITH bpm
AS
(
  SELECT 
     branch,
	 payment_method,
	 COUNT(*)AS total_tran,
	 RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) AS rank_tran
  FROM walmart
  GROUP BY 1,2
)
SELECT * FROM bpm
WHERE rank_tran =1


-- Pro-8
-- Categorize sales into 3 group MORNING, AFTERNOON, EVENING 
-- Find out each of the shift and number of invoices

WITH temple 
     AS
(
SELECT 
    *,
	time::time AS time_zon
FROM walmart
)
SELECT 
  branch,
  CASE 
     WHEN EXTRACT (HOUR FROM time_zon) <12 THEN 'Morning'
     WHEN EXTRACT (HOUR FROM time_zon) BETWEEN 12 AND 17 THEN 'Afternoon'
	 ELSE 'Evening'
  END AS shift,
  COUNT(*) AS total_tran
FROM temple
GROUP BY 1,2
ORDER BY 1,3 DESC
  


-- Pro-9
-- Identify 5 branch with highest decrese ratio in 
-- revenue compare to last year(current year 2023 and last year 2022)


-- SELECT 
-- EXTRACT (YEAR FROM TO_DATE(date,'dd/mm/yy') ) AS YEAR
-- FROM walmart
-- GROUP BY 1


WITH revenue_2022
AS
(
-- 2022
SELECT
branch,
SUM(total) as revenue_2022
FROM walmart
WHERE EXTRACT (YEAR FROM TO_DATE(date,'dd/mm/yy')) =2022
GROUP BY 1
),


-- 2023
revenue_2023
AS
(
SELECT
branch,
SUM(total) as revenue_2023
FROM walmart
WHERE EXTRACT (YEAR FROM TO_DATE(date,'dd/mm/yy')) =2023
GROUP BY 1
)
SELECT 
    lst_y.branch,
    lst_y.revenue_2022 as last_year,
	cur_y.revenue_2023 as current_year,
	ROUND(
	       (
	         (lst_y.revenue_2022 - cur_y.revenue_2023)::numeric
			       / lst_y.revenue_2022::numeric)*100,
				        2
						) as revenue_decrese_ratio
FROM revenue_2022 as lst_y
JOIN revenue_2023 as cur_y
ON lst_y.branch=cur_y.branch
WHERE  
     lst_y.revenue_2022 > cur_y.revenue_2023
ORDER BY 4 DESC 
LIMIT 5	 


