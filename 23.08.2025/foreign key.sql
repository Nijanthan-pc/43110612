#foreign key
create database amazon;
use amazon;
create table category(CID int primary key,C_name varchar(60) not null,C_Description varchar(80) not null);
insert into category values
(1001,'Electronics','Electronic gadgets like mobile,pc,laptop'),
(1002,'fashion','Dress for mens,womens,kids'),
(1003,'furnitures','home furnitures like sofa,bed,mattress');

#creating a table with cid as a foreign key 
create table products(PID int primary key,P_Name varchar (50) not null,P_Description varchar(50) not null,
 CID int,
 foreign key(CID) references category(CID));
 insert into products values(101,'Realme 7 pro','good mobile',1001),
 (102,'samsung a7 pro','gaming mobile',1001),
 (103,'oppo 7 ','decent mobile',1001),
 (201,'Tshirt','Tshirt for mens',1002),
 (202,'Saree','sarees for womens',1002),
 (203,'Kids Kurta','kurtas for kids',1002),
 (301,'Bed Matress','for bed',1003),
 (302,'Sofa','cafe model sofas',1003),
 (303,'Bench','study bench',1003);
 
 select * from products where cid = 1001;
 
 #updating product id
 update products
 set PID=104
 where P_Name = 'Realme 7 pro';
 select * from products where cid = 1001; #Product id is updated
 
 #we are going to add 'on cascade' so we are dropping foreign key
alter table products
drop foreign key products_ibfk_1;

#after dropping giving a constraint which is 'on cascade'
alter table products
add constraint fk_pro_cat
foreign key(CID) references category(CID)
on update cascade
on delete cascade;

#now try to update the CID
update category
set CID = 1011
where CID = 1001;

select * from products where cid = 1011;#CID is updated in products
select * from category;#CID is also updated in category
