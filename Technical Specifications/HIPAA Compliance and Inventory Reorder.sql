CREATE VIEW v_Compliance_and_Inventory_Alerts AS
SELECT 
    h.Name AS Hospital_Name,
    k.KitName,
    k.QuantityOnHand,
    k.ReorderLevel,
    k.LastServiceDate,
    -- Stock Alert Logic [cite: 44]
    CASE 
        WHEN k.QuantityOnHand <= k.ReorderLevel THEN 'URGENT: Low Stock'
        ELSE 'Healthy' 
    END AS Inventory_Status,
    -- HIPAA/Compliance Logic [cite: 53, 77]
    CASE 
        WHEN DATEDIFF(day, k.LastServiceDate, GETDATE()) > 180 THEN 'NON-COMPLIANT: Service Overdue'
        ELSE 'Compliant'
    END AS Compliance_Status
FROM Kits k
JOIN Shipments s ON k.KitID = s.KitID
JOIN Hospital h ON s.HospitalID = h.HospitalID;