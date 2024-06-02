CREATE TABLE `Role` (
  `RoleID` int PRIMARY KEY AUTO_INCREMENT,
  `RoleName` varchar(20) NOT NULL
);

CREATE TABLE `Users` (
  `UserID` int PRIMARY KEY AUTO_INCREMENT,
  `RoleID` int DEFAULT 0,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(13),
  `Gender` bit DEFAULT 0,
  `Password` varchar(50) NOT NULL,
  `Status` bit DEFAULT 0,
  `Thumbnail` varchar(255),
  `Deleted` bit DEFAULT 0
);

CREATE TABLE `Products` (
  `ProductID` int PRIMARY KEY AUTO_INCREMENT,
  `CategoryID` int NOT NULL,
  `SupplierID` int NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `UnitPrice` int NOT NULL,
  `UnitInStock` int NOT NULL,
  `CreateAt` date NOT NULL,
  `UpdateAt` date,
  `Viewrs` int,
  `Description` longtext,
  `Deleted` bit DEFAULT 0
);

CREATE TABLE `Discount` (
  `DiscountID` int PRIMARY KEY AUTO_INCREMENT,
  `ProductID` int NOT NULL,
  `DisPrice` int NOT NULL
);

CREATE TABLE `Category` (
  `CategoryID` int PRIMARY KEY AUTO_INCREMENT,
  `CategoryName` varchar(50) NOT NULL,
  `Thumbnail` varchar(255),
  `Description` varchar(255)
);

CREATE TABLE `Reviews` (
  `ReviewsID` int PRIMARY KEY AUTO_INCREMENT,
  `ProductID` int NOT NULL,
  `Star` int NOT NULL,
  `Riviews` varchar(500)
);

CREATE TABLE `Images` (
  `ImageID` int PRIMARY KEY AUTO_INCREMENT,
  `ProductID` int NOT NULL,
  `Thumbnail` varchar(255) NOT NULL
);

CREATE TABLE `Order` (
  `OrderID` int PRIMARY KEY AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Address` varchar(150) NOT NULL,
  `ShippingFee` int NOT NULL,
  `OrderDate` date NOT NULL,
  `ShippedDate` date NOT NULL,
  `RequiredDate` date NOT NULL,
  `Status` bit NOT NULL,
  `Message` varchar(255)
);

CREATE TABLE `OrderDetail` (
  `OrderDetailID` int PRIMARY KEY AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPrice` int NOT NULL,
  `Discount` int
);

CREATE TABLE `Cart` (
  `CartID` int PRIMARY KEY AUTO_INCREMENT,
  `UserID` int NOT NULL
);

CREATE TABLE `CartDetail` (
  `CartDetailID` int PRIMARY KEY AUTO_INCREMENT,
  `CartID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int NOT NULL
);

CREATE TABLE `Invoices` (
  `InvoicesID` int PRIMARY KEY AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `InvoiceDate` date NOT NULL,
  `TotalAmount` int NOT NULL
);

CREATE TABLE `InvoiceDetail` (
  `InvoiceDetailID` int PRIMARY KEY AUTO_INCREMENT,
  `InvoicesID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPrice` int NOT NULL
);

ALTER TABLE `OrderDetail` ADD FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);

ALTER TABLE `OrderDetail` ADD FOREIGN KEY (`OrderID`) REFERENCES `Order` (`OrderID`);

ALTER TABLE `Order` ADD FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

ALTER TABLE `Users` ADD FOREIGN KEY (`RoleID`) REFERENCES `Role` (`RoleID`);

ALTER TABLE `Reviews` ADD FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);

ALTER TABLE `Discount` ADD FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);

ALTER TABLE `Cart` ADD FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

ALTER TABLE `CartDetail` ADD FOREIGN KEY (`CartID`) REFERENCES `Cart` (`CartID`);

ALTER TABLE `CartDetail` ADD FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);

ALTER TABLE `Images` ADD FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);

ALTER TABLE `InvoiceDetail` ADD FOREIGN KEY (`InvoicesID`) REFERENCES `Invoices` (`InvoicesID`);

ALTER TABLE `Invoices` ADD FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

ALTER TABLE `InvoiceDetail` ADD FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);

ALTER TABLE `Products` ADD FOREIGN KEY (`CategoryID`) REFERENCES `Category` (`CategoryID`);
