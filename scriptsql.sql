create database campus_bike;

create database if not exists campus_bike;

show tables;

create table cliente (
    -> id_cliente int primary key,
    -> nombre varchar(100) not null,
    -> historial varchar(100) not null,
    -> correo varchar(20) not null,
    -> telefono int,
    -> interaccion varchar(50) not null
);

create table compra (
    -> id_compra int primary key,
    -> regi_compra varchar(100),
    -> fecha_comp datetime,
    -> factura_compra varchar(100),
    -> id_cliente_fk int
);

create table inventario (
    -> id_inventario int primary key,
    -> cantidad_bicicletas int,
    -> tipos_accesorios varchar(100),
    -> cantidad_repuestos int,
    -> disponibilidad_produc boolean,
    -> fecha_venta_prove_fk datetime
);

create table abastecimiento (
    -> id_abastecimiento int primary key,
    -> id_facturas_accesorios varchar(100),
    -> id_facturas_repuestos varchar(100),
    -> fecha_comp_prove datetime,
    -> tipo_suministro_fk varchar(100),
    -> id_proveedor_fk int
);

create table venta_proveedor (
    -> id_venta int primary key,
    -> regis_ventas varchar(100),
    -> factura_venta varchar(100),
    -> repuestos int,
    -> id_proveedor int
);

create table proveedores (
    -> id_proveedor int primary key,
    -> tipo_suministro varchar(100),
    -> seg_pedidos varchar(100),
    -> nom_proveedor varchar(100) not null,
    -> correo_prove varchar(20) not null,
    -> telef_prove int,
    -> fecha_venta_prove datetime
);