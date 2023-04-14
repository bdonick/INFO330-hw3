CREATE TABLE buildings(
name VARCHAR(80) NOT NULL,
shortname VARCHAR(10) UNIQUE,
id INTEGER PRIMARY KEY AUTOINCREMENT);

CREATE TABLE rooms(
number INTEGER,
seating INTEGER,
buildingid INTEGER,
PRIMARY KEY (number, buildingid),
FOREIGN KEY (buildingid) REFERENCES buildings(id));