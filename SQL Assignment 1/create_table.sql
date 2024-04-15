CREATE TABLE Customers (
  CustomerID INTEGER PRIMARY KEY,
  FirstName TEXT,
  LastName TEXT,
  Email TEXT,
  Phone TEXT,
  Address TEXT
);

CREATE TABLE Products (
  ProductID INTEGER PRIMARY KEY,
  ProductName TEXT,
  Description TEXT,
  Price REAL
);

CREATE TABLE Orders (
  OrderID INTEGER PRIMARY KEY,
  CustomerID INTEGER,
  OrderDate TEXT,
  TotalAmount REAL
);

CREATE TABLE OrderDetails (
  OrderDetailID INTEGER PRIMARY KEY,
  OrderID INTEGER,
  ProductID INTEGER,
  Quantity INTEGER
);

CREATE TABLE Inventory (
  InventoryID INTEGER PRIMARY KEY,
  ProductID INTEGER,
  QuantityInStock INTEGER,
  LastStockUpdate TEXT
);

