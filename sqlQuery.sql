
delete 
from Orders
where OrderID > 1


delete 
from OrderDetails
where OrderID > 1



DBCC CHECKIDENT ('Orders', RESEED, 0);

ALTER TABLE Users 
ALTER COLUMN Password VARCHAR(100);

ALTER TABLE Users 
ADD Salt VARCHAR(100);



delete 
from Users
where UserID >= 1


DISABLE TRIGGER ALL ON Users;



