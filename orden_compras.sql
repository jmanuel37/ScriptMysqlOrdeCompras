
create database orden_compras;

use orden_compras;

CREATE TABLE cliente (
  id_cliente int(11) NOT NULL AUTO_INCREMENT,
  nombre_cliente varchar(80),
  descripcion_cliente varchar(80),
  PRIMARY KEY (id_cliente)
 ); 
CREATE TABLE producto (
  id_producto int(11) NOT NULL AUTO_INCREMENT,
  nombre_prod varchar(80),
  precio_prod decimal(10,2) NOT NULL,
  uni_medida_prod varchar(80),
  descripcion_prod varchar(80),
  PRIMARY KEY (id_producto)
);

CREATE TABLE orden_compra (
  orden_id int(11) NOT NULL AUTO_INCREMENT,
  cliente_id int(11)NOT NULL,
  fecha_orden TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  precio_total decimal(10,2) NOT NULL,
  PRIMARY KEY (orden_id),
  CONSTRAINT FK_idcli FOREIGN KEY (cliente_id) REFERENCES cliente (id_cliente)
);

CREATE TABLE orden_compra_detalle (
  deta_id int(11)NOT NULL,
  producto_id int(11) NOT NULL,
  nombre_prod varchar(80),
  precio_prod decimal(10,2) NOT NULL,
  cant_producto int(11)NOT NULL,
  descripcion varchar(80),
  ordencompra_orden_id int(11) NOT NULL,
  PRIMARY KEY (deta_id),
  CONSTRAINT FK_idcomp FOREIGN KEY (ordencompra_orden_id) REFERENCES orden_compra (orden_id),
  CONSTRAINT FK_idprodeta FOREIGN KEY (producto_id) REFERENCES producto (id_producto)
);