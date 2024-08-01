SELECT order_id, product_id, quantity, divide_numbers(quantity, 2.0) AS divided_quantity
FROM order_details;