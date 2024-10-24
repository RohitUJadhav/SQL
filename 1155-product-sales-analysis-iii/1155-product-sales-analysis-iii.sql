SELECT
    s.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM
    Sales s
JOIN
    Product p
    USING (product_id)
JOIN
    (SELECT
        product_id,
        MIN(year) AS first_year
    FROM
        Sales
    GROUP BY
        product_id) AS min_years
    ON s.product_id = min_years.product_id AND s.year = min_years.first_year;