BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Acme');
INSERT INTO "Account" VALUES(2,'salesforce.com');
INSERT INTO "Account" VALUES(3,'Global Media');
CREATE TABLE "AnnualEmssnInventory" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Year" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "BldgEnrgyIntensity" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "CrbnEmssnScopeAlloc" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ElectricityEmssnFctrSet" (
	id INTEGER NOT NULL, 
	"Ch4EmissionRate" VARCHAR(255), 
	"Ch4EmissionRateUnit" VARCHAR(255), 
	"City" VARCHAR(255), 
	"Co2EmissionRate" VARCHAR(255), 
	"Co2EmissionRateUnit" VARCHAR(255), 
	"Co2eEmissionRate" VARCHAR(255), 
	"Co2eEmissionRateUnit" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"EmissionFactorDataSource" VARCHAR(255), 
	"EmissionFactorUpdateYear" VARCHAR(255), 
	"GenlConversionFctrRevisionDate" VARCHAR(255), 
	"GridSubregion" VARCHAR(255), 
	"LocBasedGeothermalMixPct" VARCHAR(255), 
	"LocBasedOtherFossilFuelMixPct" VARCHAR(255), 
	"LocationBasedBiomassMixPct" VARCHAR(255), 
	"LocationBasedCoalMixPct" VARCHAR(255), 
	"LocationBasedGasMixPct" VARCHAR(255), 
	"LocationBasedHydroMixPct" VARCHAR(255), 
	"LocationBasedNuclearMixPct" VARCHAR(255), 
	"LocationBasedOilMixPct" VARCHAR(255), 
	"LocationBasedOtherFuelMixPct" VARCHAR(255), 
	"LocationBasedSolarMixPct" VARCHAR(255), 
	"LocationBasedWindMixPct" VARCHAR(255), 
	"MarketBasedBiomassMixPct" VARCHAR(255), 
	"MarketBasedCoalMixPct" VARCHAR(255), 
	"MarketBasedGasMixPct" VARCHAR(255), 
	"MarketBasedHydroMixPct" VARCHAR(255), 
	"MarketBasedNuclearMixPct" VARCHAR(255), 
	"MarketBasedOilMixPct" VARCHAR(255), 
	"MarketBasedOtherFuelMixPct" VARCHAR(255), 
	"MarketBasedSolarMixPct" VARCHAR(255), 
	"MarketBasedWindMixPct" VARCHAR(255), 
	"MktBasedGeothermalMixPct" VARCHAR(255), 
	"MktBasedOtherFossilFuelMixPct" VARCHAR(255), 
	"MktBsdCo2eEmissionRate" VARCHAR(255), 
	"MktBsdCo2eEmissionRateUnit" VARCHAR(255), 
	"N2oEmissionRate" VARCHAR(255), 
	"N2oEmissionRateUnit" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"PostalCodeSet" VARCHAR(255), 
	"State" VARCHAR(255), 
	"OtherEmssnFctrId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ElectricityEmssnFctrSet" VALUES(1,'0.032','LBS_PER_MWH','','513.5','LBS_PER_MWH','515.5','LBS_PER_MWH','US','','2023','','CAMX','4.2','0.8','2.8','3.6','47.1','8.5','8.3','0.0','0.3','17.3','7.2','2.8','3.6','47.1','8.5','8.3','','0.03','17.3','7.2','4.1','0.8','515.5','LBS_PER_MWH','0.004','LBS_PER_MWH','CAMX - WECC California - eGRID2023','','','');
CREATE TABLE "OtherEmssnFctrSet" (
	id INTEGER NOT NULL, 
	"Ch4GlblWarmingPot" VARCHAR(255), 
	"EmissionFactorDataSource" VARCHAR(255), 
	"EmissionFactorUpdateYear" VARCHAR(255), 
	"N2oGlblWarmingPot" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RefrigerantLeakageRtInKgItKwh" VARCHAR(255), 
	"RefrigerantLeakageRtInKgM2" VARCHAR(255), 
	"RefrigerantLeakageRtInKgSqft" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "OtherEmssnFctrSet" VALUES(1,'28.0','','2023','265.0','Stationary Fuel Conversion Factors - Custom','1.66e-06','0.249359521292','0.02316628');
CREATE TABLE "OtherEmssnFctrSetItem" (
	id INTEGER NOT NULL, 
	"CalorificValue" VARCHAR(255), 
	"CalorificValueUnit" VARCHAR(255), 
	"Ch4EmissionFactor" VARCHAR(255), 
	"Ch4EmissionFactorUnit" VARCHAR(255), 
	"Co2EmissionFactor" VARCHAR(255), 
	"Co2EmissionFactorUnit" VARCHAR(255), 
	"FuelType" VARCHAR(255), 
	"N2oEmissionFactor" VARCHAR(255), 
	"N2oEmissionFactorUnit" VARCHAR(255), 
	"SuppliedEmissionsFactor" VARCHAR(255), 
	"SuppliedEmissionsFactorUnit" VARCHAR(255), 
	"ParentEmissionFactorId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "OtherEmssnFctrSetItem" VALUES(1,'','KWH_PER_M3','1.1','G_PER_KWH','0.86','G_PER_KWH','0wUDE000000CaRC2A0','1.6','G_PER_KWH','','TONNES_PER_MWH','1');
CREATE TABLE "RefrigerantEmssnFctr" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "StnryAssetCrbnFtprnt" (
	id INTEGER NOT NULL, 
	"AllocationStatus" VARCHAR(255), 
	"AuditApprovalStatus" VARCHAR(255), 
	"DataGapStatus" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"FootprintStage" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"OccupiedFloorArea" VARCHAR(255), 
	"OccupiedFloorAreaUnit" VARCHAR(255), 
	"ReportingDate" VARCHAR(255), 
	"ReportingYear" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"SuplScope1Emissions" VARCHAR(255), 
	"SuplScope2LocationBasedEmssn" VARCHAR(255), 
	"SuplScope2MarketBasedEmssn" VARCHAR(255), 
	"SuplScope3DnstrmEmissions" VARCHAR(255), 
	"SuplScope3UpstrmEmissions" VARCHAR(255), 
	"TotalFloorArea" VARCHAR(255), 
	"TotalFloorAreaUnit" VARCHAR(255), 
	"AnnualEmssnInventoryId" VARCHAR(255), 
	"BuildingEnergyIntensityId" VARCHAR(255), 
	"PrevYrAnnlCarbonFootprintId" VARCHAR(255), 
	"RegionalBldgEnergyIntensityId" VARCHAR(255), 
	"StnryAssetEnvrSrcId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "StnryAssetCrbnFtprnt" VALUES(1,'','','','2023-12-31','Emission Source Confirmation','Cumulus Tower_CY_2023','1600.0','sqft','','2023','2023-01-01','','','','','','2000.0','sqft','','','','','1');
CREATE TABLE "StnryAssetEnrgyUse" (
	id INTEGER NOT NULL, 
	"AllocatedRenewableEnergyInKwh" VARCHAR(255), 
	"CarbonFootprintReportDate" VARCHAR(255), 
	"DataGapFillingMethodName" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"FinalEnergyConsumption" VARCHAR(255), 
	"FuelConsumption" VARCHAR(255), 
	"FuelConsumptionUnit" VARCHAR(255), 
	"FuelType" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"OccupiedFloorArea" VARCHAR(255), 
	"OccupiedFloorAreaUnit" VARCHAR(255), 
	"PowerUsageEffectiveness" VARCHAR(255), 
	"ProposedEnergyConsumption" VARCHAR(255), 
	"RenewableEnergyType" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"SuplScope1Emissions" VARCHAR(255), 
	"SuplScope2LocationBasedEmssn" VARCHAR(255), 
	"SuplScope2MarketBasedEmssn" VARCHAR(255), 
	"SuplScope3DnstrmEmissions" VARCHAR(255), 
	"SuplScope3UpstrmEmissions" VARCHAR(255), 
	"IsSystemGeneratedRecord" VARCHAR(255), 
	"TotalFloorArea" VARCHAR(255), 
	"TotalFloorAreaUnit" VARCHAR(255), 
	"ElectricityEmissionFactorsId" VARCHAR(255), 
	"OtherEmssnFctrId" VARCHAR(255), 
	"RefrigerantEmssnFctrId" VARCHAR(255), 
	"StnryAssetCrbnFtprntId" VARCHAR(255), 
	"StnryAssetEnvrSrcId" VARCHAR(255), 
	"SupplierId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "StnryAssetEnrgyUse" VALUES(1,'','','','2023-03-31','','1900.0','0wVDE000000CaRC2A0','0wUDE000000CaRC2A0','Cumulus Tower - 2023 - March 1 - March 31','1600.0','sqft','1.0','','','2023-03-01','','','','','','False','2000.0','sqft','1','1','','1','1','');
INSERT INTO "StnryAssetEnrgyUse" VALUES(2,'','','','2023-02-28','','1600.0','0wVDE000000CaRC2A0','0wUDE000000CaRC2A0','Cumulus Tower - 2023 - Feb 1 - Feb 28','1600.0','sqft','1.0','','','2023-02-01','','','','','','False','2000.0','sqft','1','1','','1','1','');
CREATE TABLE "StnryAssetEnvrSrc" (
	id INTEGER NOT NULL, 
	"BusinessRegion" VARCHAR(255), 
	"City" VARCHAR(255), 
	"IsCompanyOwnedAsset" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"LeaseExpirationDate" VARCHAR(255), 
	"LeaseIdentifier" VARCHAR(255), 
	"IsLeedCertified" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"OccupiedFloorArea" VARCHAR(255), 
	"OccupiedFloorAreaUnit" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"PremiseIdentifier" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"State" VARCHAR(255), 
	"StationaryAssetIdentifier" VARCHAR(255), 
	"StationaryAssetType" VARCHAR(255), 
	"StreetAddress" VARCHAR(255), 
	"StreetAddress2" VARCHAR(255), 
	"TotalFloorArea" VARCHAR(255), 
	"TotalFloorAreaUnit" VARCHAR(255), 
	"CrbnEmssnScopeAllocId" VARCHAR(255), 
	"ElectricityEmssnFctrId" VARCHAR(255), 
	"OtherEmssnFctrId" VARCHAR(255), 
	"ParentEnvironmentalSourceId" VARCHAR(255), 
	"RefrigerantEmssnFctrId" VARCHAR(255), 
	"RegionalBldgEnergyIntensityId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "StnryAssetEnvrSrc" VALUES(1,'AMER','','True','US','','','','False','Cumulus Tower','1600.0','sqft','','','012DE000006Gs4lYAC','','','Office','','','2000.0','sqft','','1','1','','','');
CREATE TABLE "StnryAssetEnvrSrc_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "StnryAssetEnvrSrc_rt_mapping" VALUES('012DE000006Gs4lYAC','Commercial_Building');
INSERT INTO "StnryAssetEnvrSrc_rt_mapping" VALUES('012DE000006Gs4mYAC','Data_Center');
CREATE TABLE "Supplier" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
COMMIT;
