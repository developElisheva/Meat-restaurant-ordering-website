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
VALUES ('מנת ראשונה'),
       ('מנה עיקרית'),
       ('קינוח'),
	   ('יינות');

INSERT INTO Products (productName, categoryCode, productDescription, price, picture, quantity_in_stock, last_update_date)
VALUES
	('עוגת יום הולדת מפנקת ', 3, 'עוגת יום הולדת מפנקת-פרווה', 250, 'עוגת יום הולדת מפנקת.jpg', 40, '2025-01-10'),
    ('טרט שוקולד מפנק',3 , ' טרט שוקולד מפנק-פרווה', 170, 'טרט שוקולד מפנק.jpg', 50, '2025-01-01'),
    ('כוסות שוקו וניל', 3, 'כוסות שוקו וניל-פרווה ', 42, 'כוסות שוקו וניל.jpg', 30, '2025-01-05'),
    ('כוסות אוראו', 3, 'כוסות אוראו-פרווה ', 36, 'כוסות אוראו.jpg', 40, '2025-01-10'),
    ('עוגת שכבות אוראו', 3, 'עוגת שכבות אוראו-פרווה', 180, 'עוגת שכבות אוראו.jpg', 70, '2025-01-10'),
    ('טרט וניל', 3, 'טרט וניל-פרווה', 70, 'טרט וניל.jpg', 50, '2025-01-10'),
    ('קינוח כוסות לוטוס', 3, 'קינוח כוסות לוטוס-פרווה ', 49, 'קינוח כוסות לוטוס.jpg', 40, '2025-01-10'),
	('יין קינוח קומנדריה', 4, 'יין קינוח קומנדריה', 60, 'יין קינוח קומנדריה.jpg', 90, '2025-01-10'),
    ('ANNA-DALTON', 4, 'ANNA-DALTON', 50, 'ANNA-DALTON.jpg', 67, '2025-01-10'),
    ('שאטו ריוסק', 4, 'שאטו ריוסק-יין', 55, 'שאטו ריוסק.jpg', 82, '2025-01-10'),
    ('ירדן-הייטסווין', 4, 'יין-ירדן-הייטסווין', 30, 'ירדן-הייטסווין.jpg', 40, '2025-01-10'),
	('פסגות יין לבן', 4, 'יין-פסגות יין לבן', 50, 'פסגות יין לבן.jpg', 40, '2025-01-10'),
    ('אדלמה-פינו-גריגיו', 4, 'יין-אדלמה-פינו-גריגיו', 80, 'אדלמה-פינו-גריגיו.jpg', 40, '2025-01-10'),
    ('יין קונקורד', 4, 'יין קונקורד', 80, 'יין קונקורד.jpg', 40, '2025-01-10'),
	('קינוח-לבן', 4, 'יין-קינוח-לבן', 78, 'קינוח-לבן.jpg', 40, '2025-01-10'),
    ('פלוריסטה', 4, 'יין-פלוריסטה', 69, 'פלוריסטה.jpg', 40, '2025-01-10'),
    ('וולקני-קברנה-סוביניון', 4, 'יין-וולקני-קברנה-סוביניון', 58, 'וולקני-קברנה-סוביניון.jpg', 40, '2025-01-10'),
    ('יין לבן שאטו', 4, 'יין לבן שאטו', 30, 'ירדן-הייטסווין.jpg', 40, '2025-01-10'),
    ('ירדן-הייטסווין', 4, 'יין-ירדן-הייטסווין', 74, 'יין לבן שאטו.jpg', 40, '2025-01-10'),
    ('יין-אדום-ישראלי-מלבק-פינטו', 4, 'יין-אדום-ישראלי-מלבק-פינטו', 54, 'יין-אדום-ישראלי-מלבק-פינטו.jpg', 40, '2025-01-10'),
    ('יין לבן אמרלד ריזלינג חצי יבש', 4, 'יין לבן אמרלד ריזלינג חצי יבש', 87, 'יין לבן אמרלד ריזלינג חצי יבש.jpg', 40, '2025-01-10'),
    ('יין-הר-חרמון-אדום', 4, 'יין-הר-חרמון-אדום', 30, 'יין-הר-חרמון-אדום.jpg', 40, '2025-01-10'),
	('EDEN', 4, 'יין-EDEN', 85, 'EDEN.jpg', 40, '2025-01-10'),
    ('יין אדום יבש', 4, 'יין אדום יבש', 30, 'יין אדום יבש.jpg', 40, '2025-01-10'),
    ('יין קינוח אור הגנוז', 4, 'יין קינוח אור הגנוז ', 60, 'יין קינוח אור הגנוז.jpg', 62, '2025-01-10');

	
