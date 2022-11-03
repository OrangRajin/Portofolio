CREATE DATABASE Frozen_Food
GO
USE Frozen_Food
GO

CREATE TABLE City (
  City_ID VARCHAR(7) PRIMARY KEY CHECK (City_ID like 'CI[0-9][0-9][0-9]')NOT NULL,
  City_Name VARCHAR(50) NOT NULL,
  Last_Update DATE
  );
GO

CREATE TABLE address_customer(
    Address_ID VARCHAR(10) PRIMARY KEY CHECK (Address_ID LIKE 'AD[0-9][0-9][0-9]')NOT NULL,
    City_ID VARCHAR(7) FOREIGN KEY REFERENCES City(City_ID) NOT NULL,
    Address_customer VARCHAR(50) CHECK (len(Address_customer) < 50) NOT NULL,
    post_code VARCHAR(10) CHECK (len(post_code) < 10) NOT NULL,
    phone VARCHAR(20),
    last_update DATE
);
GO

CREATE TABLE Customer(
    Customer_ID VARCHAR(10) PRIMARY KEY CHECK (Customer_ID like 'CU[0-9][0-9][0-9]')NOT NULL,
    Address_ID VARCHAR(10) FOREIGN KEY REFERENCES address_customer(Address_ID) NOT NULL,
    First_Name VARCHAR(30) NOT NULL,
    Last_Name VARCHAR(30) NOT NULL,
    Email VARCHAR(50) CHECK (Email LIKE '%@gmail.com'),
    Create_Data DATE,
    Last_Data DATE
);
GO

CREATE TABLE Basket (
  Basket_ID VARCHAR(10) PRIMARY KEY CHECK (Basket_ID like 'BK[0-9][0-9][0-9][0-9]')NOT NULL,
  CustomerID VARCHAR(10) FOREIGN KEY REFERENCES Customer(Customer_ID)NOT NULL,
  Quantity INT NOT NULL
 );
GO

 CREATE TABLE [Order] (
    Order_ID VARCHAR(7) PRIMARY KEY CHECK (Order_ID like 'ORD[0-9][0-9][0-9][0-9]')NOT NULL,
    Customer_ID VARCHAR(10) FOREIGN KEY REFERENCES Customer(Customer_ID) NOT NULL,
    Basket_ID VARCHAR(10) FOREIGN KEY REFERENCES Basket(Basket_ID) NOT NULL,
);
GO

create table Factory (
    Factory_ID VARCHAR(5) PRIMARY KEY CHECK (Factory_ID like 'FA[0-9][0-9][0-9]') NOT NULL,
    Factory_name VARCHAR(200) NOT NULL,
    Factory_Address VARCHAR(200) CHECK (len(Factory_Address) > 10) NOT NULL,
    Factory_Phone VARCHAR(20) NOT NULL
);
GO

create table Supplier (
    Supplier_ID VARCHAR(5) PRIMARY KEY CHECK (Supplier_ID LIKE 'SU[0-9][0-9][0-9]') NOT NULL,
    Supplier_Name VARCHAR(200) NOT NULL,
    Supplier_Address VARCHAR(200) CHECK (len(Supplier_Address) > 10)NOT NULL,
    Supplier_Phone VARCHAR(20) NOT NULL, 
    Supplier_Email VARCHAR(50) CHECK (Supplier_Email LIKE '%@gmail.com') NOT NULL
);
GO

CREATE TABLE Payment (
  PaymentID VARCHAR(10) PRIMARY KEY CHECK (PaymentID LIKE 'PA[0-9][0-9][0-9]') NOT NULL,
  Basket_ID VARCHAR(10) FOREIGN KEY REFERENCES Basket(Basket_ID) NOT NULL,
  Amount INT NOT NULL,
  PaymentDate DATE NOT NULL,
 );
 GO

 CREATE TABLE Distributor (
  Distributor_ID VARCHAR(7) PRIMARY KEY CHECK (Distributor_ID LIKE 'DI[0-9][0-9][0-9]') NOT NULL,
  DistributorName VARCHAR(50) NOT NULL,
  DistributorAddress VARCHAR(100) NOT NULL,
  DistributorPhone VARCHAR(20) NOT NULL,
  Supplier_ID VARCHAR(5) FOREIGN KEY REFERENCES Supplier(Supplier_ID) NOT NULL,
 );
 GO

 CREATE TABLE Item (
    Item_ID VARCHAR(7) PRIMARY KEY CHECK (Item_ID LIKE 'IT[0-9][0-9][0-9]')NOT NULL,
    Item_Name VARCHAR(30)  NOT NULL,
    Item_Price INT NOT NULL,
    Last_Update date NOT NULL, 
    Order_ID VARCHAR(7) FOREIGN KEY REFERENCES [Order](Order_ID) NOT NULL 
);
GO

 CREATE TABLE Storage(
  Storage_ID VARCHAR(7) PRIMARY KEY CHECK (Storage_ID LIKE 'ST[0-9][0-9][0-9]')NOT NULL,
  StorageAddress VARCHAR(255) NOT NULL,
  Distributor_ID VARCHAR(7) FOREIGN KEY REFERENCES Distributor(Distributor_ID) NOT NULL,
  Item_ID VARCHAR(7) FOREIGN KEY REFERENCES Item(Item_ID) NOT NULL 
 );
 GO



