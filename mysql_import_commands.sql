
mysql -h ecommercedb.c1yklxlrd3gk.us-east-1.rds.amazonaws.com -P 3306 -u admin -p

LOAD DATA LOCAL INFILE "order_items.csv" INTO TABLE ecommerce_db.order_items FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "orders.csv" INTO TABLE ecommerce_db.orders FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "order_reviews.csv" INTO TABLE ecommerce_db.order_reviews FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "products.csv" INTO TABLE ecommerce_db.products FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

-- Udemy labs
mysql -h ecommerce-db.c2kfp2aops8c.us-east-1.rds.amazonaws.com -P 3306 -u admin -p