SELECT * FROM customers LIMIT 10;
SELECT * FROM orders LIMIT 10;
SELECT * FROM books LIMIT 10;

SELECT * FROM pg_indexes WHERE tablename = 'customers';
SELECT * FROM pg_indexes WHERE tablename = 'orders';
SELECT * FROM pg_indexes WHERE tablename = 'books';

CREATE INDEX idx_orders_customer_id ON orders (customer_id);
CREATE INDEX idx_orders_book_id ON orders (book_id);

EXPLAIN ANALYZE SELECT original_language, title, sales_in_millions 
FROM books 
WHERE original_language = 'French';

SELECT pg_size_pretty (pg_total_relation_size('books'));

CREATE INDEX idx_books_language_title_sales 
ON books (original_language, title, sales_in_millions);

DROP INDEX idx_books_language_title_sales;

DROP INDEX IF EXISTS idx_orders_customer_id;
DROP INDEX IF EXISTS idx_orders_book_id;


SELECT NOW();
\COPY orders FROM 'orders_add.txt' DELIMITER ',' CSV HEADER;
SELECT NOW();

CREATE INDEX idx_orders_customer_id ON orders (customer_id);
CREATE INDEX idx_orders_book_id ON orders (book_id);

CREATE INDEX idx_customers_first_name_email ON customers (first_name, email_address);
