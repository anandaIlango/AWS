mysql -h ecommerce-db.c2a9v1unl3lw.eu-west-1.rds.amazonaws.com -P 3306 -u admin -p


CREATE TABLE `order_items` (
  `order_id` varchar(32) NOT NULL,
  `order_item_id` decimal(10,0) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `seller_id` varchar(32) NOT NULL,
  `shipping_limit_date` timestamp NULL DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `freight_value` decimal(10,0) NOT NULL,
  `order_purchase_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `orders` (
  `order_id` varchar(32) NOT NULL,
  `customer_id` varchar(32) NOT NULL,
  `order_status` varchar(11) NOT NULL,
  `order_purchase_timestamp` timestamp NULL DEFAULT NULL,
  `order_approved_at` timestamp NULL DEFAULT NULL,
  `order_delivered_carrier_date` timestamp NULL DEFAULT NULL,
  `order_delivered_customer_date` timestamp NULL DEFAULT NULL,
  `order_estimated_delivery_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `order_reviews` (
  `review_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `review_score` decimal(10,0) NOT NULL,
  `review_comment_title` varchar(25) DEFAULT NULL,
  `review_comment_message` varchar(208) DEFAULT NULL,
  `review_creation_date` timestamp NULL DEFAULT NULL,
  `review_answer_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `products` (
  `product_id` varchar(32) NOT NULL,
  `product_category_name` varchar(46) DEFAULT NULL,
  `product_name_lenght` decimal(10,0) DEFAULT NULL,
  `product_description_lenght` decimal(10,0) DEFAULT NULL,
  `product_photos_qty` decimal(10,0) DEFAULT NULL,
  `product_weight_g` decimal(10,0) DEFAULT NULL,
  `product_length_cm` decimal(10,0) DEFAULT NULL,
  `product_height_cm` decimal(10,0) DEFAULT NULL,
  `product_width_cm` decimal(10,0) DEFAULT NULL
)