const express = require('express');
const cors = require('cors');
require('dotenv').config();
const db = require('./config/db');

const app = express();
app.use(cors());
app.use(express.json());

// Basic Route
app.get('/', (req, res) => {
    res.send('E-commerce API is running...');
});

// GET all products
app.get('/api/products', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT p.*, c.name as category_name FROM products p JOIN categories c ON p.category_id = c.id');
        res.json(rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// GET product by ID
app.get('/api/products/:id', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT p.*, c.name as category_name FROM products p JOIN categories c ON p.category_id = c.id WHERE p.id = ?', [req.params.id]);
        if (rows.length === 0) return res.status(404).json({ message: 'Product not found' });
        res.json(rows[0]);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// GET categories
app.get('/api/categories', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT * FROM categories');
        res.json(rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// POST new order
app.post('/api/orders', async (req, res) => {
    const { user_id, total_amount, items } = req.body;
    try {
        // Start transaction
        const [result] = await db.query('INSERT INTO orders (user_id, total_amount) VALUES (?, ?)', [user_id, total_amount]);
        const orderId = result.insertId;

        for (let item of items) {
            await db.query('INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)', 
                [orderId, item.id, item.quantity, item.price]);
            
            // Update stock
            await db.query('UPDATE products SET stock_quantity = stock_quantity - ? WHERE id = ?', [item.quantity, item.id]);
        }

        res.status(201).json({ message: 'Order placed successfully', orderId });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
