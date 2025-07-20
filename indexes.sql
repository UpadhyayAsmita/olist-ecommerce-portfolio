CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_order_items_order ON order_items(order_id);
CREATE INDEX idx_order_items_product ON order_items(product_id);
CREATE INDEX idx_order_items_seller ON order_items(seller_id);
CREATE INDEX idx_payments_order ON payments(order_id);
CREATE INDEX idx_reviews_order ON order_reviews(order_id);
CREATE INDEX idx_orders_purchase_timestamp ON orders(order_purchase_timestamp);
