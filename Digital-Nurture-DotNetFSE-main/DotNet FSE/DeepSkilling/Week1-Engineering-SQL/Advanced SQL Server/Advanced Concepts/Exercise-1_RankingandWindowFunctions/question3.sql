SELECT
    product_name,
    category,
    price,
    DENSE_RANK() OVER (
        PARTITION BY category
        ORDER BY price DESC
    ) AS dense_rank
FROM products;