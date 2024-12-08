CREATE DATABASE clicketachete;

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,                -- Identifiant unique de la commande
    order_date DATE NOT NULL,                   -- Date de la commande
    product_name VARCHAR(255) NOT NULL,         -- Nom du produit commandé
    quantity_sold INT NOT NULL,                 -- Quantité du produit vendue
    total_sales DECIMAL(10, 2) NOT NULL,        -- Chiffre d'affaires total pour cette commande (quantité * prix unitaire)
    promotion VARCHAR(100),                     -- Promotion appliquée à la commande (ex : 10% off, No Promo)
    region VARCHAR(100),                        -- Région de la vente (ex : Paris, Lyon)
    unit_price DECIMAL(10, 2) NOT NULL          -- Prix unitaire du produit
);


-- 1ère insertion de données pour la table orders
INSERT INTO orders (order_date, product_name, quantity_sold, total_sales, promotion, region, unit_price)
VALUES
('2023-01-01', 'T-shirt bleu', 50, 999.50, '10% off', 'Paris', 19.99),
('2023-01-01', 'Chaussures blanches', 30, 899.70, '15% off', 'Lyon', 29.99),
('2023-01-01', 'Sac à dos rouge', 40, 799.60, 'No Promo', 'Marseille', 19.99),
('2023-02-01', 'Pantalon bleu', 60, 1199.80, '5% off', 'Bordeaux', 19.99),
('2023-02-01', 'Pull gris', 45, 999.55, '10% off', 'Paris', 22.22),
('2023-02-01', 'Sweat à capuche', 35, 699.65, 'No Promo', 'Lille', 19.99),
('2023-03-01', 'Jupe en jean', 20, 419.80, '20% off', 'Toulouse', 20.99),
('2023-03-01', 'Robe noire', 25, 1249.75, '10% off', 'Paris', 49.99),
('2023-03-01', 'Blouson en jean', 50, 999.50, 'No Promo', 'Bordeaux', 19.99),
('2023-04-01', 'Veste en cuir', 15, 1199.85, '5% off', 'Lyon', 79.99),
('2023-04-01', 'Sneakers en toile', 30, 539.70, '15% off', 'Marseille', 17.99),
('2023-04-01', 'Short en coton', 60, 899.40, 'No Promo', 'Lille', 14.99),
('2023-05-01', 'Chapeau de paille', 40, 399.60, '10% off', 'Toulouse', 9.99),
('2023-05-01', 'Cardigan', 55, 1399.75, 'No Promo', 'Bordeaux', 25.45),
('2023-06-01', 'Jeans slim', 75, 1499.50, '20% off', 'Paris', 19.99),
('2023-06-01', 'Mocassins en cuir', 20, 799.80, 'No Promo', 'Lyon', 39.99),
('2023-07-01', 'Pantalon chino', 40, 799.60, '5% off', 'Marseille', 19.99),
('2023-07-01', 'Débardeur en coton', 90, 1079.10, 'No Promo', 'Lille', 11.99),
('2023-08-01', 'Robe été', 50, 1249.50, '10% off', 'Toulouse', 24.99),
('2023-08-01', 'Chaussettes en laine', 80, 279.80, 'No Promo', 'Paris', 3.50),
('2023-09-01', 'Sandales en cuir', 45, 539.55, '15% off', 'Bordeaux', 17.99),
('2023-09-01', 'Blouson en cuir', 25, 1999.75, 'No Promo', 'Lyon', 79.99),
('2023-10-01', 'T-shirt rayé', 50, 999.50, '5% off', 'Marseille', 19.99),
('2023-10-01', 'Pantalon cargo', 40, 799.60, '10% off', 'Lille', 19.99),
('2023-11-01', 'Chaussures de sport', 60, 1079.80, '10% off', 'Paris', 17.99),
('2023-11-01', 'Jeans classique', 70, 1199.90, 'No Promo', 'Bordeaux', 17.14),
('2023-12-01', 'Manteau hiver', 30, 1799.70, '20% off', 'Lyon', 59.99),
('2023-12-01', 'Sweat en coton', 50, 799.50, 'No Promo', 'Toulouse', 15.99),
('2023-01-02', 'T-shirt bleu', 40, 799.60, 'No Promo', 'Paris', 19.99),
('2023-01-02', 'Chaussures blanches', 20, 599.80, 'No Promo', 'Lyon', 29.99),
('2023-01-02', 'Sac à dos rouge', 30, 599.70, 'No Promo', 'Marseille', 19.99),
('2023-02-02', 'Pantalon bleu', 50, 999.50, '10% off', 'Bordeaux', 19.99),
('2023-02-02', 'Pull gris', 40, 888.80, 'No Promo', 'Paris', 22.22),
('2023-02-02', 'Sweat à capuche', 30, 599.70, '5% off', 'Lille', 19.99),
('2023-03-02', 'Jupe en jean', 15, 314.85, 'No Promo', 'Toulouse', 20.99),
('2023-03-02', 'Robe noire', 20, 999.80, 'No Promo', 'Paris', 49.99),
('2023-03-02', 'Blouson en jean', 45, 899.55, '10% off', 'Bordeaux', 19.99),
('2023-04-02', 'Veste en cuir', 10, 799.90, 'No Promo', 'Lyon', 79.99),
('2023-04-02', 'Sneakers en toile', 25, 449.75, 'No Promo', 'Marseille', 17.99),
('2023-04-02', 'Short en coton', 55, 824.45, '10% off', 'Lille', 14.99),
('2023-05-02', 'Chapeau de paille', 35, 349.65, 'No Promo', 'Toulouse', 9.99),
('2023-05-02', 'Cardigan', 50, 1272.50, 'No Promo', 'Bordeaux', 25.45),
('2023-06-02', 'Jeans slim', 70, 1399.30, 'No Promo', 'Paris', 19.99),
('2023-06-02', 'Mocassins en cuir', 15, 599.85, '5% off', 'Lyon', 39.99),
('2023-07-02', 'Pantalon chino', 45, 899.55, 'No Promo', 'Marseille', 19.99),
('2023-07-02', 'Débardeur en coton', 85, 1019.15, '5% off', 'Lille', 11.99),
('2023-08-02', 'Robe été', 45, 1124.55, 'No Promo', 'Toulouse', 24.99),
('2023-08-02', 'Chaussettes en laine', 75, 262.50, '10% off', 'Paris', 3.50),
('2023-09-02', 'Sandales en cuir', 40, 479.60, 'No Promo', 'Bordeaux', 17.99),
('2023-09-02', 'Blouson en cuir', 30, 2399.70, '15% off', 'Lyon', 79.99),
('2023-10-02', 'T-shirt rayé', 45, 899.55, 'No Promo', 'Marseille', 19.99),
('2023-10-02', 'Pantalon cargo', 35, 699.65, 'No Promo', 'Lille', 19.99),
('2023-11-02', 'Chaussures de sport', 50, 899.50, '10% off', 'Paris', 17.99),
('2023-11-02', 'Jeans classique', 60, 1079.40, '15% off', 'Bordeaux', 17.14),
('2023-12-02', 'Manteau hiver', 25, 1499.75, 'No Promo', 'Lyon', 59.99),
('2023-12-02', 'Sweat en coton', 40, 639.60, 'No Promo', 'Toulouse', 15.99)
