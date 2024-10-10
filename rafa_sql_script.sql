USE miniproject;

SHOW TABLES;

SELECT *
FROM income_by_state as i;

## Revenue by Season

SELECT season, SUM(`Purchase Amount (USD)`) as revenue_season
FROM shopping_behavior as s
GROUP BY season
ORDER BY revenue_season DESC;

## Revenue by Season vs. Category

SELECT season, category, SUM(`Purchase Amount (USD)`) as revenue_season
FROM shopping_behavior as s
GROUP BY category, season
ORDER BY revenue_season DESC;
    
    
## COMPLEX VERSION
    
WITH ranked_seasons AS (
    SELECT 
        season, 
        category, 
        SUM(`Purchase Amount (USD)`) as revenue_season,
        RANK() OVER (PARTITION BY category ORDER BY SUM(`Purchase Amount (USD)`) DESC) as rank_per_category
    FROM shopping_behavior as s
    GROUP BY category, season
)
SELECT season, category, revenue_season
FROM ranked_seasons
WHERE rank_per_category = 1;

## SIMPLIFIED VERSION

SELECT category, season, revenue_season
FROM (
    SELECT 
        season, 
        category, 
        SUM(`Purchase Amount (USD)`) as revenue_season
    FROM shopping_behavior as s
    GROUP BY category, season
) as revenues
WHERE revenue_season = (
    SELECT MAX(revenue_season)
    FROM (
			SELECT category, SUM(`Purchase Amount (USD)`) as revenue_season
			FROM shopping_behavior
			GROUP BY category, season
    ) as max_revenue
    WHERE max_revenue.category = revenues.category
)
ORDER BY category;

SELECT season, category, revenue_season
FROM ranked_seasons
WHERE rank_per_category = 1;

SELECT *
FROM shopping_behavior;

## Revenue by Category

SELECT category, SUM(`Purchase Amount (USD)`) as revenue_category
FROM shopping_behavior as s
GROUP BY category
ORDER BY revenue_category DESC;

#SELECT *
#FROM shopping_behavior as s