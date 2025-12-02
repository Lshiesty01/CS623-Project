CREATE DATABASE cs623_project;
CREATE TABLE Product (
   prodid VARCHAR(10) PRIMARY KEY,
   pname VARCHAR(50) NOT NULL,
   price DECIMAL(10,2) NOT NULL
);
CREATE TABLE Depot (
   depid VARCHAR(10) PRIMARY KEY,
    addr VARCHAR(50) NOT NULL,
    volume INTEGER NOT NULL
)
CREATE TABLE Stock (
    prodid VARCHAR(10),
    depid VARCHAR(10),
    quantity INTEGER NOT NULL,
    PRIMARY KEY (prodid, depid),
    FOREIGN KEY (prodid) REFERENCES Product(prodid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (depid) REFERENCES Depot(depid) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Product VALUES ('p1', 'tape', 2.5);
INSERT INTO Product VALUES ('p2', 'tv', 250);
INSERT INTO Product VALUES ('p3', 'vcr', 80);

INSERT INTO Depot VALUES ('d1', 'New York', 9000);
INSERT INTO Depot VALUES ('d2', 'Syracuse', 6000);

INSERT INTO Stock VALUES ('p1', 'd1', 1000);
INSERT INTO Stock VALUES ('p1', 'd2', 100);
INSERT INTO Stock VALUES ('p2', 'd1', 200);
INSERT INTO Stock VALUES ('p3', 'd1', 300);
INSERT INTO Stock VALUES ('p3', 'd2', 400);



SELECT * FROM Product;
SELECT * FROM Depot;
SELECT * FROM Stock