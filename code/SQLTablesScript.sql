-- use [gold-standard-DB]
-- go
-- drop database if exists GoldStandard
-- go
-- create database GoldStandard
-- go
-- use GoldStandard
-- go

--Country Table
CREATE TABLE Country (
    CountryID int identity(1,1),
    countryCode varchar(2) NOT NULL,
    countryName varchar (10) NOT NULL
    --PRIMARY KEY CountryID
);

--State Table
CREATE TABLE [State] (
    StateID int identity(1,1),
    stateCode varchar(2) NOT NULL,
    stateName varchar(20) NOT NULL
    --PRIMARY KEY StateID
);

--Commodity Table
CREATE TABLE Commodity (
    CommodityID int identity(1,1),
    commodityName varchar(20) NOT NULL
    --PRIMARY KEY CommodityID
);

--Price Table
CREATE TABLE Price (
    PriceID int identity(1,1),
    CommodityID int NOT NULL,
    Price float NOT NULL,
    [TimeStamp] bigint NOT NULL
    --PRIMARY KEY PriceID
);

--Exports Table
CREATE TABLE Exports (
    CountryID int NOT NULL,
    CommodityID int NOT NULL,
    [Year] int NOT NULL,
    -- constraint fk_Country_CountryID
    --     foreign key (CountryID)
    --     references Country(CountryID),
    -- constraint fk_Commodity_CommodityID
    --     foreign key (CommodityID)
    --     references Commodity(CommodityID),
    -- PRIMARY KEY (CountryID, CommodityID)
);

--FarmOutputs Table
CREATE TABLE FarmOutputs (
    StateID int NOT NULL,
    CommodityID int NOT NULL,
    OutputValue int NOT NULL,
    [TimeStamp] bigint NOT NULL
    -- constraint fk_State_StateID
    --     foreign key (StateID)
    --     references [State](StateID),
    -- constraint fk_Commodity_CommodityID
    --     foreign key (CommodityID)
    --     references Commodity(CommodityID),
    -- PRIMARY KEY (StateID, CommodityID)
);

--FarmCounts Table
CREATE TABLE FarmCounts (
    CountID int identity(1,1),
    StateID int NOT NULL,
    CommodityID int NOT NULL,
    IncomeClass varchar(30) NOT NULL,
    [Count] int NOT NULL,
    -- constraint fk_State_StateID
    --     foreign key (StateID)
    --     references [State](StateID),
    -- constraint fk_Commodity_CommodityID
    --     foreign key (CommodityID)
    --     references Commodity(CommodityID),
    --PRIMARY KEY CountID
);