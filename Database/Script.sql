-- Create new USER
CREATE USER dev IDENTIFIED BY 1111;

-- C?p quy?n cho user
GRANT CREATE TABLE TO dev;

-- Xem quy?n c?a user
SELECT * FROM dba_users
WHERE username = 'DEV';

-- Phân quy?n
GRANT CONNECT, RESOURCE, DBA TO dev;
grant create session to dev;
grant create table to dev;
grant unlimited tablespace to dev;

-- T?o table space
create tablespace training; 

-- Xem các table space
select tablespace_name from dba_tablespaces;

-- 
select * from session_privs;


------------------------

-- T?o b?ng
create table dev.tbl_user
(
   id int not null,
   name varchar2(1000),
   age int,
   primary key (id)
);

insert into dev.tbl_user (id, name, age)
values 
    (1, 'Hoàng Anh', 26),
    (2, 'Hùng', 32),
    (3, 'C??ng', 24)
;

