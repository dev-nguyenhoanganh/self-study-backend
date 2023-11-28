-- T?o user
CREATE USER dev_hoanganh IDENTIFIED BY 1111;

-- C?p quy?n cho user
GRANT CREATE TABLE, CREATE session, CONNECT TO dev_hoanganh;

-- T?o b?ng
create table dev_hoanganh.tbl_user
(
   id int not null,
   name varchar2(1000),
   age int,
   primary key (id)
);

insert into dev_hoanganh.tbl_user (id, name, age) values (1, 'Hoàng Anh', 26);
insert into dev_hoanganh.tbl_user (id, name, age) values (2, 'Hùng', 32);
insert into dev_hoanganh.tbl_user (id, name, age) values (3, 'C??ng', 24);

select * from dev_hoanganh.tbl_user;
