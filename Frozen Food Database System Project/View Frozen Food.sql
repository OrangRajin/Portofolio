USE Frozen_Food
GO

/*create view 'InfoCustomer' to display CustomerName (obtained from customer FirstName + LastName), CustomerAddress(obtained from table Address), and CityName*/

create view InfoCustomer as
select
    [CustomerName] = First_Name +' ' + Last_Name,
	[CustomerAddress] = Address_customer,
	City_Name
from Customer c
    join address_customer
	    on c.Address_ID = address_customer.Address_ID
    join City ci
	    on ci.City_ID = address_customer.City_ID

--Display
select * from InfoCustomer

/*Create view 'TransactionReceipt' to display Total Payment (obtained from sum itemPrice times quantity), CustomerName (obtained from customer FirstName + LastName) and Total Basket (obtained from count basket_ID)*/

create view TransactionReceipt as
select
     Order_ID,
	 [CustomerName] = First_Name +' ' + Last_Name,
	 [Total Basket] = count(ba.Basket_ID)
from [Order] o
     join Customer c
	     on o.Customer_ID = c.Customer_ID
     join Basket ba
	     on o.Basket_ID = ba.Basket_ID
group by Order_ID, First_Name, Last_Name

--Display
select * from TransactionReceipt
--Delete
drop view TransactionReceipt

/*create View 'SupplierandDistributor' that display Supplier ID, SupplierName, Distributor_ID, DistributorName for every Supplier Name that start with 'A' */

create View SupplierandDistributor as
select
    s.Supplier_ID, 
	Supplier_Name,
	Distributor_ID,
	DistributorName
from Supplier s
    join Distributor d
	    on s.Supplier_ID = d.Supplier_ID
where left(Supplier_Name,1) = 'A'

--Display
select * from SupplierandDistributor