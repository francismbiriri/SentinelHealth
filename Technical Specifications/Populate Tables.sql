-- 1. Populating Hospitals
INSERT INTO Hospital (HospitalID, Name, Address, GeoLocation, ContactPerson, PhoneNumber)
VALUES 
(1, 'St. Jude Medical Center', '123 Health Ave, NY', '40.7128, -74.0060', 'Sarah Connor', '555-0101'),
(2, 'City General Hospital', '456 Wellness Blvd, CA', '34.0522, -118.2437', 'James Smith', '555-0202'),
(3, 'Mercy Childrens Hospital', '789 Care Ln, TX', '29.7604, -95.3698', 'Ellen Ripley', '555-0303');

-- 2. Populating Kits (Including some below ReorderLevel)
INSERT INTO Kits (KitID, KitName, Description, QuantityOnHand, LastServiceDate, Status, ReorderLevel, CaseRefNumber)
VALUES 
(101, 'Ortho-Surgical Tray', 'Complete orthopedic set', 5, '2025-08-15', 'Available', 2, 'CASE-9901'),
(102, 'Cardiac Stent Kit', 'High-precision stent tray', 1, '2025-09-01', 'Low Stock', 3, 'CASE-9902'), -- Trigger Alert
(103, 'Neurology Drill Set', 'Specialized cranial tools', 0, '2025-10-10', 'Out of Stock', 2, 'CASE-9903'), -- Trigger Alert
(104, 'General Surgery Kit', 'Basic instruments', 10, '2026-01-05', 'Available', 5, 'CASE-9904');

-- 3. Populating Shipments (Standard vs Expedited Costs)
INSERT INTO Shipments (ShipmentID, HospitalID, KitID, ShipmentType, Destination, ShipmentCost, DeliveryTimeStamp, HIPAA_Compliant, CaseRefNumber)
VALUES 
(5001, 1, 101, 'Standard', 'Loading Dock A', 50.00, '2026-02-01', 1, 'HOSP-REF-001'),
(5002, 2, 102, 'Expedited', 'OR Suite 4', 450.00, '2026-02-03', 1, 'HOSP-REF-002'), -- High Cost Example
(5003, 3, 103, 'Expedited', 'ER Entrance', 600.00, '2026-02-04', 1, 'HOSP-REF-003'), -- High Cost Example
(5004, 1, 104, 'Standard', 'Main Pharmacy', 55.00, '2026-02-05', 1, 'HOSP-REF-004');