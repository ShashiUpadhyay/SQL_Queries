create table employees
(eid char(3) primary key,
ename varchar2(15),
telephone# char(12));

create table customers
(cid char(4) primary key,
cname varchar2(15),
telephone# char(12),
visits_made number(4),
last_visit_date date);

create table products
(pid char(4) primary key,
pname varchar2(15),
qoh number(5),
qoh_threshold number(4),
original_price number(6,2),
discnt_rate number(3,2));

create table purchases
(pur# number(6) primary key,
eid char(3) references employees(eid),
pid char(4) references products(pid),
cid char(4) references customers(cid),
qty number(5),
ptime date,
total_price number(7,2));

insert into employees values ('e01', 'Peter', '666-555-1234');
insert into employees values ('e02', 'David', '777-555-2341');
insert into employees values ('e03', 'Susan', '888-555-3412');
insert into employees values ('e04', 'Anne', '666-555-4123');
insert into employees values ('e05', 'Mike', '444-555-4231');

insert into customers values ('c001', 'Kathy', '666-555-4567', 3, '12-OCT-15');
insert into customers values ('c002', 'John', '888-555-7456', 1, '08-OCT-15');
insert into customers values ('c003', 'Chris', '666-555-6745', 3, '18-SEP-15');
insert into customers values ('c004', 'Mike', '999-555-5674', 1, '20-OCT-15');
insert into customers values ('c005', 'Mike', '777-555-4657', 2, '30-AUG-15');
insert into customers values ('c006', 'Connie', '777-555-7654', 2, '16-OCT-15');
insert into customers values ('c007', 'Katie', '888-555-6574', 1, '12-OCT-15');
insert into customers values ('c008', 'Joe', '666-555-5746', 1, '18-OCT-15');

insert into products values ('p001', 'stapler', 60, 20, 9.99, 0.1);
insert into products values ('p002', 'TV', 6, 5, 249, 0.15);
insert into products values ('p003', 'camera', 20, 5, 148, 0.2);
insert into products values ('p004', 'pencil', 100, 10, 0.99, 0.0);
insert into products values ('p005', 'chair', 10, 8, 12.98, 0.3);
insert into products values ('p006', 'lamp', 10, 6, 19.95, 0.1);
insert into products values ('p007', 'tablet', 50, 10, 149, 0.2);
insert into products values ('p008', 'computer', 5, 3, 499, 0.3);
insert into products values ('p009', 'powerbank', 20, 5, 49.95, 0.1);

insert into purchases values (100001, 'e01', 'p002', 'c001', 1, to_date('12-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 211.65);
insert into purchases values (100002, 'e01', 'p003', 'c001', 1, to_date('20-SEP-2015 11:23:36', 'DD-MON-YYYY HH24:MI:SS'), 118.40);
insert into purchases values (100003, 'e02', 'p004', 'c002', 5, to_date('08-OCT-2015 09:30:50', 'DD-MON-YYYY HH24:MI:SS'), 4.95);
insert into purchases values (100004, 'e01', 'p005', 'c003', 2, to_date('23-AUG-2015 16:23:35', 'DD-MON-YYYY HH24:MI:SS'), 18.17);
insert into purchases values (100005, 'e04', 'p007', 'c004', 1, to_date('20-OCT-2015 13:38:55', 'DD-MON-YYYY HH24:MI:SS'), 119.20);
insert into purchases values (100006, 'e03', 'p008', 'c001', 1, to_date('12-OCT-2015 15:22:10', 'DD-MON-YYYY HH24:MI:SS'), 349.30);
insert into purchases values (100007, 'e03', 'p006', 'c003', 2, to_date('10-SEP-2015 17:12:20', 'DD-MON-YYYY HH24:MI:SS'), 35.91);
insert into purchases values (100008, 'e03', 'p006', 'c005', 1, to_date('16-AUG-2015 12:22:15', 'DD-MON-YYYY HH24:MI:SS'), 17.96);
insert into purchases values (100009, 'e03', 'p001', 'c007', 1, to_date('12-OCT-2015 14:44:23', 'DD-MON-YYYY HH24:MI:SS'), 8.99);
insert into purchases values (100010, 'e04', 'p002', 'c006', 1, to_date('19-SEP-2015 17:32:37', 'DD-MON-YYYY HH24:MI:SS'), 211.65);
insert into purchases values (100011, 'e02', 'p004', 'c006', 10, to_date('16-OCT-2015 16:54:40', 'DD-MON-YYYY HH24:MI:SS'), 9.90);
insert into purchases values (100012, 'e02', 'p008', 'c003', 2, to_date('18-SEP-2015 15:56:38', 'DD-MON-YYYY HH24:MI:SS'), 698.60);
insert into purchases values (100013, 'e04', 'p006', 'c005', 2, to_date('30-AUG-2015 10:38:25', 'DD-MON-YYYY HH24:MI:SS'), 35.91);
insert into purchases values (100014, 'e03', 'p009', 'c008', 3, to_date('18-OCT-2015 10:54:06', 'DD-MON-YYYY HH24:MI:SS'), 134.84);









create table t2 (B number(30) primary key,t2name char(15));
insert into t2 values (100001, 'stapler');
insert into t2 values (100002, 'TV');
insert into t2 values (100003, 'camera');

create table t1 (A number(10) primary key,t1name char(15),foreign key(A) references t2(B) on delete cascade);
insert into t1 values (100001, 'Peter');
insert into t1 values (100002, 'David');
insert into t1 values (100003, 'Susan');


create table t2 (B number(30) primary key,t2name char(15));
create table t1 (A number(10) primary key,t1name char(15),foreign key(A) references t2(B) on delete cascade);


create table T (B number(30) primary key,Tname char(15));
insert into T values (100011, 'Chair');
insert into T values (100012, 'Tray');
insert into T values (100013, 'Bag');
insert into T values (100014, 'Bed');


create table T(SID number(4) primary key,name varchar2(15),marks number(6,2));
insert into T values(101,'stapler',200);
insert into T values(102,'TV',600);
insert into T values(103,'camera',300);
insert into T values(104,'pencil',100);
insert into T values(105,'tablet',50);
insert into T values(106,'computer',250);



------with char data type----
create table t2 (B char(30) primary key,t2name char(15));
insert into t2 values ('100001', 'stapler');
insert into t2 values ('100002', 'TV');
insert into t2 values ('100003', 'camera');

create table t1 (A char(10) primary key,t1name char(15),foreign key(A) references t2(B) on delete cascade);
insert into t1 values ('100001', 'Peter');
insert into t1 values ('100002', 'David');
insert into t1 values ('100003', 'Susan');

------with varchar data type----
create table t2 (B varchar2(30) primary key,t2name char(15));
insert into t2 values ('100001', 'stapler');
insert into t2 values ('100002', 'TV');
insert into t2 values ('100003', 'camera');

create table t1 (A varchar2(10) primary key,t1name char(15),foreign key(A) references t2(B) on delete cascade);
insert into t1 values ('100001', 'Peter');
insert into t1 values ('100002', 'David');
insert into t1 values ('100003', 'Susan');


-- Question 4 --
create table T (pur# number(6) primary key,eid char(3),business number(7,2));
insert into T values (100001, 'e01',211.65);
insert into T values (100002, 'e01',118.40);
insert into T values (100003, 'e02',4.95);
insert into T values (100004, 'e01',18.17);
insert into T values (100005, 'e04',119.20);
insert into T values (100006, 'e03',349.30);




create table T (B number(30) primary key,Tname char(15));
insert into T values (100011, 'Chair');
insert into T values (100012, 'Tray');
insert into T values (100013, 'Bag');
insert into T values (100014, 'Bed');

create VIEW SV AS select * from T where B > 100012;

