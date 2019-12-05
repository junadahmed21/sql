Select * FROM Sales.Orders;

SELECT * FROM Sales.CustomerTransactions
Where PaymentMethodId=4;


SELECT CustomerID, OrderID, OrderDate,ExpectedDeliveryDate
FROM Sales.Orders
Where CustomerPurchaseOrderNumber='16374'

SELECT SalespersonPersonID, OrderDate
FROM Sales. orders
Order By SalesPersonPersonID ASC, OrderDate DESC;

CREATE INDEX SalespersonPersonID_OrderDate1 ON Sales.Orders(SalespersonPersonId ASC, OrderDate DESC);


SELECT OrderId,OrderDate,ExpectedDeliveryDate,People.FullName
From Sales.Orders    Join Application.People    ON People.PersonId= Orders.ContactPersonID
WHERE PreferredName= 'Aakriti';


CREATE NONCLUStered INDEX ContactPersonId_Include_OrderDate_ExpectedDeliveryDate
ON Sales.Orders(ContactPersonId)
INCLUDE (orderDate, ExpectedDeliveryDate)
ON USERDATA;
GO


