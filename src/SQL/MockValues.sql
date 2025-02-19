INSERT INTO category (categoryname)
VALUES ("Phones"), 
 ("Accessories"), 
 ("TVs"), 
 ("Speakers"), 
 ("Headphones"), 
 ("Computers"); 
 
INSERT INTO deliveryservice (DeliveryServiceName)
VALUES ("DHL"), 
 ("Postnord"), 
 ("Schenker"); 
 

INSERT INTO manufacturer (ManufacturerName)
VALUES ("Apple"), 
 ("Samsung"), 
 ("Sony"), 
 ("Lenovo"), 
 ("JBL"), 
 ("LG"); 
 
select * from manufacturer;

INSERT INTO customer (PersonName, PhoneNumber, Address, Email)
VALUES ("Adam Svensson", 0731234567, "Gatuvägen 1", "Adam@mail.com"), 
("Bob Smith", 0732345678, "Gatuvägen 2", "Bob@mail.com"), 
("Cecilia Granquist", 0733456789, "Gatuvägen 3", "Cecilia@mail.com"), 
("Dogglas Bengtsson", 0761234567, "Gatuvägen 4", "Dogglas@mail.com"), 
("Erik Eriksson", 0731234567, "Gatuvägen 1", "Erik@mail.com"), 
("Fredrik Asplund", 0701234567, "Gatuvägen 6", "Fredrik@mail.com"); 

INSERT INTO product (ProductName, ProductDescription, Price, inventory, ManufacturerID, CategoryID)
VALUES 
("Macbook Air", "Super slim, super fast", 11999.99, 10, 1, 6), 
("Macbook Pro", "slimer, faster", 19999.99, 10, 1, 6), 
("Iphone 15", "Now with USB-C", 8999.99, 10, 1, 1), 
("Iphone 15 Pro", "Now with USB-C", 12999.99, 10, 1, 1), 
("Airpods Pro", "slimer, faster", 3999.99, 10, 1, 5), 
("XM4", "Best in class ANC", 2999.99, 50, 3, 5), 
("Xperia 1 VI", "Has a heaphone jack", 7999.99, 50, 3, 1), 
("Xperia 5 VI", "Has a heaphone jack", 4999.99, 50, 3, 1), 
("BRAVIA A90K", "OLED, perfect for gaming", 13999.99, 15, 3, 3), 
("Thinkpad T15", "For serious work on the go", 21999.99, 18, 4, 6), 
("Thinkpad T14", "For serious work on the go", 16999.99, 18, 4, 6), 
("Live 660NC", "ANC", 1999.99, 60, 1, 5), 
("Flip 6", "A speaker for the masses", 500, 100, 5, 4), 
("S90D", "Gaming TV OLED", 8999.99, 10, 2, 3), 
("Galaxy S25", "Smarter phone", 8999.99, 10, 2, 1), 
("Galaxy S25 Ultra", "Smarter phone", 12999.99, 10, 2, 1), 
("Q800D", "5.1 speaker system", 6999.99, 10, 2, 4)
; 





