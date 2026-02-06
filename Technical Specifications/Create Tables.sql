create table Hospital
(
	HospitalID int primary key,
	Name nvarchar(100) not null,
	Address nvarchar(255) not null,
	GeoLocation nvarchar(100) not null,
	ContactPerson nvarchar(100) not null,
	PhoneNumber nvarchar(20) not null
);
create table Shipments
(
	ShipmentID int primary key,
	HospitalID int not null,
	KitID int not null,
	ShipmentType nvarchar(50) not null,
	Destination nvarchar(255) not null,
	ShipmentCost decimal(18, 2) not null,
	DeliveryTimeStamp date not null,
	HIPAA_Compliant bit not null,
	CaseRefNumber nvarchar(50) not null,
	Foreign key (HospitalID) references Hospital(HospitalID)
);
create table Kits
(
	KitID int primary key,
	KitName nvarchar(100) not null,
	Description nvarchar(255) not null,
	QuantityOnHand int not null,
	LastServiceDate date not null,
	Status nvarchar(50) not null,
	ReorderLevel int not null,
	CaseRefNumber nvarchar(50) not null
);