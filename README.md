🛍️ Aura – E-commerce Web Application

Aura is a full-stack e-commerce web application developed as a DBMS project. It demonstrates the integration of a modern frontend with a relational database-backed backend to simulate a real-world online shopping platform.

📌 Overview

The application enables users to browse products, view detailed information, manage a shopping cart, and place orders. It is designed to showcase core database concepts such as relational schema design, data retrieval, and transaction handling, combined with RESTful API development.

🚀 Key Features
Frontend
Responsive user interface with modern design
Product listing with category filtering and search
Product detail view with dynamic data fetching
Shopping cart with real-time updates and order summary
Login and user profile interface
Backend
RESTful API built using Node.js and Express
MySQL database integration
Order processing with transactional logic
Automatic inventory updates upon order placement
Database
Structured relational schema including:
Products
Categories
Orders
Order Items
🛠️ Technology Stack
Layer	Technology
Frontend	HTML, CSS, JavaScript
Backend	Node.js, Express.js
Database	MySQL
Tools	dotenv, cors, nodemon
📂 Project Structure
Aura/
│── index.html
│── shop.html
│── product.html
│── cart.html
│── login.html
│── profile.html
│
│── server.js
│── package.json
│── .env
│
│── schema.sql
│── seed.sql
│── more_data.sql
│
│── css/
│── js/
⚙️ Installation and Setup
1. Clone the Repository
git clone https://github.com/your-username/aura-ecommerce.git
cd aura-ecommerce
2. Install Dependencies
npm install
3. Configure Environment Variables

Create a .env file in the root directory:

PORT=5000
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=ecommerce_db

(Example configuration: )

4. Database Setup

Execute the following SQL files in MySQL:

SOURCE schema.sql;
SOURCE seed.sql;
SOURCE more_data.sql;
5. Run the Application

Start the backend server:

npm start

Access the application:

Backend: http://localhost:5000
Frontend: Open index.html in a browser
🔗 API Endpoints
Method	Endpoint	Description
GET	/api/products	Retrieve all products
GET	/api/products/:id	Retrieve product by ID
GET	/api/categories	Retrieve all categories
POST	/api/orders	Create a new order
🔄 Application Workflow
User browses available products
Products are fetched from the backend API
User adds items to the cart (stored locally)
Order is submitted to the backend
Backend stores order details and updates inventory
⚠️ Limitations
No authentication system (UI only)
No integrated payment gateway
Cart data stored in browser (localStorage)
🚧 Future Enhancements
User authentication and authorization (JWT)
Payment gateway integration
Admin dashboard for product management
Deployment on cloud platforms
Wishlist and recommendation system
👩‍💻 Author

Samridhi Upadhyay
DBMS Project – E-commerce Application
