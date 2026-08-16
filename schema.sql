-- USER SERVICE (Shivam)
CREATE TABLE users (
    user_id VARCHAR(36) PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'USER',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_profiles (
    profile_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL UNIQUE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- ORDER SERVICE (Aman)
CREATE TABLE orders (
    order_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    vendor_id VARCHAR(36) NOT NULL,
    status VARCHAR(20) DEFAULT 'PENDING',
    total_amount DECIMAL(10,2) NOT NULL,
    order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    order_item_id VARCHAR(36) PRIMARY KEY,
    order_id VARCHAR(36) NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- CATALOG SERVICE (Aniket)
CREATE TABLE vendors (
    vendor_id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    cuisine VARCHAR(100),
    rating DECIMAL(3,2) DEFAULT 0.0,
    status VARCHAR(20) DEFAULT 'ACTIVE'
);

CREATE TABLE menu_items (
    item_id VARCHAR(36) PRIMARY KEY,
    vendor_id VARCHAR(36) NOT NULL,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

-- PAYMENT SERVICE (Raghav)
CREATE TABLE payments (
    payment_id VARCHAR(36) PRIMARY KEY,
    order_id VARCHAR(36) NOT NULL UNIQUE,
    amount DECIMAL(10,2) NOT NULL,
    method VARCHAR(20) NOT NULL,
    status VARCHAR(20) DEFAULT 'PENDING'
);

-- DELIVERY SERVICE (Nikhil)
CREATE TABLE deliveries (
    delivery_id VARCHAR(36) PRIMARY KEY,
    order_id VARCHAR(36) NOT NULL UNIQUE,
    user_id VARCHAR(36) NOT NULL,
    driver_id VARCHAR(36),
    status VARCHAR(20) DEFAULT 'PENDING'
);

CREATE TABLE delivery_locations (
    location_id VARCHAR(36) PRIMARY KEY,
    delivery_id VARCHAR(36) NOT NULL,
    building VARCHAR(100) NOT NULL,
    FOREIGN KEY (delivery_id) REFERENCES deliveries(delivery_id)
);


