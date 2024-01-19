use quanlybanhang;
insert into customer values (1, "Minh Quan", 10), (2, "Ngoc Oanh", 20), (3, "Hong Ha",50);
select * from customer;
insert into orders values (1, '2006-3-21', 100, 1),
(2, '2006-3-23', 250, 2),
(3, '2006-3-16', 200, 1);
select * from orders;

insert into product values (1, "May Giat", 3),
(2, "Tu Lanh", 5),
(3, "Dieu Hoa", 7),
(4, "Quat", 1),
(5, "Bep Dien", 2);
select * from product;

insert into orderdetail values (3,1,1),
(7,1,3), (2,1,4), (1,2,1), (8,3,1), (4,2,5), (3,2,3);
select * from orderdetail;

select orderID, orderDate, orderTotalPrice from orders;

select c.customerName, p.productName
from customer c join orders o on c.customerID = o.fk_customerID
join orderdetail od on o.orderID = od.fk_orderID
join product p on od.fk_productID = p.productID;

select *
from customer 
where not exists(select * from orders where orders.fk_customerID = customer.customerID);

show databases;
