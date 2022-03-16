DROP TABLE IF EXISTS Visitor;
DROP TABLE IF EXISTS Places;
Drop TABLE if EXISTS VisitorToPlaces;
Drop TABLE if EXISTS Agent;
DROP TABLE IF EXISTS Hospital;


CREATE TABLE Visitor
(
citizen_id INTEGER,
address STRING(100),
phone_number STRING(20),
email STRING(100),
device_ID STRING(20),
infected BOOLEAN,
PRIMARY KEY(citizen_id)
);

CREATE TABLE Places
(
place_id INTEGER,
address STRING(100),
place_name STRING(20),
QRcode STRING(100),
PRIMARY KEY(place_id),
);

CREATE TABLE VisitorToPlaces
(
QRcode STRING,
device_ID STRING,
entry_date DATE,
entry_time STRING(100),
exit_date DATE,
exit_time STRING(100),
PRIMARY KEY(QRcode, device_ID, entry_date, entry_time), 
FOREIGN KEY(device_ID) REFERENCES Visitor(device_ID) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(QRcode) REFERENCES Places(QRcode) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE Agent
(
agent_id INTEGER,
username STRING(100),
password STRING(20),
PRIMARY KEY(agent_id)
);

CREATE TABLE Hospital
(
hospital_id INTEGER,
username STRING(100),
password STRING(20),
PRIMARY KEY(hospital_id)
);
