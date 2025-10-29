create database customers;

CREATE TABLE zara_collection (
    collection_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    season VARCHAR(50),
    launch_date DATE,
    is_active BOOLEAN DEFAULT TRUE
);
INSERT INTO zara_collection (title, description, season, launch_date, is_active)
VALUES
('Autumn Elegance 2025', 'A refined mix of warm tones, layered textures, and cozy silhouettes for the cooler months.', 'Autumn/Winter', '2025-10-01', 1),
('Spring Bloom 2025', 'Floral prints, pastel palettes, and breezy fabrics to welcome the season.', 'Spring/Summer', '2025-03-15', 0),
('Summer Escape 2025', 'Lightweight linens, bold colors, and vacation-ready styles.', 'Spring/Summer', '2025-06-01', 1),
('Winter Luxe 2024', 'Rich fabrics, tailored coats, and festive sparkle for the holiday season.', 'Autumn/Winter', '2024-11-10', 0),
('Resort Refresh 2025', 'Minimalist resort wear with clean lines and neutral tones.', 'Spring/Summer', '2025-01-20', 1);

select*from zara_collection;


select * from customers.person;
INSERT INTO customers.person (first_name, last_name, email, phone, address, city, state, postal_code, country)
VALUES
('Aditi', 'Verma', 'aditi.verma@example.com', '9876543210', '123 MG Road', 'Pune', 'Maharashtra', '411001', 'India'),
('Raj', 'Thakur', 'raj.thakur@example.com', '9123456780', '45 FC Lane', 'Mumbai', 'Maharashtra', '400001', 'India'),
('Meera', 'Joshi', 'meera.joshi@example.com', '9988776655', '78 Hill View', 'Nagpur', 'Maharashtra', '440001', 'India'),
('Aniket', 'Kulkarni', 'aniket.k@example.com', '9090909090', '12 River Park', 'Nashik', 'Maharashtra', '422001', 'India'),
('Tanvi', 'Shah', 'tanvi.shah@example.com', '9871234567', '56 Lotus Street', 'Ahmedabad', 'Gujarat', '380001', 'India'),
('Nikhil', 'Desai', 'nikhil.desai@example.com', '9812345678', '89 Palm Grove', 'Surat', 'Gujarat', '395001', 'India'),
('Isha', 'Rane', 'isha.rane@example.com', '9765432101', '34 Ocean Drive', 'Goa', 'Goa', '403001', 'India'),
('Kunal', 'Bhatia', 'kunal.bhatia@example.com', '9654321098', '67 Sunset Blvd', 'Delhi', 'Delhi', '110001', 'India');

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT DEFAULT 0,
    category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, description, price, quantity, category)
VALUES
('Slim Fit Linen Shirt', 'Lightweight linen shirt for men', 2490.00, 50, 'Men'),
('Satin Slip Dress', 'Elegant satin dress for women', 3990.00, 30, 'Women'),
('Oversized Denim Jacket', 'Classic denim jacket with oversized fit', 3590.00, 40, 'Men'),
('Cropped Tweed Jacket', 'Stylish tweed jacket for layering', 4990.00, 25, 'Women'),
('Cargo Jogger Pants', 'Comfortable joggers with cargo pockets', 2290.00, 60, 'Men'),
('Pleated Floral Skirt', 'Flowy pleated skirt with floral print', 2790.00, 35, 'Women'),
('Tailored Wool Blazer', 'Formal wool blazer for men', 5990.00, 20, 'Men'),
('Asymmetric Cut-Out Top', 'Trendy asymmetric top for women', 1990.00, 45, 'Women');
select * from products;

CREATE TABLE female_clothes (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    size VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO female_clothes (name, category, price, size)
VALUES
('Satin Wrap Dress', 'Dresses', 3490.00, 'M'),
('High-Waisted Wide Leg Pants', 'Bottoms', 2990.00, 'L'),
('Cropped Denim Jacket', 'Outerwear', 3990.00, 'S'),
('Ribbed Knit Sweater', 'Tops', 2490.00, 'M'),
('Pleated Midi Skirt', 'Skirts', 2790.00, 'L'),
('Asymmetric Blouse', 'Tops', 1990.00, 'S'),
('Faux Suede Trench Coat', 'Outerwear', 4990.00, 'XL'),
('Floral Print Maxi Dress', 'Dresses', 3690.00, 'M');

select * from female_clothes;

CREATE TABLE male_clothes (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    size VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO male_clothes (name, category, price, size)
VALUES
('Slim Fit Cotton Shirt', 'Shirts', 2490.00, 'M'),
('Regular Fit Polo T-Shirt', 'T-Shirts', 1990.00, 'L'),
('Straight Leg Jeans', 'Bottoms', 2990.00, 'XL'),
('Linen Blend Shorts', 'Bottoms', 1890.00, 'M'),
('Hooded Sweatshirt', 'Outerwear', 2790.00, 'L'),
('Bomber Jacket', 'Outerwear', 3490.00, 'XL'),
('Tailored Blazer', 'Formalwear', 4990.00, 'L'),
('Graphic Print T-Shirt', 'T-Shirts', 1590.00, 'M');

select * from male_clothes;

CREATE TABLE zara_offers (
    offer_id INT AUTO_INCREMENT PRIMARY KEY,
    offer_name VARCHAR(100),
    discount VARCHAR(50),
    start_date DATE,
    end_date DATE,
    category VARCHAR(100)
);

INSERT INTO zara_offers (offer_name, discount, start_date, end_date, category)
VALUES
('New Year Sale', 'Up to 80% off', '2025-01-01', '2025-01-14', 'Winter Collection'),
('Valentine\'s Day Sale', 'Up to 50% off', '2025-02-10', '2025-02-14', 'Dresses & Accessories'),
('Spring Sale', 'Up to 70% off', '2025-03-25', '2025-04-07', 'Selected Items'),
('Spring Accessories Sale', '30% off', '2025-03-25', '2025-04-07', 'Bags & Accessories'),
('End of Spring Sale', 'Up to 80% off', '2025-05-11', '2025-05-15', 'Winter Essentials'),
('Summer Sale', '30–80% off', '2025-06-07', '2025-06-11', 'Summer Collection'),
('Zara Home Sale', 'Special discounts', '2025-06-03', '2025-06-06', 'Home Collection'),
('Mid-Year Sale', 'Up to 70% off', '2025-06-20', '2025-06-30', 'Spring & Summer');

select * from zara_offers;


CREATE TABLE female_fashion_brands (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100),
    quality_level VARCHAR(50),
    style_focus VARCHAR(100),
    country_of_origin VARCHAR(50)
);
INSERT INTO female_fashion_brands (brand_name, quality_level, style_focus, country_of_origin)
VALUES
('Mango', 'Premium High-Street', 'Elegant & Modern', 'Spain'),
('Massimo Dutti', 'Premium', 'Sophisticated Classics', 'Spain'),
('& Other Stories', 'Mid to Premium', 'Feminine & Trendy', 'Sweden'),
('H&M', 'Mid-Range', 'Everyday Fashion', 'Sweden'),
('Stradivarius', 'Mid-Range', 'Youthful & Chic', 'Spain');

select * from female_fashion_brands;

CREATE TABLE zara_feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO zara_feedback (customer_name, email, rating, comment)
VALUES
('Aditi Verma', 'aditi.verma@example.com', 5, 'Absolutely love Zara’s style and quality! Always on trend.'),
('RajThakur', 'raj.thakur@example.com', 4, 'Great designs and fit, but sometimes pricey.'),
('TanviShah', 'tanvi.shah@example.com', 5, 'Zara is my go-to brand for elegant and modern outfits.'),
('Kunal Bhatia', 'kunal.bhatia@example.com', 3, 'Good variety, but sizes run small occasionally.'),
('NikhilDesai', 'nikhil.desai@example.com', 4, 'Stylish and affordable, especially during sales!');

select  * from zara_feedback;

CREATE TABLE zara_thank_you_messages (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    message_title VARCHAR(100),
    message_body TEXT,
    collection_name VARCHAR(100),
    is_active TINYINT(1) DEFAULT 1
);
INSERT INTO zara_thank_you_messages (customer_name, message_title, message_body, collection_name)
VALUES
('Aditi Verma', 'Thanks for Choosing Zara', 'We’re thrilled to have you explore our Autumn Elegance 2025 collection. Enjoy timeless fashion and bold new trends!', 'Autumn Elegance 2025'),
('NikhilDesai', 'Welcome to Zara Style', 'Thank you for shopping with us! Discover your perfect look in our Summer Escape 2025 collection.', 'Summer Escape 2025');

select* from zara_thank_you_messages;

