CREATE TABLE conectores(
	id_tipo INT NOT NULL AUTO_INCREMENT,
	tipo VARCHAR(45) NOT NULL,
	precio_venta_u INT NOT NULL,
	precio_compra_u INT NOT NULL,
	PRIMARY KEY (id_tipo)
	);
INSERT INTO conectores (id_tipo, tipo,precio_venta_u,precio_compra_u) VALUES
(1,'2 Entradas',321,100),
(2,'3 Entradas',415,126),
(3,'5 Entradas',504,157),
(4,'8 Entradas',665,220),
(5,'2 Ent/2 Sal',665,197),
(6,'3 Ent/3 Sal',734,246),
(7,'2 Ent/4 Sal',986,328),
(8,'2 Ent/6 Sal',1468,501),
(9,'3 Ent/6 Sal',1502,501);



CREATE TABLE items(
	id_item INT NOT NULL AUTO_INCREMENT,
	fk_tipo INT NOT NULL,
	total_item INT NOT NULL,
	fk_venta INT NOT NULL,
	PRIMARY KEY (id_item),
	FOREIGN KEY (fk_tipo) REFERENCES conectores(id_tipo),
	FOREIGN KEY (fk_venta) REFERENCES ventas(id_venta)
	);

	
CREATE TABLE ventas(
	id_venta INT NOT NULL AUTO_INCREMENT,
	fecha_venta DATE NOT NULL,
	total_venta INT,
	PRIMARY KEY (id_venta)
	);

CREATE TABLE item_ventas(
	id_item_ventas INT NOT NULL AUTO_INCREMENT,
	fk_venta INT NOT NULL,
	fk_item INT NOT NULL
	PRIMARY KEY (id_item_ventas),
	);