CREATE VIEW v_Hospital_Inventory_Map AS
SELECT 
    h.HospitalID,
    h.Name AS Hospital_Name,
    h.GeoLocation, -- Tableau will use this for the map coordinates
    h.ContactPerson,
    k.KitName,
    k.QuantityOnHand,
    k.ReorderLevel,
    -- Status Logic for Map Coloring
    CASE 
        WHEN k.QuantityOnHand = 0 THEN 'Critical: Out of Stock'
        WHEN k.QuantityOnHand <= k.ReorderLevel THEN 'Warning: Low Stock'
        ELSE 'Healthy'
    END AS Stock_Urgency,
    -- Shipping Efficiency Metric
    s.ShipmentType,
    s.ShipmentCost
FROM Hospital h
JOIN Shipments s ON h.HospitalID = s.HospitalID 
JOIN Kits k ON s.KitID = k.KitID; 