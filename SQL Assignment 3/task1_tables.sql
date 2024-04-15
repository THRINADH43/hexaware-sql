create table Customers1 (
customer_id int	primary key,
first_name varchar(20),
last_name varchar(20),
DOB date,
email varchar(50),
phone_number int,
address varchar(75)
);

create table Accounts(
account_id int primary key,
customer_id int references Customers,
account_type varchar(20),
balance numeric(10,2)
);

create table Transactions(
transaction_id int primary key,
account_id int references Accounts,
transaction_type varchar(20),
amount numeric(10,2),
transaction_date date
);


INSERT INTO Customers1 VALUES (1, 'John', 'Doe', '1990-01-01', 'john.doe@example.com', 999456789, 'Main St');
INSERT INTO Customers1 VALUES (2, 'Jane', 'Smith', '1985-05-15', 'jane.smith@example.com', 987643210, ' Oak Ave');
INSERT INTO Customers1 VALUES (3, 'Alice', 'Johnson', '1978-11-20', 'alice.johnson@example.com', 56123890, ' Elm St');
INSERT INTO Customers1 VALUES (4, 'Bob', 'Brown', '1995-03-10', 'bob.brown@example.com', 789451230, ' Pine St');
INSERT INTO Customers1 VALUES (5, 'Eve', 'Taylor', '1980-07-25', 'eve.taylor@example.com', 65498210, 'Cedar Ave');
INSERT INTO Customers1 VALUES (6, 'Mike', 'Williams', '1972-09-30', 'mike.williams@example.com', 889954870, ' Birch St');
INSERT INTO Customers1 VALUES (7, 'Sarah', 'Davis', '1992-02-28', 'sarah.davis@example.com', 777783210, ' Maple Ave');
INSERT INTO Customers1 VALUES (8, 'Alex', 'Martinez', '1987-06-12', 'alex.martinez@example.com', 987316540, ' Oak St');
INSERT INTO Customers1 VALUES (9, 'Grace', 'Jackson', '1975-08-18', 'grace.jackson@example.com', 85753468, ' Pine Ave');
INSERT INTO Customers1 VALUES (10, 'Kevin', 'Lee', '1998-04-05', 'kevin.lee@example.com', 969691468, 'Elm St');


INSERT INTO Accounts VALUES (1, 1, 'savings', 5000);
INSERT INTO Accounts VALUES (2, 2, 'current', 10000);
INSERT INTO Accounts VALUES (3, 3, 'savings', 7500);
INSERT INTO Accounts VALUES (4, 4, 'current', 12000);
INSERT INTO Accounts VALUES (5, 5, 'savings', 3000);
INSERT INTO Accounts VALUES (6, 6, 'current', 15000);
INSERT INTO Accounts VALUES (7, 7, 'savings', 20000);
INSERT INTO Accounts VALUES (8, 8, 'current', 8000);
INSERT INTO Accounts VALUES (9, 9, 'savings', 1000);
INSERT INTO Accounts VALUES (10, 10, 'current', 25000);


INSERT INTO Transactions VALUES (1, 1, 'deposit', 1000, '2024-04-01');
INSERT INTO Transactions VALUES (2, 1, 'withdrawal', 500, '2024-04-03');
INSERT INTO Transactions VALUES (3, 2, 'deposit', 2000, '2024-04-02');
INSERT INTO Transactions VALUES (4, 2, 'transfer', 1000, '2024-04-04');
INSERT INTO Transactions VALUES (5, 3, 'deposit', 500, '2024-04-01');
INSERT INTO Transactions VALUES (6, 3, 'withdrawal', 200, '2024-04-03');
INSERT INTO Transactions VALUES (7, 4, 'deposit', 1500, '2024-04-02');
INSERT INTO Transactions VALUES (8, 4, 'withdrawal', 500, '2024-04-04');
INSERT INTO Transactions VALUES (9, 5, 'deposit', 200, '2024-04-01');
INSERT INTO Transactions VALUES (10, 5, 'transfer', 100, '2024-04-03');
INSERT INTO Transactions VALUES (11, 6, 'deposit', 3000, '2024-04-02');
INSERT INTO Transactions VALUES (12, 6, 'withdrawal', 2000, '2024-04-04');
INSERT INTO Transactions VALUES (13, 7, 'deposit', 10000, '2024-04-01');
INSERT INTO Transactions VALUES (14, 7, 'withdrawal', 5000, '2024-04-03');
INSERT INTO Transactions VALUES (15, 8, 'deposit', 4000, '2024-04-02');
INSERT INTO Transactions VALUES (16, 8, 'withdrawal', 2000, '2024-04-04');
INSERT INTO Transactions VALUES (17, 9, 'deposit', 500, '2024-04-01');
INSERT INTO Transactions VALUES (18, 9, 'withdrawal', 200, '2024-04-03');
INSERT INTO Transactions VALUES (19, 10, 'deposit', 2000, '2024-04-02');
INSERT INTO Transactions VALUES (20, 10, 'withdrawal', 1000, '2024-04-04');

select * from Customers1;

select * from Transactions;

select * from Accounts;
