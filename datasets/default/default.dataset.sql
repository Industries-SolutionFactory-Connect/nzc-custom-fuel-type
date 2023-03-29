BEGIN TRANSACTION;
CREATE TABLE "FuelType" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"IsStationaryAssetFuel" VARCHAR(255), 
	"IsVehicleAssetFuel" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "FuelType" VALUES(1,'True','Used in Coal Plants','Blast_Furnace_Gas_BFG','Blast Furnace Gas (BFG)','en_US','True','False');
CREATE TABLE "FuelTypeSustnUom" (
	id INTEGER NOT NULL, 
	"DeveloperName" VARCHAR(255), 
	"FuelType" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"UnitOfMeasure" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "FuelTypeSustnUom" VALUES(1,'BFG_NM3','0wU7d000000000VEAQ','BFG_nm3','en_US','0wV7d000000000QEAQ');
CREATE TABLE "SustainabilityUom" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"IsProductUom" VARCHAR(255), 
	"IsStationaryAssetUom" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"UnitType" VARCHAR(255), 
	"IsVehicleAssetUom" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "SustainabilityUom" VALUES(1,'Normal Cubic Meter.','Nm3','en_US','False','True','Nm3','Volume','False');
CREATE TABLE "SustnUomConversion" (
	id INTEGER NOT NULL, 
	"FuelType" VARCHAR(255), 
	"ConversionFactor" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"SourceUom" VARCHAR(255), 
	"TargetUom" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "SustnUomConversion" VALUES(1,'0wU7d000000000VEAQ','0.037','bfg_nm3_GJ_1','bfg_nm3_GJ','en_US','0wV7d000000000QEAQ','GJ');
INSERT INTO "SustnUomConversion" VALUES(2,'0wU7d000000000VEAQ','10.28','bfg_nm3_kWh_2','bfg_nm3_kWh','en_US','0wV7d000000000QEAQ','kWh');
COMMIT;
