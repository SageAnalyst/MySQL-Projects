--  Sample Product database
-- Current relational schema by Jamiu Gbadamosi
--  Original data created by Xoxho Xpress

-- linkedin; www.linkedin.com/in/jamiu-gbadamosi-ba342326a
-- portfolio; https://jamiugbadamosi.netlify.app/
-- Github; https://github.com/SageAnalyst/MySQL-Projects

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

/*!50503 set default_storage_engine = InnoDB */;
/*!50503 select CONCAT('storage engine: ', @@default_storage_engine) as INFO */;   

DROP DATABASE IF EXISTS Product_mod;
CREATE DATABASE IF NOT EXISTS Product_mod;
USE Product_mod;

DROP TABLE IF EXISTS Products_dets;
CREATE TABLE IF NOT EXISTS Products_dets
	(
		collection_id   CHAR(4) 					NOT NULL,
        Product_name    VARCHAR(21)					NOT NULL,
        Product_color   VARCHAR(21)					NOT NULL,
        Product_size    ENUM('M','L','XL','XXL')    NOT NULL,
        Launch_date     DATE 						NOT NULL,
        PRIMARY KEY (collection_id)
	);
    
DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales
   ( 
	   collection_id  	CHAR(4)			NOT NULL,
       Quantity_sold    INT             NOT NULL,
       Price_each       INT             NOT NULL,
       Order_date       DATE            NOT NULL,
       PRIMARY KEY (collection_id,order_date)
	);
    
DROP TABLE IF EXISTS location;
CREATE TABLE IF NOT EXISTS location
(
	 collection_id  	CHAR(4)			NOT NULL,
     order_address      VARCHAR(50)     NOT NULL,
     State              VARCHAR(14)     NOT NULL,
     Delivery_fee              INT     NOT NULL,
     PRIMARY KEY (collection_id,order_address)
);

DROP TABLE IF EXISTS Outreach;
CREATE TABLE IF NOT EXISTS Outreach
(
	order_address      VARCHAR(50)     NOT NULL,
	collection_id  	   CHAR(4)		   NOT NULL,
    Outreach           VARCHAR(16)     NOT NULL,
    PRIMARY KEY (collection_id,order_address)
);

# Update inventory levels
-- UPDATE table_name SET column_n = value_x WHERE condition(s);

# Manage Reordering:  Retrieve products information for reordering
-- SELECT column_n FROM table_name WHERE condition(s);

# Generate Reports: Calculate the total quantity of products based on conditions to get suitable results for reports
-- SELECT column_n FROM table_name GROUP BY coulmn_n ORDER BY column_n DESC LIMIT value;

#Please note queries are simplified and may require adjustments to match your objective, Goodluck!

  

   

INSERT INTO products_dets( collection_id, Product_name, Product_color, Product_size, Launch_date)
	VALUES
		('H001', 'Custom Hoodie', 'Black', 'L', '1990-02-06'),
        ('H002', 'Custom Hoodie', 'Blue', 'L', '1990-02-06'),
        ('H003', 'Custom Hoodie', 'yellow', 'L', '1990-02-06'),
        ('H004', 'Custom Hoodie', 'Green', 'L', '1990-02-06'),
        ('H005', 'Custom Hoodie', 'Red', 'L', '1990-02-06'),
        ('H006', 'Custom Hoodie', 'Orange', 'L', '1990-02-06'),
        ('H007', 'Custom Hoodie', 'Indigo', 'L', '1990-02-06'),
        ('H008', 'Custom Hoodie', 'Violet', 'L', '1990-02-06'),
        ('H009', 'Custom Hoodie', 'Black', 'M', '1990-02-06'),
        ('H010', 'Custom Hoodie', 'Black', 'XL', '1990-02-21'),
        ('H011', 'Custom Hoodie', 'Black', 'XXL', '1990-02-14'),
        ('H012', 'Custom Hoodie', 'Blue', 'M', '1990-02-06'),
        ('H013', 'Custom Hoodie', 'Blue', 'XL', '1990-02-21'),
        ('H014', 'Custom Hoodie', 'Blue', 'XXL', '1990-02-14'),
        ('H015', 'Custom Hoodie', 'yellow', 'M', '1990-02-06'),
        ('H016', 'Custom Hoodie', 'yellow', 'XL', '1990-02-21'),
        ('H017', 'Custom Hoodie', 'yellow', 'XXL', '1990-02-14'),
        ('H018', 'Custom Hoodie', 'Green', 'M', '1990-02-06'),
        ('H019', 'Custom Hoodie', 'Green', 'XL', '1990-02-21'),
        ('H020', 'Custom Hoodie', 'Green', 'XXL', '1990-02-14'),
        ('H021', 'Custom Hoodie', 'Red', 'M', '1990-02-06'),
        ('H022', 'Custom Hoodie', 'Red', 'XL', '1990-02-21'),
        ('H023', 'Custom Hoodie', 'Red', 'XXL', '1990-02-14'),
        ('H024', 'Custom Hoodie', 'Orange', 'M', '1990-02-06'),
        ('H025', 'Custom Hoodie', 'Orange', 'XL', '1990-02-21'),
        ('H026', 'Custom Hoodie', 'Orange', 'XXL', '1990-02-14'),
        ('H027', 'Custom Hoodie', 'Indigo', 'M', '1990-02-06'),
        ('H028', 'Custom Hoodie', 'Indigo', 'XL', '1990-02-21'),
        ('H029', 'Custom Hoodie', 'Indigo', 'XXL', '1990-02-14'),
        ('H030', 'Custom Hoodie', 'Violet', 'M', '1990-02-06'),
        ('H031', 'Custom Hoodie', 'Violet', 'XL', '1990-02-21'),
        ('H032', 'Custom Hoodie', 'Violet', 'XXL', '1990-02-14'),
        ('C001', 'Cargopants', 'Black', 'M', '1989-10-18'),
        ('C002', 'Cargopants', 'Red', 'M', '1989-09-18'),
        ('C003', 'Cargopants', 'Orange', 'M', '1989-08-18'),
        ('C004', 'Cargopants', 'Yellow', 'M', '1989-07-18'),
        ('C005', 'Cargopants', 'Green', 'M', '1989-06-18'),
        ('C006', 'Cargopants', 'Blue', 'M', '1989-05-18'),
        ('C007', 'Cargopants', 'Indigo', 'M', '1989-04-18'),
        ('C008', 'Cargopants', 'Black', 'L', '1989-10-18'),
        ('C009', 'Cargopants', 'Red', 'L', '1989-09-18'),
        ('C010', 'Cargopants', 'Orange', 'L', '1989-08-18'),
        ('C011', 'Cargopants', 'Yellow', 'L', '1989-07-18'),
        ('C012', 'Cargopants', 'Green', 'L', '1989-06-18'),
        ('C013', 'Cargopants', 'Blue', 'L', '1989-05-18'),
        ('C014', 'Cargopants', 'Indigo', 'L', '1989-04-18'),
        ('C015', 'Cargopants', 'Black', 'XL', '1989-10-18'),
        ('C016', 'Cargopants', 'Red', 'XL', '1989-09-18'),
        ('C017', 'Cargopants', 'Orange', 'XL', '1989-08-18'),
        ('C018', 'Cargopants', 'Yellow', 'XL', '1989-07-18'),
        ('C019', 'Cargopants', 'Green', 'XL', '1989-06-18'),
        ('C020', 'Cargopants', 'Blue', 'XL', '1989-05-18'),
        ('C021', 'Cargopants', 'Indigo', 'XL', '1989-04-18'),
		('C022', 'Cargopants', 'Black', 'XXL', '1989-10-18'),
        ('C023', 'Cargopants', 'Red', 'XXL', '1989-09-18'),
        ('C024', 'Cargopants', 'Orange', 'XXL', '1989-08-18'),
        ('C025', 'Cargopants', 'Yellow', 'XXL', '1989-07-18'),
        ('C026', 'Cargopants', 'Green', 'XXL', '1989-06-18'),
        ('C027', 'Cargopants', 'Blue', 'XXL', '1989-05-18'),
        ('C028', 'Cargopants', 'Indigo', 'XXL', '1989-04-18'),
        ('S001', 'Sweatshirt', 'Black', 'L', '1990-02-06'),
        ('S002', 'Sweatshirt', 'Blue', 'L', '1990-02-06'),
        ('S003', 'Sweatshirt', 'yellow', 'L', '1990-02-06'),
        ('S004', 'Sweatshirt', 'Green', 'L', '1990-02-06'),
        ('S005', 'Sweatshirt', 'Red', 'L', '1990-02-06'),
        ('S006', 'Sweatshirt', 'Orange', 'L', '1990-02-06'),
        ('S007', 'Sweatshirt', 'Indigo', 'L', '1990-02-06'),
        ('S008', 'Sweatshirt', 'Violet', 'L', '1990-02-06'),
        ('S009', 'Sweatshirt', 'Black', 'M', '1990-02-06'),
        ('S010', 'Sweatshirt', 'Black', 'XL', '1990-02-21'),
        ('S011', 'Sweatshirt', 'Black', 'XXL', '1990-02-14'),
        ('S012', 'Sweatshirt', 'Blue', 'M', '1990-02-06'),
        ('S013', 'Sweatshirt', 'Blue', 'XL', '1990-02-21'),
        ('S014', 'Sweatshirt', 'Blue', 'XXL', '1990-02-14'),
        ('S015', 'Sweatshirt', 'yellow', 'M', '1990-02-06'),
        ('S016', 'Sweatshirt', 'yellow', 'XL', '1990-02-21'),
        ('S017', 'Sweatshirt', 'yellow', 'XXL', '1990-02-14'),
        ('S018', 'Sweatshirt', 'Green', 'M', '1990-02-06'),
        ('S019', 'Sweatshirt', 'Green', 'XL', '1990-02-21'),
        ('S020', 'Sweatshirt', 'Green', 'XXL', '1990-02-14'),
        ('S021', 'Sweatshirt', 'Red', 'M', '1990-02-06'),
        ('S022', 'Sweatshirt', 'Red', 'XL', '1990-02-21'),
        ('S023', 'Sweatshirt', 'Red', 'XXL', '1990-02-14'),
        ('S024', 'Sweatshirt', 'Orange', 'M', '1990-02-06'),
        ('S025', 'Sweatshirt', 'Orange', 'XL', '1990-02-21'),
        ('S026', 'Sweatshirt', 'Orange', 'XXL', '1990-02-14'),
        ('S027', 'Sweatshirt', 'Indigo', 'M', '1990-02-06'),
        ('S028', 'Sweatshirt', 'Indigo', 'XL', '1990-02-21'),
        ('S029', 'Sweatshirt', 'Indigo', 'XXL', '1990-02-14'),
        ('S030', 'Sweatshirt', 'Violet', 'M', '1990-02-06'),
        ('S031', 'Sweatshirt', 'Violet', 'XL', '1990-02-21'),
        ('S032', 'Sweatshirt', 'Violet', 'XXL', '1990-02-14');
        
        
INSERT INTO sales(collection_id, Quantity_sold, Price_each, Order_date)
VALUES(
	'S031', 3, 5000, '2011-01-03'),
    ('S030', 6, 6000, '2012-01-03'),
    ('S029', 9, 8000, '2013-01-03'),
    ('S028', 1, 5000, '2014-12-03'),
    ('S027', 8, 9000, '2015-10-03'),
    ('S026', 49, 4000, '2016-09-03'),
    ('S025', 73, 5500, '2017-08-03'),
    ('S024', 53, 5900, '2018-07-03'),
    ('S031', 38, 5300, '2019-06-03'),
    ('S023', 35, 6000, '2020-11-03'),
    ('S022', 33, 6500, '2021-02-03'),
    ('S021', 35, 6400, '2022-02-23'),
    ('S020', 98, 5000, '2023-01-23'),
    ('S019', 23, 5000, '2024-01-22'),
    ('S018', 12, 3000, '2025-01-25'),
    ('S017', 7, 3500, '2026-01-17'),
    ('S030', 6, 5000, '2027-01-03'),
    ('S029', 9, 7500, '2028-01-03'),
    ('C028', 1, 7000, '2029-12-03'),
    ('C027', 8, 8000, '2030-10-03'),
    ('C026', 49, 9000, '2031-09-03'),
    ('C025', 73, 9500, '2032-08-03'),
    ('C024', 53, 8500, '2033-09-03'),
    ('H031', 38, 3500, '2034-08-03'),
    ('H023', 35, 1200, '2010-07-03'),
    ('H022', 33, 7500, '2010-06-03'),
    ('H021', 35, 10000, '2010-05-23'),
    ('H020', 98, 8600, '2010-04-23'),
    ('H019', 23, 5700, '2010-03-22'),
    ('H018', 12, 5900, '2010-02-01'),
    ('H017', 7, 6900, '2010-01-02'),
    ('H030', 6, 9600, '2010-01-03'),
    ('H029', 9, 8800, '2010-01-04'),
    ('H028', 1, 12800, '2010-12-05'),
    ('H027', 8, 7200, '2010-10-06'),
    ('H026', 49, 6700, '2010-09-07'),
    ('H025', 73, 13400, '2010-08-08'),
    ('H024', 53, 14500, '2010-07-09'),
    ('H031', 38, 12000, '2010-06-10'),
    ('H023', 35, 10000, '2010-11-11'),
    ('H022', 33, 2400, '2010-02-12'),
    ('H021', 35, 5300, '2010-02-13'),
    ('H020', 98, 8700, '2010-01-14'),
    ('H019', 23, 6700, '2010-01-15'),
    ('H018', 12, 7000, '2010-01-16'),
    ('H017', 7, 9000, '2010-06-17');
        
INSERT INTO Outreach(order_address, collection_id, Outreach)
VALUES
	('no2 akoka, uni rd', 'S031', 'whatsapp'),
    ('no3 akoka, uni rd', 'S030', 'Facebook'),
    ('no4 akoka, uni rd', 'S029', 'Instagram'),
    ('no5 akoka, uni rd', 'S028', 'Website'),
    ('no6 akoka, uni rd', 'S028', 'whatsapp'),
    ('no7 akoka, uni rd', 'S027', 'Facebook'),
    ('no4 akoka, uni rd', 'S026', 'Instagram'),
    ('no5 akoka, uni rd', 'S025', 'Website'),
    ('no2 akoka, uni rd', 'S024', 'whatsapp'),
    ('no3 akoka, uni rd', 'S023', 'Facebook'),
    ('no4 akoka, uni rd', 'S022', 'Instagram'),
    ('no5 akoka, uni rd', 'S021', 'Website'),
    ('no2 akoka, uni rd', 'S020', 'whatsapp'),
    ('no3 akoka, uni rd', 'S019', 'Facebook'),
    ('no4 akoka, uni rd', 'S018', 'Instagram'),
    ('no5 akoka, uni rd', 'S017', 'Website'),
    ('no2 akoka, uni rd', 'S016', 'whatsapp'),
    ('no3 akoka, uni rd', 'C028', 'Facebook'),
    ('no4 akoka, uni rd', 'C027', 'Instagram'),
    ('no5 akoka, uni rd', 'C026', 'Website'),
     ('no3 akoka, uni rd', 'C025', 'Facebook'),
    ('no4 akoka, uni rd', 'C024', 'Instagram'),
    ('no5 akoka, uni rd', 'H031', 'Website'),
    ('no2 akoka, uni rd', 'H030', 'whatsapp'),
    ('no3 akoka, uni rd', 'H029', 'Facebook'),
    ('no4 akoka, uni rd', 'H028', 'Instagram'),
    ('no5 akoka, uni rd', 'H027', 'Website'),
    ('no2 akoka, uni rd', 'H026', 'Whatsapp'),
    ('no3 akoka, uni rd', 'H025', 'Facebook'),
    ('no4 akoka, uni rd', 'H024', 'Instagram'),
    ('no5 akoka, uni rd', 'H023', 'Website'),
    ('no2 akoka, uni rd', 'H022', 'Whatsapp'),
    ('no3 akoka, uni rd', 'H021', 'Facebook'),
    ('no4 akoka, uni rd', 'H020', 'Instagram'),
    ('no5 akoka, uni rd', 'H019', 'Website'),
    ('no2 akoka, uni rd', 'H018', 'Whatsapp'),
    ('no3 akoka, uni rd', 'H017', 'Facebook');
    
INSERT INTO location(collection_id, order_address, state, Delivery_fee)
VALUES
	('H001', 'no5 akoka, uni rd', 'Lagos', 3500),
    ('H002', 'no4 akoka, uni rd', 'Lagos', 3500),
    ('H003', 'no3 akoka, uni rd', 'Lagos', 3500),
    ('H004', 'no2 akoka, uni rd', 'Lagos', 3500),
    ('H005', 'no5 akoka, uni rd', 'Lagos', 3500),
	('C001', 'no5 akoka, uni rd', 'Lagos', 3500),
    ('C002', 'no4 akoka, uni rd', 'Lagos', 3500),
    ('C003', 'no3 akoka, uni rd', 'Lagos', 3500),
    ('C004', 'no2 akoka, uni rd', 'Lagos', 3500),
    ('C005', 'no5 akoka, uni rd', 'Lagos', 3500),
	('S001', 'no5 akoka, uni rd', 'Lagos', 3500),
    ('S002', 'no4 akoka, uni rd', 'Lagos', 3500),
    ('S003', 'no3 akoka, uni rd', 'Lagos', 3500),
    ('S004', 'no2 akoka, uni rd', 'Lagos', 3500),
    ('S005', 'no5 akoka, uni rd', 'Lagos', 3500);
    
INSERT INTO location(collection_id, order_address, state, Delivery_fee)
VALUES
	('S013', 'Sango Ota Rd', 'Ogun', 1500),
    ('C020', 'Signature Villa, Ikota Villa Gra', 'Lagos', 7000),
    ('S017', 'Chief Bamidele Eletu Rd, Osapa London', 'Osun', 3000),
    ('S019', 'Iwo Rd, Bowen', 'Osun', 6500),
    ('C023', 'Covenant Rd', 'Ogun', 4500);

INSERT INTO location(collection_id, order_address, state, Delivery_fee)
VALUES
		 ('H023', 'Bodija Rd', 'Ibadan', 3200);
