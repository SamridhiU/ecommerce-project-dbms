USE ecommerce_db;

-- Seed Categories
INSERT IGNORE INTO categories (name, description, image_url) VALUES 
('Electronics', 'Latest gadgets and devices', 'https://images.unsplash.com/photo-1498049794561-7780e7231661?q=80&w=800'),
('Fashion', 'Modern apparel and accessories', 'https://images.unsplash.com/photo-1445205170230-053b83016050?q=80&w=800'),
('Home & Living', 'Essentials for your living space', 'https://images.unsplash.com/photo-1484101403633-562f891dc89a?q=80&w=800'),
('Gaming', 'Ultimate gaming gear', 'https://images.unsplash.com/photo-1542751371-adc38448a05e?q=80&w=800');

-- Seed Products
INSERT INTO products (name, description, price, stock_quantity, category_id, image_url) VALUES 
('Quantum X1 Pro', 'Next-gen smartphone with 8K camera and 144Hz OLED display.', 999.99, 50, 1, 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=800'),
('Nebula Headphones', 'Active noise-cancelling wireless headphones with 40h battery life.', 249.50, 120, 1, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=800'),
('Astral Watch', 'Smartwatch with health tracking and titanium finish.', 199.00, 85, 1, 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=800'),
('Vintage Denim Jacket', 'Classic fit durable denim jacket for all seasons.', 89.00, 200, 2, 'https://images.unsplash.com/photo-1551537482-f2075a1d41f2?q=80&w=800'),
('Silk Evening Gown', 'Elegant silk gown for formal occasions.', 150.00, 30, 2, 'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?q=80&w=800'),
('Minimalist Desk Lamp', 'Sleek LED desk lamp with adjustable brightness.', 45.99, 150, 3, 'https://images.unsplash.com/photo-1534073828943-f801091bb18c?q=80&w=800'),
('Geometric Rug', 'Large area rug with modern geometric patterns.', 120.00, 40, 3, 'https://images.unsplash.com/photo-1531835597964-6a9749563821?q=80&w=800'),
('Rogue Mechanical Keyboard', 'RGB backlit mechanical keyboard with blue switches.', 75.00, 90, 4, 'https://images.unsplash.com/photo-1511467687858-23d96c32e4ae?q=80&w=800');

-- Seed Users
-- Password for all seed users is 'password123' (hashed/simulated)
INSERT INTO users (name, email, password, address, role_id) VALUES 
('John Doe', 'john@example.com', 'password123', '123 Main St, New York, NY', 1),
('Jane Smith', 'jane@example.com', 'password123', '456 Elm St, San Francisco, CA', 1),
('Admin User', 'admin@ecommerce.com', 'adminpass', '789 Corporate Blvd, Austin, TX', 2);
