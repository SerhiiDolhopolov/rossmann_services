CREATE DATABASE IF NOT EXISTS delivery;

CREATE TABLE IF NOT EXISTS delivery.reports (
    shop_id UInt32,
    country String,
    city String,
    admin_id UInt32,
    courier_id UInt32,
    product_id UInt32,
    product_name String,
    category_id UInt32,
    category_name String,
    quantity UInt32,
    accepted_time DateTime
) ENGINE = MergeTree()
ORDER BY (shop_id, accepted_time);