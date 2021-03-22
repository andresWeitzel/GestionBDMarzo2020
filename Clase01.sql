/*
 * Curso: Gestión de Base de Datos: 60 hs.
 * Días: Lunes 15:00 a 18:30 hs.
 * Profe: Carlos Ríos		lawlercarlospatricio@gmail.com
 * 
 * Software: Server: MariaDB o MySQL		- PostGreSQL 
 * Client:		DBeaver	 - MySQL-WorkBench
 */

show databases;
drop database if exists gestion;
create database gestion;
use gestion;

/*
 * - ropa
 * - gestión estudiantil
 * - tienda de mascotas
 * - alquileres
 * - Vacunas covid, por laboratorio, provincia, municipio. Seguimientos de dosis 1 y 2.
 * - banco
 */

-- Tienda de ropa
drop database if exists ropa;
create database ropa;
use ropa;

/*
 * factura ropa 
 * la camisa
 * las sandalias
 * talle
 * producto
 * precio
 * color
 * clientes
 * marca
 * numero de articulo
 * stock
 */

-- cliente
-- 			id
-- 			nombre
-- 			apellido
-- 			edad
-- 			direccion
-- 			email
-- 			telefono
-- 			tipoDocumento	enum('DNI','LIBRETA_CIVICA','LIBRETA_ENROLAMIENTO','PASS')
-- 			numeroDocumento

-- facturas
-- 			id
-- 			letra enum('A','B','C')
-- 			numero
-- 			fecha
-- 			medioDePago enum('EFECTIVO','DEBITO','TARJETA')
-- 			idCliente

-- detalles
-- 			id
-- 			idArticulo
-- 			idFactura
-- 			precio
-- 			cantidad

-- articulos
-- 			id
-- 			descripción
-- 			tipo		enum('CALZADO','ROPA')
-- 			color
-- 			talle_num
-- 			stock
-- 			precio
-- 			temporada enum('VERANO','OTOÑO','INVIERNO')

show databases;

show tables;


-- catalogo de tablas
select * from information_schema.TABLES where TABLE_SCHEMA = 'ropa';

-- catalogo de restricciones
select * from information_schema.TABLE_CONSTRAINTS where TABLE_SCHEMA ='gestion';

-- catalogo de vistas
select * from information_schema.VIEWS;


drop table if exists clientes;
drop table if exists faturas;
create table clientes(
	id int auto_increment primary key,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	edad int check (edad between 18 and 120),
	direccion varchar(50),
	email varchar(30),
	telefono varchar(25),
	tipoDocumento enum('DNI','LIBRETA_CIVICA','LIBRETA_ENROLAMIENTO','PASS'),
	numeroDocumento int
);

alter table clientes
	add constraint U_clientes_TipoNumero
	unique(tipoDocumento,numeroDocumento);

create table facturas(
	id int auto_increment primary key,
	letra enum('A','B','C'),
	numero int
);






select version();

















