CREATE DATABASE risk_management;
USE risk_management;

CREATE TABLE counterparties (
    id_counterparty INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    sector VARCHAR(100),
    credit_rating VARCHAR(10),
    country VARCHAR(100)
);

CREATE TABLE exposures (
    id_exposure INT PRIMARY KEY AUTO_INCREMENT,
    id_counterparty INT,
    amount_due DECIMAL(15,2),
    amount_default DECIMAL(15,2),
    limit_authorized DECIMAL(15,2),
    date_exposure DATE,
    type_of_exposure VARCHAR(100),
    FOREIGN KEY (id_counterparty) REFERENCES counterparties(id_counterparty)
);

INSERT INTO counterparties (name, sector, credit_rating, country) VALUES
('HSBC', 'Banking', 'AA', 'UK'),
('BNP Paribas', 'Banking', 'AA', 'France'),
('Santander', 'Banking', 'A', 'Spain'),
('Deutsche Bank', 'Banking', 'BBB', 'Germany'),
('TotalEnergies', 'Energy', 'A', 'France'),
('ExxonMobil', 'Energy', 'AA', 'USA'),
('Apple', 'Technology', 'AA', 'USA'),
('Microsoft', 'Technology', 'AAA', 'USA'),
('Siemens', 'Industry', 'A', 'Germany'),
('BASF', 'Industry', 'A', 'Germany'),
('Alibaba', 'Technology', 'A', 'China'),
('Tencent', 'Technology', 'A', 'China'),
('Volkswagen', 'Industry', 'BBB', 'Germany'),
('Renault', 'Industry', 'BB', 'France'),
('Airbus', 'Industry', 'A', 'Netherlands'),
('Pfizer', 'Healthcare', 'AA', 'USA'),
('Novartis', 'Healthcare', 'AA', 'Switzerland'),
('Sanofi', 'Healthcare', 'A', 'France'),
('Nestlé', 'Food', 'AA', 'Switzerland'),
('Coca-Cola', 'Food', 'A', 'USA'),
('PepsiCo', 'Food', 'A', 'USA'),
('LVMH', 'Luxury', 'AA', 'France'),
('Hermès', 'Luxury', 'AA', 'France'),
('Zara', 'Retail', 'BBB', 'Spain'),
('Carrefour', 'Retail', 'BBB', 'France'),
('Tesco', 'Retail', 'BBB', 'UK'),
('Facebook', 'Technology', 'AA', 'USA'),
('Amazon', 'Technology', 'AA', 'USA'),
('Netflix', 'Technology', 'BB', 'USA'),
('Tesla', 'Technology', 'BB', 'USA'),
('BP', 'Energy', 'A', 'UK'),
('Shell', 'Energy', 'AA', 'Netherlands'),
('Engie', 'Energy', 'A', 'France'),
('EDF', 'Energy', 'BBB', 'France'),
('UBS', 'Banking', 'A', 'Switzerland'),
('Credit Suisse', 'Banking', 'BB', 'Switzerland'),
('Morgan Stanley', 'Banking', 'A', 'USA'),
('Goldman Sachs', 'Banking', 'A', 'USA'),
('JP Morgan', 'Banking', 'AA', 'USA'),
('Barclays', 'Banking', 'A', 'UK'),
('Societe Generale', 'Banking', 'BBB', 'France'),
('Crédit Agricole', 'Banking', 'A', 'France'),
('Orange', 'Telecom', 'BBB', 'France'),
('AT&T', 'Telecom', 'BBB', 'USA'),
('Verizon', 'Telecom', 'A', 'USA'),
('Air France', 'Transport', 'BB', 'France'),
('Delta Airlines', 'Transport', 'BB', 'USA'),
('BMW', 'Industry', 'A', 'Germany');


INSERT INTO exposures (id_counterparty, amount_due, amount_default, limit_authorized, date_exposure, type_of_exposure) VALUES
(1, 1200000, 0, 1500000, '2025-01-10', 'Loan'),
(2, 900000, 0, 1000000, '2025-01-15', 'Loan'),
(3, 700000, 50000, 800000, '2025-02-01', 'Loan'),
(4, 850000, 120000, 800000, '2025-02-10', 'Loan'),
(5, 500000, 0, 600000, '2025-02-20', 'Derivative'),
(6, 450000, 0, 500000, '2025-03-01', 'Derivative'),
(7, 300000, 0, 400000, '2025-03-05', 'Trade Finance'),
(8, 200000, 0, 300000, '2025-03-15', 'Trade Finance'),
(9, 750000, 0, 800000, '2025-04-01', 'Loan'),
(10, 600000, 0, 700000, '2025-04-05', 'Loan'),
(11, 900000, 200000, 850000, '2025-04-20', 'Derivative'),
(12, 500000, 0, 550000, '2025-04-25', 'Derivative'),
(13, 950000, 100000, 1000000, '2025-05-05', 'Loan'),
(14, 400000, 0, 450000, '2025-05-15', 'Trade Finance'),
(15, 380000, 0, 400000, '2025-05-20', 'Loan'),
(16, 610000, 0, 700000, '2025-06-01', 'Loan'),
(17, 720000, 50000, 750000, '2025-06-10', 'Loan'),
(18, 830000, 0, 900000, '2025-06-15', 'Loan'),
(19, 600000, 0, 650000, '2025-06-20', 'Trade Finance'),
(20, 560000, 30000, 600000, '2025-07-01', 'Derivative'),
(21, 510000, 0, 550000, '2025-07-10', 'Loan'),
(22, 470000, 0, 500000, '2025-07-15', 'Loan'),
(23, 680000, 0, 700000, '2025-08-01', 'Trade Finance'),
(24, 750000, 50000, 800000, '2025-08-10', 'Derivative'),
(25, 590000, 0, 600000, '2025-08-15', 'Loan'),
(26, 470000, 0, 500000, '2025-08-20', 'Loan'),
(27, 430000, 100000, 400000, '2025-09-01', 'Derivative'),
(28, 390000, 0, 450000, '2025-09-05', 'Loan'),
(29, 370000, 0, 400000, '2025-09-10', 'Loan'),
(30, 310000, 0, 350000, '2025-09-15', 'Loan'),
(31, 290000, 0, 300000, '2025-09-20', 'Loan'),
(32, 270000, 0, 300000, '2025-09-25', 'Trade Finance'),
(33, 600000, 0, 650000, '2025-10-01', 'Loan'),
(34, 800000, 0, 900000, '2025-10-10', 'Derivative'),
(35, 750000, 0, 800000, '2025-10-15', 'Trade Finance'),
(36, 620000, 0, 700000, '2025-10-20', 'Loan'),
(37, 700000, 0, 800000, '2025-10-25', 'Loan'),
(38, 680000, 0, 700000, '2025-11-01', 'Trade Finance'),
(39, 500000, 0, 600000, '2025-11-10', 'Loan'),
(40, 480000, 0, 500000, '2025-11-15', 'Loan'),
(41, 470000, 0, 500000, '2025-11-20', 'Loan'),
(42, 450000, 0, 500000, '2025-11-25', 'Derivative'),
(43, 430000, 0, 450000, '2025-12-01', 'Trade Finance'),
(44, 410000, 0, 450000, '2025-12-10', 'Loan'),
(45, 390000, 0, 400000, '2025-12-15', 'Loan'),
(46, 370000, 0, 400000, '2025-12-20', 'Loan'),
(47, 350000, 0, 380000, '2025-12-25', 'Trade Finance'),
(48, 320000, 0, 350000, '2025-12-30', 'Loan');

SELECT * FROM counterparties;
SELECT * FROM exposures ;

SELECT name, 
	sector, 
    country, 
    amount_due, 
    limit_authorized, 
    amount_due - limit_authorized AS excess_amount
FROM counterparties c
JOIN exposures e ON c.id_counterparty=e.id_counterparty
WHERE amount_due > limit_authorized;

SELECT
	sector, 
    sum(amount_default) AS total_default_amount
FROM counterparties c
JOIN exposures e ON c.id_counterparty = e.id_counterparty
GROUP BY sector;

SELECT (count(CASE WHEN amount_default > 0 THEN 1 END)/count(*))*100 AS default_rate
FROM exposures;

SELECT
	name,
    sector,
    country,
    amount_default
FROM counterparties c
JOIN exposures e ON c.id_counterparty = e.id_counterparty
ORDER BY amount_default DESC
LIMIT 5;

SELECT 
	date_format(date_exposure, '%Y-%m') AS month,
    sum(amount_due) AS total_amount_due
FROM exposures
GROUP BY month
ORDER BY month;
	