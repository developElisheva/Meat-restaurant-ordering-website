-----------CrownBeef------------
create database CrownBeef
go
use CrownBeef
create table Categories
(
categoryCode smallint identity(1,1) primary key,
categoryName varchar(20) not null
)
go 
create table Products
(
productCode smallint identity(100,1) primary key,
productName varchar(100) not null,
categoryCode smallint references Categories not null,
productDescription varchar(255) not null,
price smallint not null,
picture varchar(255) not null,
quantity_in_stock smallint not null,
last_update_date date not null
)
go
create table Customers
(
customerCode smallint identity(1,1) primary key,
customerName varchar(20) not null,
phone varchar(10) not null,
email varchar(30) not null,
dateOfBirth date not null
)
go
create table Purchase
(
purchaseCode smallint identity(1,1) primary key,
customerCode smallint references Customers not null,
purchaseDate date not null,
purchaseAmount smallint not null,
note varchar(100)
)
go
create table PurchaseDetails
(
detailsCode smallint identity(1,1) primary key,
purchaseCode smallint references Purchase not null,
productCode smallint references Products not null,
amount smallint not null
)


INSERT INTO Categories (categoryName)
VALUES ('��� ������'),
       ('��� ������'),
       ('�����'),
	   ('�����');

INSERT INTO Products (productName, categoryCode, productDescription, price, picture, quantity_in_stock, last_update_date)
VALUES
	('���� ��� ����� ����� ', 3, '���� ��� ����� �����-�����', 250, '���� ��� ����� �����.jpg', 40, '2025-01-10'),
    ('��� ������ ����',3 , ' ��� ������ ����-�����', 170, '��� ������ ����.jpg', 50, '2025-01-01'),
    ('����� ���� ����', 3, '����� ���� ����-����� ', 42, '����� ���� ����.jpg', 30, '2025-01-05'),
    ('����� �����', 3, '����� �����-����� ', 36, '����� �����.jpg', 40, '2025-01-10'),
    ('���� ����� �����', 3, '���� ����� �����-�����', 180, '���� ����� �����.jpg', 70, '2025-01-10'),
    ('��� ����', 3, '��� ����-�����', 70, '��� ����.jpg', 50, '2025-01-10'),
    ('����� ����� �����', 3, '����� ����� �����-����� ', 49, '����� ����� �����.jpg', 40, '2025-01-10'),
	('��� ����� ��������', 4, '��� ����� ��������', 60, '��� ����� ��������.jpg', 90, '2025-01-10'),
    ('ANNA-DALTON', 4, 'ANNA-DALTON', 50, 'ANNA-DALTON.jpg', 67, '2025-01-10'),
    ('���� �����', 4, '���� �����-���', 55, '���� �����.jpg', 82, '2025-01-10'),
    ('����-���������', 4, '���-����-���������', 30, '����-���������.jpg', 40, '2025-01-10'),
	('����� ��� ���', 4, '���-����� ��� ���', 50, '����� ��� ���.jpg', 40, '2025-01-10'),
    ('�����-����-������', 4, '���-�����-����-������', 80, '�����-����-������.jpg', 40, '2025-01-10'),
    ('��� �������', 4, '��� �������', 80, '��� �������.jpg', 40, '2025-01-10'),
	('�����-���', 4, '���-�����-���', 78, '�����-���.jpg', 40, '2025-01-10'),
    ('��������', 4, '���-��������', 69, '��������.jpg', 40, '2025-01-10'),
    ('������-�����-��������', 4, '���-������-�����-��������', 58, '������-�����-��������.jpg', 40, '2025-01-10'),
    ('��� ��� ����', 4, '��� ��� ����', 30, '����-���������.jpg', 40, '2025-01-10'),
    ('����-���������', 4, '���-����-���������', 74, '��� ��� ����.jpg', 40, '2025-01-10'),
    ('���-����-������-����-�����', 4, '���-����-������-����-�����', 54, '���-����-������-����-�����.jpg', 40, '2025-01-10'),
    ('��� ��� ����� ������� ��� ���', 4, '��� ��� ����� ������� ��� ���', 87, '��� ��� ����� ������� ��� ���.jpg', 40, '2025-01-10'),
    ('���-��-�����-����', 4, '���-��-�����-����', 30, '���-��-�����-����.jpg', 40, '2025-01-10'),
	('EDEN', 4, '���-EDEN', 85, 'EDEN.jpg', 40, '2025-01-10'),
    ('��� ���� ���', 4, '��� ���� ���', 30, '��� ���� ���.jpg', 40, '2025-01-10'),
    ('��� ����� ��� �����', 4, '��� ����� ��� ����� ', 60, '��� ����� ��� �����.jpg', 62, '2025-01-10');

	
