
insert into Customers values (1,'Emily','Mitchell','emily.mitchell@mail.com',999999991,'aaa street');
insert into Customers values (2,'Lucas','Patel','lucas.patel@mail.com',998899881,' bbb street');
insert into Customers values (3,'Sophia','Merry','sophia.merry@mail.com',987654321,' ccc street');
insert into Customers values (4,'Mia','Martinez','mia.martinez@mail.com',789456123,' ddd street');
insert into Customers values (5,'Ethan','Wilson','ethan.wilson@mail.com',777777777,' abc street');
insert into Customers values (6,'John','Nolan','john.noal,@mail.com',888888888,' abd street');
insert into Customers values (7,'Lucy','Chen','lucy.chen@mail.com',999999999,'abb street');
insert into Customers values (8,'Tim','Bradford','tim.bradford@mail.com',989898989,' abb street');
insert into Customers values (9,'Bailey','Nune','bailey.nune@mail.com',888899998,' bbc street');
insert into Customers values (10,'Wesley','Evers','wesley.evers@mail.com',787898987,' xyz street');

insert into Products values (1, 'Laptop', '15-inch, Intel Core i7, 16GB RAM, 512GB SSD', 89999.99);
insert into Products values (2, 'Smartphone', '6.5-inch, 128GB storage, 12MP camera', 49999.99);
insert into Products values (3, 'Headphones', 'Wireless over-ear headphones with noise cancellation', 6999.99);
insert into Products values (4, 'Smartwatch', 'Waterproof, heart rate monitor, fitness tracker', 4999.99);
insert into Products values (5, 'Tablet', '10-inch, 256GB storage, quad-core processor', 19999.99);
insert into Products values (6, 'Camera', '20MP, 4K video recording, DSLR', 19999.99);
insert into Products values (7, 'Speaker', 'Bluetooth, 20W output, built-in microphone', 2999.99);
insert into Products values (8, 'Monitor', '27-inch, 4K resolution, IPS panel', 9999.99);
insert into Products values (9, 'Printer', 'Wireless, color printer with scanner and copier', 4999.99);
insert into Products values (10, 'Wireless Router', 'Dual-band, high-speed, parental controls', 3999.99);

insert into Orders values (1, 1, '2020-01-01', 89999.99);
insert into Orders values (2, 2, '2020-01-05', 6999.99);
insert into Orders values (3, 3, '2020-02-03', 19999.99);
insert into Orders values (4, 1, '2020-02-20', 19999.99);
insert into Orders values (5, 4, '2020-03-10', 4999.99);
insert into Orders values (6, 5, '2020-04-15', 3999.99);
insert into Orders values (7, 2, '2020-05-10', 49999.99);
insert into Orders values (8, 6, '2020-05-19', 89999.99);
insert into Orders values (9, 7, '2020-06-11', 2999.99);
insert into Orders values (10, 8, '2020-07-17', 9999.99);

insert into OrderDetails values (1, 1, 1, 1);
insert into OrderDetails values (2, 2, 3, 1);
insert into OrderDetails values (3, 3, 5, 1);
insert into OrderDetails values (4, 4, 6, 1);
insert into OrderDetails values (5, 5, 4, 1);
insert into OrderDetails values (6, 6, 10, 1);
insert into OrderDetails values (7, 7, 2, 1);
insert into OrderDetails values (8, 8, 1, 1);
insert into OrderDetails values (9, 9, 7, 1);
insert into OrderDetails values (10, 10, 8, 1);

insert into Inventory values (1001, 1, 4, '2020-05-10');
insert into Inventory values (1002, 2, 3, '2020-05-10');
insert into Inventory values (1003, 3, 3, '2020-04-05');
insert into Inventory values (1004, 4, 2, '2020-04-17');
insert into Inventory values (1005, 5, 2, '2020-06-15');
insert into Inventory values (1006, 6, 4, '2020-07-08');
insert into Inventory values (1007, 7, 3, '2020-07-08');
insert into Inventory values (1008, 8, 2, '2020-06-10');
insert into Inventory values (1009, 9, 4, '2020-05-01');
insert into Inventory values (1010, 10, 2, '2020-06-10');

select * from Inventory;

select * from OrderDetails;

select * from  Orders;

select * from Products;

select * from Customers;
