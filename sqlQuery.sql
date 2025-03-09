
delete 
from Orders
where OrderID > 1


delete 
from OrderDetails
where OrderID > 1

DBCC CHECKIDENT ('Orders', RESEED, 0);

