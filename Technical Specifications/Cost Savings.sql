select s.shipmenttype, sum(s.shipmentcost) as totalcost
from dbo.Shipments s
where s.shipmenttype in ('Standard', 'Expedited')
group by s.shipmenttype
