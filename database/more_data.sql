USE ecommerce_db;

-- Ensure Categories exist and get their IDs
INSERT IGNORE INTO categories (name, description, image_url) VALUES 
('Audio', 'High-fidelity sound systems and portable audio.', 'https://images.unsplash.com/photo-1558089687-f282ff96f30b?q=80&w=800'),
('Accessories', 'Essential add-ons for your daily tech life.', 'https://images.unsplash.com/photo-1615526675159-e248c3021d3f?q=80&w=800');

-- Use variables to get correct IDs dynamically
SET @electronics_id = (SELECT id FROM categories WHERE name = 'Electronics' LIMIT 1);
SET @fashion_id = (SELECT id FROM categories WHERE name = 'Fashion' LIMIT 1);
SET @home_id = (SELECT id FROM categories WHERE name = 'Home & Living' LIMIT 1);
SET @gaming_id = (SELECT id FROM categories WHERE name = 'Gaming' LIMIT 1);
SET @audio_id = (SELECT id FROM categories WHERE name = 'Audio' LIMIT 1);
SET @acc_id = (SELECT id FROM categories WHERE name = 'Accessories' LIMIT 1);

-- Add Products using the dynamic IDs
INSERT INTO products (name, description, price, stock_quantity, category_id, image_url) VALUES 
('Echo Pro Soundbar', 'Immersive 7.1.2 Dolby Atmos soundbar with wireless subwoofer.', 599.99, 25, @audio_id, 'https://images.unsplash.com/photo-1545454675-3531b543be5d?q=80&w=800'),
('Sonic Buds v2', 'Premium true wireless earbuds with adaptive transparency mode.', 179.00, 150, @audio_id, 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?q=80&w=800'),
('Titan Gaming PC', 'Liquid-cooled powerhouse with RTX 4090 and 64GB DDR5 RAM.', 3499.00, 10, @electronics_id, 'https://images.unsplash.com/photo-1587831990711-23ca6441447b?q=80&w=800'),
('Zenith Curved Monitor', '34-inch ultra-wide 175Hz QD-OLED gaming monitor.', 899.00, 40, @electronics_id, 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?q=80&w=800'),
('Nomad Tech Backpack', 'Weather-resistant backpack with integrated solar charging.', 145.00, 60, @acc_id, 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=800'),
('Aether Smart Lamp', 'Minimalist floor lamp with millions of colors and voice control.', 89.99, 100, @home_id, 'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?q=80&w=800'),
('Hyperion Mechanical Mouse', 'Ultra-lightweight wireless mouse with 30K DPI sensor.', 129.50, 200, @gaming_id, 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?q=80&w=800'),
('Urban Tech Hoodie', 'Water-repellent breathable fabric with hidden utility pockets.', 110.00, 75, @fashion_id, 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?q=80&w=800'),
('Onyx Smart Mirror', 'Bathroom mirror with integrated health stats and news feed.', 450.00, 15, @home_id, 'https://images.unsplash.com/photo-1522338242992-e1a54906a8da?q=80&w=800'),
('Luna Sleep Tracker', 'Non-wearable sleep sensor with advanced REM analysis.', 199.00, 55, @electronics_id, 'https://images.unsplash.com/photo-1544117518-30dd5ff7a986?q=80&w=800'),
('Vector Drone X4', '4K HDR drone with 360-degree obstacle avoidance.', 799.00, 30, @electronics_id, 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?q=80&w=800'),
('Summit Trail Boots', 'Rugged all-terrain boots with haptic grip technology.', 185.00, 120, @fashion_id, 'https://images.unsplash.com/photo-1520639889410-d65c36fcc9ca?q=80&w=800'),
('Flow Water Purifier', 'UV-C self-cleaning smart water pitcher.', 65.00, 200, @home_id, 'https://images.unsplash.com/photo-1560312832-9442168924f7?q=80&w=800'),
('Glitch Art Print', 'Limited edition digital glitch art on canvas.', 75.00, 50, @home_id, 'https://images.unsplash.com/photo-1550684848-fac1c5b4e853?q=80&w=800'),
('Carbon Key Organizer', 'Compact carbon fiber key holder with Bluetooth tracking.', 45.00, 300, @acc_id, 'https://images.unsplash.com/photo-1582133637202-fca827582003?q=80&w=800');
