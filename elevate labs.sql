DROP TABLE IF EXISTS expenses;
CREATE TABLE expenses (
  id int NOT NULL AUTO_INCREMENT,
  category varchar(50) DEFAULT NULL,
  description varchar(255) DEFAULT NULL,
  amount decimal(10,2) DEFAULT NULL,
  date date DEFAULT NULL,
  PRIMARY KEY (id));
  INSERT INTO expenses VALUES (1,'Groceries','Milk',20.00,'2024-06-15'),
  (2,'Entertainment','Movie ticket',12.50,'2024-06-18'),
  (3,'Groceries','Fruits',35.75,'2024-06-20'),
  (4,NULL,'Transportation',5.00,'2024-06-17'),
  (5,'Entertainment','Concert ticket',45.00,'2024-06-21'),
  (6,'Dining Out','Restaurant dinner',30.00,'2024-06-19'),
  (7,'Clothing',NULL,15.99,'2026-04-12'),
  (8,'Bills','Electricity bill',75.40,'2027-02-01'),
  (9,'Other','Gift for friend',22.00,NULL),
  (10,'Travel','Flight ticket',350.00,'2029-08-10');
  
  SELECT * FROM expenses;
  
  -- Question 1.1 
  INSERT INTO expenses (id, category, description, amount, date) 
  VALUES (11, 'Groceries', 'Kitchenware', 55.75, '2028-11-22');
  
  SELECT * FROM expenses;
  
  -- Question 1.2
  UPDATE expenses
  SET category = 'Entertainment'
  WHERE id = 8;
  
  SELECT * FROM expenses;
  -- Question 1.3
  DELETE FROM expenses
  WHERE id = 5;
  
  -- Bonus
  SELECT date, category,
  COALESCE(category, date, amount, 'Not provided') AS Details
  FROM expenses;
  
  
  CREATE VIEW expense_tracker.myview AS
  SELECT * FROM expenses
  WHERE id = 1;
  
  SELECT * FROM expense_tracker.myview;
  
  CREATE VIEW expense_tracker.secondview AS
  SELECT * FROM income
  WHERE income_id =1;
  
  SELECT * FROM expense_tracker.secondview;
  
  CREATE VIEW test.myview AS
  SELECT * FROM test.data
  WHERE Name = 'Akanimo Eyoma';
  
  SELECT * FROM test.myview;
  
  CREATE VIEW test.secondview AS
  SELECT * FROM test.data
  WHERE Score > 86;
  
  SELECT * FROM test.secondview;
  
  
  SELECT Name,Age FROM test.data
  WHERE EXISTS (SELECT Name WHERE Age=21);
  
  
SELECT Name,Age FROM test.data
WHERE NOT EXISTS (SELECT Name WHERE Age=21);

 SELECT * FROM test.data
  WHERE EXISTS (SELECT Name WHERE Age=21);
  
  SELECT * FROM expense_tracker.expenses
  WHERE category IN (SELECT category WHERE amount >50.00);