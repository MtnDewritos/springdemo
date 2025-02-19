CREATE TABLE Customer (
    CustomerID int NOT NULL AUTO_INCREMENT, 
    PersonName varchar(255) not null,
    PhoneNumber int not null,
    Address varchar(255) not null,
    Email varchar(255) not null,
    primary key (CustomerID)
);

CREATE TABLE Manufacturer (
    ManufacturerID int NOT NULL AUTO_INCREMENT, 
    ManufacturerName varchar(255),
    primary key (ManufacturerID)
);

CREATE TABLE Category (
    CategoryID int NOT NULL AUTO_INCREMENT, 
    CategoryName varchar(255),
    primary key (CategoryID)
);

CREATE TABLE Product (
    ProductID int NOT NULL AUTO_INCREMENT, 
    ProductName varchar(255) not null,
    ProductDescription varchar(255),
    Price DECIMAL(10, 2) not null,
    inventory int unsigned,
    ManufacturerID int not null,
    CategoryID int not null,
    primary key (ProductID),
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);


CREATE TABLE DeliveryService (
    DeliveryServiceID int NOT NULL AUTO_INCREMENT, 
    DeliveryServiceName varchar(255) NOT NULL,
    primary key (DeliveryServiceID)
);


CREATE TABLE PurchaseOrder (
    OrderID int NOT NULL AUTO_INCREMENT, 
    OrderStatus ENUM('Ny', 'Bekräftad', 'Skickad', 'Levererad') not null,
    OrderDate DATE not null,
    CustomerId int not null,
    DeliveryServiceID int not null,
    primary key (OrderID),
    foreign key (DeliveryServiceID) references DeliveryService(DeliveryServiceID),
    foreign key (CustomerId) references Customer(CustomerId)
);



CREATE TABLE ProductOrder (
    ProductID int, 
    OrderID int,
    amount int unsigned not null,
    primary key (OrderID, ProductID),
    foreign key (OrderID) references PurchaseOrder(OrderID),
    foreign key (ProductID) references Product(ProductID)
);

CREATE TABLE Review (
    ReviewID int NOT NULL AUTO_INCREMENT, 
    ReviewText TEXT,
    CustomerId int not null,
    ProductID int not null,
    Score int unsigned not null check (Score between 1 and 5),
    primary key (ReviewID),
    foreign key (CustomerId) references Customer(CustomerId)
);
