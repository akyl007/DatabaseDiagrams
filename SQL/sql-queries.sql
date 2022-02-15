SELECT * FROM "customer" LIMIT 50;

INSERT INTO customer (CustomerID, Email, Name)
VALUES (1, 'friendly@mail.ru', 'Andrew');

INSERT INTO customer (CustomerID, Email, Name)
VALUES (2, 'pretty@bk.com', 'Samanta');

INSERT INTO customer (CustomerID, Email, Name)
VALUES (3, 'happiness@mail.ru', 'Hloje');


SELECT * FROM Services;
INSERT INTO services (ServicesID,name,cost)
VALUES (25, 'debt', 1200);

INSERT INTO services (ServicesID,name,cost)
VALUES (26, 'fire', 800);
INSERT INTO services (ServicesID,name,cost)
VALUES (27, 'loan', 1300);

SELECT * FROM Product;

INSERT INTO Product (ProductID, services, type)
VALUES (123, 'credit', 'payment');

INSERT INTO Product (ProductID, services, type)
VALUES (124, 'creditCard', 'buying');

-- zobrazuje, které služby stojí více než 1000
SELECT ServicesID, SUM(cost) FROM services
GROUP BY ServicesID
HAVING SUM(cost) > 1000;

-- zobrazuje každého zákazníka a jeho vybranou službu.
SELECT CustomerID, ServicesID FROM customer INNER JOIN Services
ON customer.customerID = services.ServicesID;

-- kombinuje jméno a id zaměstnanců a zákazníků
SELECT Name, CustomerID FROM customer
	UNION ALL
SELECT Name, ID FROM Employee;

-- vybírá produkty s omezeným počtem 4 a seřazené sestupně.
SELECT * FROM Product 
ORDER BY ProductID DESC
LIMIT 4;