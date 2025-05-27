CREATE DATABASE IF NOT EXISTS shop_reports;

CREATE TABLE IF NOT EXISTS shop_reports.delivery (
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
ORDER BY (shop_id, accepted_time)
TTL accepted_time + INTERVAL 6 MONTH;

CREATE TABLE IF NOT EXISTS shop_reports.transactions (
    shop_id UInt32,
    country String,
    city String,
    terminal_id UInt32,
    admin_id UInt32,
    cashier_id UInt32,
    transaction_id UInt32,
    transaction_time DateTime,
    payment_method String,
    product_id UInt32,
    product_name String,
    product_barcode String,
    category_id UInt32,
    category_name String,
    product_price Float64,
    product_discount Float64,
    unit_price Float64,
    quantity UInt32,
    transaction_amount Float64,
    loyalty_discount Float64,
    discount_type String,
    transaction_total_amount Float64,
) ENGINE = MergeTree()
ORDER BY (shop_id, transaction_id)
TTL transaction_time + INTERVAL 6 MONTH;