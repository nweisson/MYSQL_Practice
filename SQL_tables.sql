/* Create Tables */

CREATE TABLE Property(
address VARCHAR(50), 
ownerName VARCHAR(30),
price INT,
PRIMARY KEY (address)
);

CREATE TABLE House(
address VARCHAR(50),
ownerName VARCHAR(30),
price INT,
bedrooms INT,
bathrooms INT,
size INT,
FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE BusinessProperty(
address VARCHAR(50),
ownerName VARCHAR(30),
price INT,
type CHAR(20),
size INT,
FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE Firm(
id INT,
name VARCHAR(30),
address VARCHAR(50),
PRIMARY KEY(id)
);

CREATE TABLE Agent(
agentId INT,
name VARCHAR(30),
phone CHAR(12),
firmId INT,
dateStarted DATE,
PRIMARY KEY(agentId),
FOREIGN KEY(firmId) REFERENCES Firm(id)
);

CREATE TABLE Listings(
address VARCHAR(50),
agentId INT,
mlsNumber INT,
dateListed DATE,
PRIMARY KEY(mlsNumber),
FOREIGN KEY(agentId) REFERENCES Agent(agentId),
FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE Buyer(
id INT,
name VARCHAR(30),
phone CHAR(12),
propertyType CHAR(20),
bedrooms INT,
bathrooms INT,
businessPropertyType CHAR(20),
minimumPreferredPrice INT,
maximumPreferredPrice INT,
PRIMARY KEY(id)
);

CREATE TABLE Works_With(
buyerId INT,
agentID INT,
FOREIGN KEY(buyerId) REFERENCES Buyer(id),
FOREIGN KEY(agentID) REFERENCES Agent(agentId)
);

/* Insert data into tables, at least 5 records each */

/* Property data - 10 */

INSERT INTO Property
VALUES('6 Sauthoff Road', 'Huberto Bottoner', 471875);

INSERT INTO Property 
VALUES('486 6th Alley', 'Heath Gilliland', 601964);

INSERT INTO Property
VALUES ('4 Bayside Park', 'Salomone Errichelli', 392170);

INSERT INTO Property 
VALUES('87 Roxbury Lane', 'Antonin Henstone', 724430);

INSERT INTO Property 
VALUES('060 David Point', 'Flossi Barsby', 587958);

INSERT INTO Property 
VALUES('250 Island Dr', 'Eric Shether', 230548);

INSERT INTO Property   
VALUES('7 Cordelia Road', 'Guthry Michiel', 544345);

INSERT INTO Property   
VALUES('3325 Oak Point', 'Grata Haggerwood', 221400);

INSERT INTO Property  
VALUES('3351 Burning Wood Street', 'Currie Di Antonio', 283002);

INSERT INTO Property   
VALUES('581 Kipling Avenue', 'Donaugh Alfonsetti', 808317);

/* House data - 6 */

INSERT INTO House
VALUES('6 Sauthoff Road', 'Huberto Bottoner', 471875, 3, 2, 200);

INSERT INTO House
VALUES('486 6th Alley', 'Grata Haggerwood', 221400, 3, 2, 250);

INSERT INTO House
VALUES ('4 Bayside Park', 'Salomone Errichelli', 392170, 2, 3, 160);

INSERT INTO House
VALUES('87 Roxbury Lane', 'Antonin Henstone', 724430, 3, 2, 180);

INSERT INTO House
VALUES('060 David Point', 'Flossi Barsby', 587958, 4, 3, 325);

/* Business Property data - 5 */

INSERT INTO BusinessProperty
VALUES('250 Island Dr', 'Eric Shether', 230548, 'store front', 500);

INSERT INTO BusinessProperty
VALUES('7 Cordelia Road', 'Guthry Michiel', 544345, 'office space', 400);

INSERT INTO BusinessProperty
VALUES('3325 Oak Point', 'Grata Haggerwood', 26141, 'gas station', 350);

INSERT INTO BusinessProperty
VALUES('3351 Burning Wood Street', 'Currie Di Antonio', 283002, 'restaurant', 600);

INSERT INTO BusinessProperty
VALUES('581 Kipling Avenue', 'Donaugh Alfonsetti', 808317, 'store front', 450);

/* Firm data - 5 */

INSERT INTO Firm 
VALUES(559273, 'Keller Williams', '230 Ocean Way');

INSERT INTO Firm 
VALUES(236754, 'Berkshire Hathaway', '115 Galen Dr');

INSERT INTO Firm 
VALUES(854367, 'Compass', '422 Pine Way');

INSERT INTO Firm 
VALUES(134567, 'Sothebys', '578 Serrano Dr');

INSERT INTO Firm 
VALUES(445678, 'eXp Realty', '810 Harbor Dr');

/* Agent data - 5 */

INSERT INTO Agent 
VALUES(453, 'Johnnie Baynom', '268-632-4678', 854367, '2022-02-11');

INSERT INTO Agent 
VALUES(427, 'Brigit Giacobelli', '899-681-6634', 559273, '2022-03-26');

INSERT INTO Agent 
VALUES(223, 'Catherin Normington', '556-943-0891', 445678, '2022-03-26');

INSERT INTO Agent 
VALUES(444, 'Sauveur Davsley', '635-627-6065', 236754, '2021-05-26');

INSERT INTO Agent 
VALUES(313, 'Christabel Brixey', '639-686-1662', 445678, '2021-12-29');

/* Listing data - 10 */

INSERT INTO Listings
VALUES('6 Sauthoff Road', 453, 2893, '2019-05-03');

INSERT INTO Listings
VALUES('486 6th Alley', 427, 3647, '2018-08-01');

INSERT INTO Listings
VALUES ('4 Bayside Park', 223, 3927, '2021-02-15');

INSERT INTO Listings
VALUES('87 Roxbury Lane', 444, 2485, '2018-10-04');

INSERT INTO Listings
VALUES('060 David Point', 313, 3793, '2019-12-23');

INSERT INTO Listings
VALUES('250 Island Dr', 427, 1839, '2019-07-19');

INSERT INTO Listings
VALUES('7 Cordelia Road', 444, 2612, '2021-03-17');

INSERT INTO Listings
VALUES('3325 Oak Point', 223, 9364, '2019-09-06');

INSERT INTO Listings
VALUES('3351 Burning Wood Street', 313, 5482, '2017-03-20');

INSERT INTO Listings
VALUES('581 Kipling Avenue', 453, 8277, '2021-05-17');

/* Buyer data - 5 */

INSERT INTO Buyer
VALUES(374, 'Ray Salom', '656-849-6278', 'house', 3, 2, 'none', 120000, 300000);

INSERT INTO Buyer
VALUES(763, 'Frank Williams', '255-854-5704', 'house', 3, 2, 'none', 140000, 350000);

INSERT INTO Buyer
VALUES(212, 'Alex White', '902-451-8107', 'none', 0, 0, 'office space', 200000, 400000);

INSERT INTO Buyer
VALUES(548, 'Walter Mayson', '451-882-4607', 'none', 0, 0, 'gas station', 100000, 200000);

INSERT INTO Buyer
VALUES(905, 'Maggie Raylor', '305-392-8846', 'house', 4, 3, 'none', 150000, 320000);

/* Works_With data - 5 */

INSERT INTO Works_With
VALUES(374, 427);

INSERT INTO Works_With
VALUES(763, 313);

INSERT INTO Works_With
VALUES(212, 444);

INSERT INTO Works_With
VALUES(548, 223);

INSERT INTO Works_With
VALUES(905, 453);








