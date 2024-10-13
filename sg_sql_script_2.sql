SELECT * 
FROM shop_table;

SELECT season, COUNT("Item Purchased") as item_count, SUM(purchase_amount) as item_total_usd
FROM shop_table
GROUP BY season
ORDER BY item_total_usd;

# Discount Yes/No
SELECT discount_applied as discount, COUNT("Item Purchased") as item_count, SUM(purchase_amount) as discount_total_usd
FROM shop_table
GROUP BY discount;

SELECT Category, COUNT("Item Purchased") as item_count, SUM(purchase_amount) as total_usd
FROM shop_table
GROUP BY Category;

SELECT gender, category, SUM(purchase_amount) AS total_purchase
FROM shop_table
GROUP BY gender, category;

SELECT 
    CASE 
        WHEN age < 18 THEN 'Under 18'
        WHEN age BETWEEN 18 AND 29 THEN '18-29'
        WHEN age BETWEEN 30 AND 49 THEN '30-49'
        ELSE '50 and above'
    END AS age_group,
    category,
    SUM(purchase_amount) AS total_purchase
FROM shop_table
GROUP BY age_group, category
ORDER BY age_group, category;

SELECT * 
FROM shop_table;

SELECT 
    CASE 
        WHEN purchase_frequency = "Bi-Weekly" OR "Weekly" THEN "Weekly"
        WHEN purchase_frequency = "Fortnightly"OR "Monthly"OR "Every 3 Months" THEN "2 Weeks - 3 Months"
        ELSE "More than 3 months"
    END AS buying_frequency,
	COUNT(*) AS count,
    SUM(purchase_amount) AS total_purchase,
    SUM(purchase_amount)/COUNT(*) AS average_purchase_amount
FROM shop_table
GROUP BY buying_frequency
ORDER BY buying_frequency;
# maybe integrating most popular item for each frequency

########
SELECT *
FROM income_by_state;

SELECT location, SUM(purchase_amount)
FROM shop_table
GROUP BY location;

SELECT location, SUM(purchase_amount)
FROM shop_table
GROUP BY location;

SELECT state, income_per_capita
FROM income_by_state
ORDER BY income_per_capita DESC;

SELECT state, income_per_capita, COUNT(purchase_frequency) AS purchase_frequency, SUM(purchase_amount)/COUNT(purchase_frequency) AS average_purchase_amount
FROM income_by_state
INNER JOIN shop_table
ON income_by_state.state = shop_table.location
GROUP BY state, income_per_capita
ORDER BY income_per_capita DESC;
