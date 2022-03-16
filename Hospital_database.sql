DROP TABLE IF EXISTS Visitor;
DROP TABLE IF EXISTS Places;
Drop TABLE if EXISTS VisitorToPlaces;
Drop TABLE if EXISTS Agent;
DROP TABLE IF EXISTS Hospital;


CREATE TABLE Visitor
(
citizen_id INTEGER,
address CHAR(100),
phone_number VARCHAR(20),
email VARCHAR(100),
device_ID VARCHAR(20),
infected TINYINT CHECK (infected BETWEEN 0 AND 1),
PRIMARY KEY(citizen_id)
);

CREATE TABLE Places
(
place_id VARCHAR,
address CHAR(100),
place_name VARCHAR(20),
QRcode VARCHAR(100),
PRIMARY KEY(place_id),
);

CREATE TABLE VisitorToPlaces
(
QRcode VARCHAR,
device_ID VARCHAR,
entry_date DATE NOT NULL,
entry_time TIME(100),
exit_date DATE NOT NULL,
exit_time TIME(100),
PRIMARY KEY(QRcode, device_ID, entry_date, entry_time), 
FOREIGN KEY(device_ID) REFERENCES Visitor(device_ID) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(QRcode) REFERENCES Places(QRcode) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE Agent
(
agent_id INTEGER,
username VARCHAR(100),
password VARCHAR(20),
PRIMARY KEY(agent_id)
);

CREATE TABLE Hospital
(
hospital_id INTEGER,
username VARCHAR(100),
password VARCHAR(20),
PRIMARY KEY(hospital_id)
);
