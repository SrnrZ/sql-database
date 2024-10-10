SELECT * 
FROM shop_table;

SELECT season, COUNT("Item Purchased") as item_count, SUM(`Purchase Amount (USD)`) as item_total_usd
FROM shop_table
GROUP BY season
ORDER BY item_total_usd;

# Discount Yes/No
SELECT discount_applied as discount, COUNT("Item Purchased") as item_count, SUM(`Purchase Amount (USD)`) as discount_total_usd
FROM shop_table
GROUP BY discount;

SELECT Category, COUNT("Item Purchased") as item_count, SUM(`Purchase Amount (USD)`) as discount_total_usd
FROM shop_table
GROUP BY Category;

SELECT *
FROM income_by_state;


SELECT first_name, payment_id, amount
FROM payment AS p
INNER JOIN staff AS s
ON s.staff_id = p.staff_id
WHERE first_name = "Mike";