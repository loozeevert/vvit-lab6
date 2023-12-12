DROP TABLE IF EXISTS 'shop';
DROP INDEX IF EXISTS 'sqlite_autoindex_shop_1';
DROP TABLE IF EXISTS 'product';
DROP INDEX IF EXISTS 'sqlite_autoindex_product_1';
DROP TABLE IF EXISTS 'warehouse';
DROP INDEX IF EXISTS 'sqlite_autoindex_warehouse_1';
DROP TABLE IF EXISTS 'collaborator';
CREATE TABLE shop (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance FLOAT NOT NULL);
INSERT INTO 'shop' VALUES(1,'envenom',50000);
INSERT INTO 'shop' VALUES(2,'anis',30000);
null;
CREATE TABLE product (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);
INSERT INTO 'product' VALUES(1,'shoes',80000);
INSERT INTO 'product' VALUES(2,'hoodie',30000);
INSERT INTO 'product' VALUES(3,'pants',20000);
null;
CREATE TABLE warehouse (
shop_id INTEGER REFERENCES shop (id),
product_id INTEGER REFERENCES product (id),
quantity INTEGER NOT NULL,
PRIMARY KEY (shop_id, product_id));
INSERT INTO 'warehouse' VALUES(2,1,5);
INSERT INTO 'warehouse' VALUES(1,2,20);
INSERT INTO 'warehouse' VALUES(1,3,20);
INSERT INTO 'warehouse' VALUES(1,1,3);
null;
CREATE TABLE collaborator(
collaborator_id INTEGER PRIMARY KEY,
shop_id INTEGER REFERENCES shop (id),
name VARCHAR(255),
salary INTEGER NOT NULL,
task VARCHAR(255));
INSERT INTO 'collaborator' VALUES(1,1,'Death_Assistant',10110,'закупает');
INSERT INTO 'collaborator' VALUES(2,1,'Максим Аганим',3500,'продаёт');
INSERT INTO 'collaborator' VALUES(3,2,'Наташа Два Баша',9,'закупает');
INSERT INTO 'collaborator' VALUES(4,2,'НАДЯ_РАПИРА',37,'продаёт');
