USE retail_db;
SELECT *
	FROM retail_data
	LIMIT 100;

SELECT
    COUNT(*) AS total_rows,
    SUM(transaction_id IS NULL) AS null_transaction_id,
    SUM(customer_id IS NULL) AS null_customer_id,
    SUM(name IS NULL) AS null_name,
    SUM(email IS NULL) AS null_email,
    SUM(phone IS NULL) AS null_phone,
    SUM(address IS NULL) AS null_address,
    SUM(city IS NULL) AS null_city,
    SUM(state IS NULL) AS null_state,
    SUM(zipcode IS NULL) AS null_zipcode,
    SUM(country IS NULL) AS null_country,
    SUM(age IS NULL) AS null_age,
    SUM(gender IS NULL) AS null_gender,
    SUM(income IS NULL) AS null_income,
    SUM(customer_segment IS NULL) AS null_customer_segment,
    SUM(date IS NULL) AS null_date,
    SUM(amount IS NULL) AS null_amount,
    SUM(total_amount IS NULL) AS null_total_amount,
    SUM(product_category IS NULL) AS null_product_category,
    SUM(product_brand IS NULL) AS null_product_brand,
    SUM(product_type IS NULL) AS null_product_type,
    SUM(feedback IS NULL) AS null_feedback,
    SUM(shipping_method IS NULL) AS null_shipping_method,
    SUM(payment_method IS NULL) AS null_payment_method,
    SUM(order_status IS NULL) AS null_order_status,
    SUM(ratings IS NULL) AS null_ratings,
    SUM(products IS NULL) AS null_products
FROM retail_data;

SELECT
    COUNT(*) AS total_rows,
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount,
    AVG(amount) AS avg_amount,
    MIN(total_amount) AS min_total,
    MAX(total_amount) AS max_total,
    AVG(total_amount) AS avg_total,
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    AVG(age) AS avg_age
FROM retail_data;

SELECT
    COUNT(*) AS total_transactions,
    SUM(total_amount) AS total_revenue,
    AVG(total_amount) AS avg_revenue_per_transaction
FROM retail_data;

SELECT year,
    SUM(total_amount) AS yearly_revenue
FROM retail_data
GROUP BY year
ORDER BY year;

SELECT
	min(date),
    max(date)
FROM retail_data;

SELECT
    year,
    month,
    SUM(total_amount) AS monthly_revenue
FROM retail_data
GROUP BY year, month
ORDER BY year, month;

SELECT 
    year,
    AVG(total_amount) AS avg_daily_sales
FROM retail_data
GROUP BY year
ORDER BY year;


SELECT 
    year,
    month,
    SUM(total_amount) AS monthly_total,
    AVG(total_amount) AS daily_avg
FROM retail_data
GROUP BY year, month
ORDER BY year, month;


SELECT 
    year,
    SUM(total_amount) AS yearly_total,
    AVG(total_amount) AS daily_avg
FROM retail_data
GROUP BY year
ORDER BY year;


SELECT 
    product_brand,
    product_category,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS avg_order_amount
FROM retail_data
GROUP BY product_brand, product_category
ORDER BY total_sales DESC
LIMIT 20;


SELECT 
        YEAR(date) AS Sales_Year,
        MONTH(date) AS Sales_Month,
        product_brand AS Brand,
        COUNT(*) AS Total_Transactions,
        SUM(amount) AS Total_Amount,
        AVG(amount) AS Avg_Amount
FROM retail_data
GROUP BY YEAR(date), MONTH(date), product_brand
ORDER BY Sales_Year, Sales_Month, Brand;
