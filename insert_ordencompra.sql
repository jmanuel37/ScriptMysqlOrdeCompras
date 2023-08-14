insert into cliente(nombre_cliente,descripcion_cliente)values('Jose Luis Ayala','Cliente de productos varios');
insert into cliente(nombre_cliente,descripcion_cliente)values('Mauricio Alberto Rivas','Cliente de productos pequeños');
insert into cliente(nombre_cliente,descripcion_cliente)values('Oscar Alfredo Mejia','Cliente de productos grandes');

insert into producto(precio_prod,nombre_prod,uni_medida_prod,descripcion_prod)values(10.25,'CEMENTO HOLSIN','50cm','cemento CESSA HOLSIN para contruccion');
insert into producto(precio_prod,nombre_prod,uni_medida_prod,descripcion_prod)values(9.00,'PALA','100cm','pala TRUPER para contruccion');
insert into producto(precio_prod,nombre_prod,uni_medida_prod,descripcion_prod)values(56.85,'CARRETILLA','1.50cm','Carretilla TRUPER para contruccion');

insert into orden_compra(orden_Id,cliente_id,precio_total)values(1,1,19.25);

insert into orden_compra_detalle(deta_id,producto_id,nombre_prod,precio_prod,cant_producto,descripcion,orden_Id,ordencompra_orden_id)values(1,1,'CEMENTO HOLSIN',10.25,1,'CEMENTO',1,1);
insert into orden_compra_detalle(deta_id,producto_id,nombre_prod,precio_prod,cant_producto,descripcion,orden_Id,ordencompra_orden_id)values(2,2,'PALA',9.00,1,'PALA TRUPER',1,1);

--select * from cliente;
--select * from orden_compra;

--select * from orden_compra_detalle;
