-- CREATE USER IF NOT EXISTS root@localhost IDENTIFIED BY 'root';
-- SET PASSWORD FOR root@localhost = PASSWORD('root');
-- GRANT ALL ON *.* TO root@localhost WITH GRANT OPTION;
-- CREATE USER IF NOT EXISTS root@'%' IDENTIFIED BY 'root';
-- SET PASSWORD FOR root@'%' = PASSWORD('root');
-- GRANT ALL ON *.* TO root@'%' WITH GRANT OPTION;
-- CREATE USER IF NOT EXISTS myuser@'%' IDENTIFIED BY 'user';
-- SET PASSWORD FOR myuser@'%' = PASSWORD('user');
-- CREATE DATABASE IF NOT EXISTS mydatabasename;
-- GRANT ALL ON mydatabasename.* TO myuser@'%';

CREATE DATABASE test;
USE test;
CREATE TABLE test(name varchar(10));