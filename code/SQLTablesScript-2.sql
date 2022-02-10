
--This file adds initial values and fixes any typing errors that might happen when importing the data from kafka
-- INSERT INTO Country (countryCode, countryName)
-- VALUES('US', 'America'),
-- ('CH', 'China'),
-- ('BR', 'Brazil'),
-- ('IN', 'India');

-- INSERT INTO [State](stateCode, stateName)
-- Values ('mn', 'Minnesota'),
-- ('ar', 'Arkansas'),
-- ('ca', 'California'),
-- ('fl', 'Florida'),
-- ('ga', 'Georgia'),
-- ('il', 'Illinois'),
-- ('in', 'Indiana'),
-- ('ia', 'Iowa'),
-- ('ks', 'Kansas'),
-- ('mo', 'Missouri'),
-- ('ni', 'Nebraska'),
-- ('nc', 'North Carolina'),
-- ('tx', 'Texas'),
-- ('wa', 'Washington'),
-- ('wi', 'Wisconsin');

-- ALTER TABLE Exports
-- ALTER COLUMN CountryID int;

-- ALTER TABLE Exports
-- ALTER COLUMN CommodityID int;

-- ALTER TABLE Exports
-- ADD sum_value int not null;

-- ALTER TABLE Exports
-- ALTER COLUMN sum_value bigint not null;

-- ALTER TABLE Exports
-- ADD Country varchar(2) not null;

-- ALTER TABLE Exports
-- ADD Commodity varchar(10) not null;

-- ALTER TABLE FarmCounts
-- ADD StateName varchar(20) not null;

-- ALTER TABLE FarmCounts
-- ALTER COLUMN StateID int;

-- ALTER TABLE FarmCounts
-- ALTER COLUMN CountID int;

-- ALTER TABLE FarmCounts
-- ALTER COLUMN CommodityID int;

-- ALTER TABLE FarmOutputs
-- ALTER COLUMN StateID int;

-- ALTER TABLE FarmOutputs
-- ALTER COLUMN CommodityID int;

-- ALTER TABLE FarmCounts
-- ALTER COLUMN CountID int;

-- ALTER TABLE FarmOutputs
-- ADD StateName varchar(20) not null;

-- ALTER TABLE FarmOutputs
-- ADD Specialty varchar(40) not null;

-- ALTER TABLE FarmCounts
-- ADD Specialty varchar(40) not null;

-- ALTER TABLE FarmCounts
-- ALTER COLUMN CountID int;

-- ALTER TABLE FarmCounts
-- ALTER COLUMN StateName varchar(20);