-- Дерекқор жасау
CREATE DATABASE streetfood_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE streetfood_db;

-- Мәзір (тамақтар) кестесі
CREATE TABLE menu_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    description TEXT,
    image VARCHAR(255)
);

-- Байланыс мәліметтері
CREATE TABLE contact_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255),
    phone VARCHAR(50),
    whatsapp VARCHAR(50),
    work_time VARCHAR(100)
);

-- Біз туралы (текст)
CREATE TABLE about_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT
);

-- Мәзір мысал жазбалар
INSERT INTO menu_items (name, price, description, image) VALUES
('Донер', 1000, 'Жаңа тауық етінен дайындалады.', 'doner.jpg'),
('Бургер', 1200, 'Үй котлетімен, балғын көкөністер.', 'burger.jpg'),
('Кофе', 500, 'Жаңа тартылған дәндерден.', 'coffee.jpg'),
('Десерт', 400, 'Үйде жасалған тәтті.', 'dessert.jpg');

-- Байланыс мәліметтері
INSERT INTO contact_info (address, phone, whatsapp, work_time) VALUES
('ул Винаградова, 5-көше', '+7 705 970 42 07', '+7 705 970 42 07', '09:00 — 23:00');

-- Біз туралы текст
INSERT INTO about_info (content) VALUES
('StreetFood Mini Café — сапалы әрі тез дайындалатын тағам ұсынатын шағын кафе.');
