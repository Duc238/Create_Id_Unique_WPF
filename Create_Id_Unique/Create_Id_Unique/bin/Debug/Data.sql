CREATE DATABASE CreateIdUnique
GO
USE CreateIdUnique
GO
CREATE TABLE Products
(
	Id NVARCHAR(20) PRIMARY KEY,
	ProductName NVARCHAR(MAX),
	Price DECIMAL(18,2)
)
GO
INSERT INTO Products(Id, ProductName, Price) VALUES (1, N'TINH CHẤT ĐẬM ĐẶC O’ YOUNG HSCM',150000)
GO
INSERT INTO Products(Id, ProductName, Price) VALUES (2, N'Kem dưỡng chống lão hóa DERMEDEN (Night Protocole Intense Night Cream)',100000)
GO
INSERT INTO Products(Id, ProductName, Price) VALUES (3, N'tinh chất tế bào gốc Oyoung Ampoule',50000)
GO
INSERT INTO Products(Id, ProductName, Price) VALUES (4, N'serum dưỡng mặt ban đêm Living Nature Advanced Renewal Night',110000)
GO