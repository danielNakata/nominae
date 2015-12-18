/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.6.26 : Database - nominae
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE `nominae`;

/*Table structure for table `tasistenciasempleados` */

DROP TABLE IF EXISTS `tasistenciasempleados`;

CREATE TABLE `tasistenciasempleados` (
  `idempleado` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `idturno` int(11) NOT NULL DEFAULT '0',
  `idtipoasistencia` int(11) NOT NULL DEFAULT '1',
  `tieneincidencia` int(3) NOT NULL DEFAULT '0',
  `idtipopago` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idestatusasistencia` int(11) DEFAULT NULL,
  `usuarioreg` varchar(50) DEFAULT '-',
  `usuariomod` varchar(50) DEFAULT '-',
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tasistenciasempleados` */

/*Table structure for table `tcatcategorias` */

DROP TABLE IF EXISTS `tcatcategorias`;

CREATE TABLE `tcatcategorias` (
  `idcategoria` int(11) NOT NULL,
  `clavecategoria` varchar(50) NOT NULL DEFAULT '-',
  `descripcion` text,
  `idestatus` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usuarioreg` varchar(50) DEFAULT '-',
  `usuariomod` varchar(50) DEFAULT '-',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatcategorias` */

/*Table structure for table `tcatcodigospostales` */

DROP TABLE IF EXISTS `tcatcodigospostales`;

CREATE TABLE `tcatcodigospostales` (
  `d_codigo` varchar(5) NOT NULL,
  `d_asenta` varchar(255) NOT NULL DEFAULT '-',
  `d_tipo_asenta` varchar(100) NOT NULL DEFAULT '-',
  `d_mnpio` varchar(255) NOT NULL DEFAULT '-',
  `d_estado` varchar(255) NOT NULL DEFAULT '-',
  `d_ciudad` varchar(255) NOT NULL DEFAULT '-',
  `d_CP` int(11) NOT NULL DEFAULT '0',
  `c_estado` int(11) NOT NULL DEFAULT '0',
  `c_oficina` int(11) NOT NULL DEFAULT '0',
  `c_CP` int(11) NOT NULL DEFAULT '0',
  `c_tipo_asenta` int(11) NOT NULL DEFAULT '0',
  `c_mnpio` int(11) NOT NULL DEFAULT '0',
  `id_asenta_cpcons` int(11) NOT NULL DEFAULT '0',
  `d_zona` varchar(255) NOT NULL DEFAULT '-',
  `c_cve_ciudad` int(11) NOT NULL DEFAULT '0',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`d_codigo`,`id_asenta_cpcons`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatcodigospostales` */

/*Table structure for table `tcatconceptos` */

DROP TABLE IF EXISTS `tcatconceptos`;

CREATE TABLE `tcatconceptos` (
  `idconcepto` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL DEFAULT '-',
  `idestatus` int(11) NOT NULL DEFAULT '1',
  `factor` int(11) DEFAULT '1',
  PRIMARY KEY (`idconcepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatconceptos` */

/*Table structure for table `tcatconfiguraciones` */

DROP TABLE IF EXISTS `tcatconfiguraciones`;

CREATE TABLE `tcatconfiguraciones` (
  `idconfig` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `valormin` double(11,4) DEFAULT '0.0000',
  `valormax` double(11,4) DEFAULT NULL,
  `esactivo` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idconfig`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatconfiguraciones` */

insert  into `tcatconfiguraciones`(`idconfig`,`descripcion`,`valormin`,`valormax`,`esactivo`) values (1,'NUMERO MAXIMO INTENTOS INICIO SESION',0.0000,3.0000,1);

/*Table structure for table `tcatcontactoempleados` */

DROP TABLE IF EXISTS `tcatcontactoempleados`;

CREATE TABLE `tcatcontactoempleados` (
  `idcontacto` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idcontacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatcontactoempleados` */

insert  into `tcatcontactoempleados`(`idcontacto`,`descripcion`) values (1,'TELEFONO FIJO'),(2,'TELEFONO TRABAJO'),(3,'CELULAR'),(4,'CORREO ELECTRONICO'),(5,'USUARIO FACEBOOK'),(6,'TELEFONO OTRO');

/*Table structure for table `tcatdepartamentos` */

DROP TABLE IF EXISTS `tcatdepartamentos`;

CREATE TABLE `tcatdepartamentos` (
  `iddepartamento` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL DEFAULT '-',
  `nummaxempbase` int(11) NOT NULL DEFAULT '0',
  `numminempbase` int(11) NOT NULL DEFAULT '0',
  `nummaxemptemp` int(11) NOT NULL DEFAULT '0',
  `numminempmin` int(11) NOT NULL DEFAULT '0',
  `numempactual` int(11) NOT NULL DEFAULT '0',
  `idempleadojefe` int(11) NOT NULL DEFAULT '0',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usuarioreg` varchar(50) DEFAULT '-',
  `usuariomod` varchar(50) DEFAULT '-',
  `idestatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatdepartamentos` */

/*Table structure for table `tcatdiasferiados` */

DROP TABLE IF EXISTS `tcatdiasferiados`;

CREATE TABLE `tcatdiasferiados` (
  `iddiaferiado` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `dia` int(11) NOT NULL DEFAULT '1',
  `mes` int(11) NOT NULL DEFAULT '1',
  `annio` int(11) NOT NULL DEFAULT '1990',
  `esrecurrente` int(3) NOT NULL DEFAULT '1',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usuarioreg` varchar(50) DEFAULT '-',
  `usuariomod` varchar(50) DEFAULT '-',
  PRIMARY KEY (`iddiaferiado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatdiasferiados` */

/*Table structure for table `tcatdomicilioempleados` */

DROP TABLE IF EXISTS `tcatdomicilioempleados`;

CREATE TABLE `tcatdomicilioempleados` (
  `iddomicilio` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`iddomicilio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatdomicilioempleados` */

insert  into `tcatdomicilioempleados`(`iddomicilio`,`descripcion`) values (1,'PERSONAL'),(2,'TRABAJO'),(3,'CONYUGE'),(4,'FISCAL'),(5,'LEGAL');

/*Table structure for table `tcatestatusasistencias` */

DROP TABLE IF EXISTS `tcatestatusasistencias`;

CREATE TABLE `tcatestatusasistencias` (
  `idestatusasistencia` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  `abrevia` varchar(5) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idestatusasistencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatestatusasistencias` */

insert  into `tcatestatusasistencias`(`idestatusasistencia`,`descripcion`,`abrevia`) values (1,'ASISTENCIA','ASI'),(2,'PERMISO DE TRABAJO','PTR'),(3,'INCAPACIDAD','INC'),(4,'LICENCIA','LIC'),(5,'DESCANSO','DES'),(6,'VACACIONES','VAC'),(7,'FALTA','FAL');

/*Table structure for table `tcatestatusempleados` */

DROP TABLE IF EXISTS `tcatestatusempleados`;

CREATE TABLE `tcatestatusempleados` (
  `idestatus` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatestatusempleados` */

insert  into `tcatestatusempleados`(`idestatus`,`descripcion`) values (1,'ACTIVO'),(2,'VACACIONES'),(3,'PERMISO DE TRABAJO'),(4,'LICENCIA CON GOCE'),(5,'LICENCIA SIN GOCE'),(6,'DEMANDA LABORAL'),(7,'SUSPENSION SINDICAL'),(8,'BAJA');

/*Table structure for table `tcatestatususuarios` */

DROP TABLE IF EXISTS `tcatestatususuarios`;

CREATE TABLE `tcatestatususuarios` (
  `idestatususuario` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idestatususuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatestatususuarios` */

insert  into `tcatestatususuarios`(`idestatususuario`,`descripcion`) values (0,'CAPTURADO'),(1,'ACTIVO'),(2,'VACACIONES'),(3,'BAJA'),(4,'ELIMINADO'),(5,'BLOQUEADO');

/*Table structure for table `tcatidentificacionempleados` */

DROP TABLE IF EXISTS `tcatidentificacionempleados`;

CREATE TABLE `tcatidentificacionempleados` (
  `ididentificacion` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ididentificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatidentificacionempleados` */

insert  into `tcatidentificacionempleados`(`ididentificacion`,`descripcion`) values (1,'INE'),(2,'PASAPORTE'),(3,'LICENCIA DE MANEJO'),(4,'ACTA DE NACIMIENTO'),(5,'ACTA DE MATRIMONIO'),(6,'GAFETE OFICIAL'),(7,'CREDENCIAL EDUCATIVA');

/*Table structure for table `tcatperfiles` */

DROP TABLE IF EXISTS `tcatperfiles`;

CREATE TABLE `tcatperfiles` (
  `idperfil` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idperfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatperfiles` */

insert  into `tcatperfiles`(`idperfil`,`descripcion`) values (1,'SISTEMAS'),(2,'DB ADMIN'),(3,'APP ADMIN'),(100,'GERENTE RH'),(999,'INVITADO');

/*Table structure for table `tcatpuestos` */

DROP TABLE IF EXISTS `tcatpuestos`;

CREATE TABLE `tcatpuestos` (
  `idpuesto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT '-',
  `descripcion` text,
  `idestatus` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usuarioreg` varchar(50) DEFAULT NULL,
  `usuariomod` varchar(50) DEFAULT NULL,
  `numempleados` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatpuestos` */

/*Table structure for table `tcatresultadosopiniciosesion` */

DROP TABLE IF EXISTS `tcatresultadosopiniciosesion`;

CREATE TABLE `tcatresultadosopiniciosesion` (
  `idresultadoop` int(22) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idresultadoop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatresultadosopiniciosesion` */

insert  into `tcatresultadosopiniciosesion`(`idresultadoop`,`descripcion`) values (0,'ERROR USUARIO'),(1,'INICIO SESION OK'),(2,'USUARIO VACACIONES'),(3,'USUARIO BAJA'),(4,'USUARIO ELIMINADO'),(5,'USUARIO BLOQUEADO'),(6,'CONTRASENA INCORRECTA');

/*Table structure for table `tcattipocontratos` */

DROP TABLE IF EXISTS `tcattipocontratos`;

CREATE TABLE `tcattipocontratos` (
  `idtipocontrato` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  PRIMARY KEY (`idtipocontrato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcattipocontratos` */

/*Table structure for table `tcattipomodificacion` */

DROP TABLE IF EXISTS `tcattipomodificacion`;

CREATE TABLE `tcattipomodificacion` (
  `idtipomodificacion` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `esactivo` int(11) DEFAULT '1',
  `tipo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipomodificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcattipomodificacion` */

insert  into `tcattipomodificacion`(`idtipomodificacion`,`descripcion`,`esactivo`,`tipo`) values (100,'NUEVO USUARIO',1,1),(101,'MODIFICA USUARIO',1,2),(102,'MODIFICA CONTRASENA USUARIO',1,1),(103,'RESETEA CONTRASENA USUARIO',1,1),(200,'NUEVO EMPLEADO',1,1),(201,'MODIFICA DATOS EMPLEADO',1,2),(202,'MODIFICA ESTATUS EMPLEADO',1,2),(203,'MODIFICA LABORALES EMPLEADO',1,2),(204,'AGREGA DOMICILIO EMPLEADO',1,1),(205,'MODIFICA DOMICILIO EMPLEADO',1,2),(206,'AGREGA DATOS CONTACTO EMPLEADO',1,1),(207,'MODIFICA DATOS CONTACTO EMPLEADO',1,2);

/*Table structure for table `tcattipopagos` */

DROP TABLE IF EXISTS `tcattipopagos`;

CREATE TABLE `tcattipopagos` (
  `idtipopago` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT '-',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcattipopagos` */

/*Table structure for table `tcatturnos` */

DROP TABLE IF EXISTS `tcatturnos`;

CREATE TABLE `tcatturnos` (
  `idturno` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL DEFAULT '-',
  `horainicia` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  PRIMARY KEY (`idturno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcatturnos` */

/*Table structure for table `tcontactoempleados` */

DROP TABLE IF EXISTS `tcontactoempleados`;

CREATE TABLE `tcontactoempleados` (
  `idempleado` int(11) NOT NULL,
  `idcontacto` int(11) NOT NULL,
  `clave` varchar(150) NOT NULL DEFAULT '-',
  `idestatus` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usuarioreg` varchar(50) DEFAULT '-',
  `usuariomod` varchar(50) DEFAULT '-',
  PRIMARY KEY (`idempleado`,`idcontacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcontactoempleados` */

insert  into `tcontactoempleados`(`idempleado`,`idcontacto`,`clave`,`idestatus`,`fechareg`,`fechamod`,`usuarioreg`,`usuariomod`) values (1,1,'5559151901',1,'2015-12-17 23:01:06','0000-00-00 00:00:00','SISTEMAS','-'),(2,2,'5552980196',1,'2015-12-17 23:02:13','0000-00-00 00:00:00','SISTEMAS','-'),(2,4,'danielnakata@hotmail.com',1,'2015-12-17 23:02:40','2015-12-17 23:02:53','SISTEMAS','SISTEMAS');

/*Table structure for table `tdomicilioempleados` */

DROP TABLE IF EXISTS `tdomicilioempleados`;

CREATE TABLE `tdomicilioempleados` (
  `idempleado` int(11) NOT NULL COMMENT 'identificador del empleado',
  `iddomicilio` int(11) NOT NULL COMMENT 'identificador del tipo de domicilio',
  `calle` varchar(150) NOT NULL DEFAULT '-' COMMENT 'nombre de la calle',
  `nexterior` varchar(10) NOT NULL DEFAULT '-' COMMENT 'numero exterior',
  `ninterior` varchar(10) DEFAULT '-' COMMENT 'numero interior del domicilio',
  `codpostal` varchar(5) NOT NULL DEFAULT '00000' COMMENT 'codigo postal del domicilio',
  `idcolonia` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador de la colonia del domicilio',
  `idmunicipio` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del municipio o delegacion',
  `idestado` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del estado o entidad federativa',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de registro del domicilio',
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fecha de modificacion del domicilio',
  `usuarioreg` varchar(50) DEFAULT NULL COMMENT 'usuario que registra',
  `usuariomod` varchar(50) DEFAULT NULL COMMENT 'usuario que modifica',
  `idestatus` int(11) DEFAULT NULL COMMENT 'identificador del estatus',
  PRIMARY KEY (`idempleado`,`iddomicilio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tdomicilioempleados` */

insert  into `tdomicilioempleados`(`idempleado`,`iddomicilio`,`calle`,`nexterior`,`ninterior`,`codpostal`,`idcolonia`,`idmunicipio`,`idestado`,`fechareg`,`fechamod`,`usuarioreg`,`usuariomod`,`idestatus`) values (1,1,'SATURNO','93','','91096',1,1,1,'2015-12-16 23:46:57','0000-00-00 00:00:00','SISTEMAS',NULL,0),(1,2,'CALLEJON DE APATLACO','6B','2','14370',1,1,1,'2015-12-16 23:47:41','0000-00-00 00:00:00','SISTEMAS',NULL,1),(2,1,'CALLEJON DE APATLACO','6B','2','14370',1,3,1,'2015-12-16 23:48:14','2015-12-17 00:09:58','SISTEMAS','SISTEMAS',1);

/*Table structure for table `templeados` */

DROP TABLE IF EXISTS `templeados`;

CREATE TABLE `templeados` (
  `idempleado` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) DEFAULT '-',
  `idcategoria` int(11) NOT NULL DEFAULT '0',
  `idpuesto` int(11) NOT NULL DEFAULT '0',
  `fechanac` date DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechaaltasp` date DEFAULT NULL,
  `idestatus` int(11) NOT NULL DEFAULT '1',
  `iddepartamento` int(11) NOT NULL DEFAULT '0',
  `idtipocontrato` int(11) NOT NULL DEFAULT '0',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioreg` varchar(50) DEFAULT NULL,
  `fechamod` timestamp NULL DEFAULT NULL,
  `usuariomod` varchar(50) DEFAULT NULL,
  `curp` varchar(50) NOT NULL DEFAULT '-',
  `nss` varchar(50) DEFAULT '-',
  `extras` text,
  PRIMARY KEY (`idempleado`),
  KEY `FK_templeados_departamentos` (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `templeados` */

insert  into `templeados`(`idempleado`,`nombres`,`paterno`,`materno`,`idcategoria`,`idpuesto`,`fechanac`,`fechaalta`,`fechaaltasp`,`idestatus`,`iddepartamento`,`idtipocontrato`,`fechareg`,`usuarioreg`,`fechamod`,`usuariomod`,`curp`,`nss`,`extras`) values (0,'DUMMY','DUMMY','-',0,0,'1900-01-01','1900-01-01',NULL,5,0,0,'2015-12-14 23:01:14','SISTEMAS',NULL,NULL,'-','-',NULL),(1,'PATRICIA','RODRIGUEZ','CAMARENA',1,1,'1986-09-27','2013-01-02','2013-01-02',1,1,1,'2015-12-15 23:47:30','SISTEMAS',NULL,NULL,'ROCP860927','1234567890','-'),(2,'VICTOR','ORTEGA','CRUZ',1,1,'1984-07-17','2013-01-02','2013-01-02',1,1,1,'2015-12-15 23:56:13','SISTEMAS','2015-12-16 00:28:03','SISTEMAS','OECV840717','1234567891','MODIFICACION DE PRUEBAS 3'),(3,'DANIEL','ORTEGA','CRUZ',1,1,'1984-07-17','2013-01-02','2013-01-02',2,1,1,'2015-12-16 00:29:09','SISTEMAS',NULL,NULL,'OECV840717_14','12345678999','-');

/*Table structure for table `tidentificacionempleados` */

DROP TABLE IF EXISTS `tidentificacionempleados`;

CREATE TABLE `tidentificacionempleados` (
  `idempleado` int(11) NOT NULL COMMENT 'identificador del empleado',
  `ididentificacion` int(11) NOT NULL COMMENT 'identificador de la identificacion o documento legal',
  `clave` varchar(150) NOT NULL COMMENT 'clave o numero de serie de la identificacion',
  `idestatus` int(11) NOT NULL DEFAULT '1' COMMENT 'estatus de la identificacion',
  `imagen` blob COMMENT 'scan de la identificacion',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora del registro',
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fecha y hora de la modificacion',
  `usuarioreg` varchar(50) DEFAULT NULL COMMENT 'usuario que registra',
  `usuariomod` varchar(50) DEFAULT NULL COMMENT 'usuario que modifica',
  PRIMARY KEY (`idempleado`,`ididentificacion`),
  KEY `FK_tidentificacionempleados` (`ididentificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tidentificacionempleados` */

/*Table structure for table `tlogaccesousuarios` */

DROP TABLE IF EXISTS `tlogaccesousuarios`;

CREATE TABLE `tlogaccesousuarios` (
  `idlog` bigint(20) NOT NULL AUTO_INCREMENT,
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(50) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `lugaracceso` varchar(50) NOT NULL DEFAULT '-',
  `idresultadoop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tlogaccesousuarios` */

/*Table structure for table `tlogmodificaciones` */

DROP TABLE IF EXISTS `tlogmodificaciones`;

CREATE TABLE `tlogmodificaciones` (
  `idlog` bigint(20) NOT NULL AUTO_INCREMENT,
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioreg` varchar(50) NOT NULL,
  `nombresp` varchar(255) NOT NULL,
  `idtipomodificacion` int(11) NOT NULL DEFAULT '0',
  `valoresactuales` text,
  `valoresnuevos` text,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tlogmodificaciones` */

insert  into `tlogmodificaciones`(`idlog`,`fechareg`,`usuarioreg`,`nombresp`,`idtipomodificacion`,`valoresactuales`,`valoresnuevos`) values (1,'2015-12-16 00:26:47','SISTEMAS','NE_SP_MODIFICAEMPLEADO',201,'2-VICTOR DANIEL-ORTEGA-CRUZ-1984-07-17-OECV840717-1234567891MODIFICACION DE PRUEBAS 2','2-VICTOR DANIEL-ORTEGA-CRUZ-1984-07-17-SISTEMAS-OECV840717-1234567891-MODIFICACION DE PRUEBAS 2'),(2,'2015-12-16 00:28:03','SISTEMAS','NE_SP_MODIFICAEMPLEADO',201,'2-VICTOR DANIEL-ORTEGA-CRUZ-1984-07-17-OECV840717-1234567891MODIFICACION DE PRUEBAS 2','2-VICTOR-ORTEGA-CRUZ-1984-07-17-SISTEMAS-OECV840717-1234567891-MODIFICACION DE PRUEBAS 3'),(3,'2015-12-16 00:29:09','SISTEMAS','NE_SP_AGREGAEMPLEADO',200,'','3-DANIEL-ORTEGA-CRUZ-1-1-1984-07-17-2013-01-02-2013-01-02-1-1-SISTEMAS-OECV840717_14-12345678999--'),(4,'2015-12-16 00:38:35','SISTEMAS','NE_SP_MODIFICAESTATUSEMPLEADO',202,NULL,'3-2-SISTEMAS'),(5,'2015-12-16 00:40:00','SISTEMAS','NE_SP_MODIFICAESTATUSEMPLEADO',202,NULL,'3-2-SISTEMAS'),(6,'2015-12-16 00:41:34','SISTEMAS','NE_SP_MODIFICAESTATUSEMPLEADO',202,'3-2--','3-2-SISTEMAS'),(7,'2015-12-16 23:46:57','SISTEMAS','NE_SP_AGREGADOMICILIOEMPLEADO',204,'','1-1-SATURNO-93--91096-1-1-1-SISTEMAS-1'),(8,'2015-12-16 23:47:41','SISTEMAS','NE_SP_AGREGADOMICILIOEMPLEADO',204,'','1-2-CALLEJON DE APATLACO-6B-2-14370-1-1-1-SISTEMAS-1'),(9,'2015-12-16 23:48:14','SISTEMAS','NE_SP_AGREGADOMICILIOEMPLEADO',204,'','2-1-CALLEJON DE APATLACO-6B-2-14370-1-1-1-SISTEMAS-1'),(10,'2015-12-17 00:09:58','SISTEMAS','NE_SP_MODIFICADOMICILIOEMPLEADO',205,'CALLEJON DE APATLACO-6B-2-14370-1-1-1-SISTEMAS','2-1-CALLEJON DE APATLACO-6B-2-14370-1-3-1-SISTEMAS-1'),(11,'2015-12-17 23:01:06','SISTEMAS','NE_SP_AGREGACONTACTOEMPLEADO',206,'','1-1-5559151901-SISTEMAS'),(12,'2015-12-17 23:02:13','SISTEMAS','NE_SP_AGREGACONTACTOEMPLEADO',206,'','2-2-5552980196-SISTEMAS'),(13,'2015-12-17 23:02:41','SISTEMAS','NE_SP_AGREGACONTACTOEMPLEADO',206,'','2-4-danielnakata@gmail.com-SISTEMAS'),(14,'2015-12-17 23:02:53','SISTEMAS','NE_SP_AGREGACONTACTOEMPLEADO',207,'2-4-danielnakata@gmail.com-1','2-4-danielnakata@hotmail.com-SISTEMAS'),(15,'2015-12-17 23:19:35','SISTEMAS','NE_SP_AGREGAUSUARIO',100,'','2-ADMIN-*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9-10'),(16,'2015-12-17 23:32:27','SISTEMAS','NE_SP_AGREGAUSUARIO',100,'','3-ADMIN2-*2A032F7C5BA932872F0F045E0CF6B53CF702F2C5-10'),(17,'2015-12-17 23:53:12','SISTEMAS','NE_SP_MODIFICACONTRASENAUSUARIO',102,'ADMIN2,*2A032F7C5BA932872F0F045E0CF6B53CF702F2C5,SISTEMAS','ADMIN2,*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9,SISTEMAS'),(18,'2015-12-17 23:53:34','SISTEMAS','NE_SP_MODIFICACONTRASENAUSUARIO',103,'','ADMIN2,*84AAC12F54AB666ECFC2A83C676908C8BBC381B1,SISTEMAS'),(19,'2015-12-17 23:56:09','SISTEMAS','NE_SP_MODIFICAUSUARIO',101,'1-1-0','2-3-0'),(20,'2015-12-17 23:56:31','SISTEMAS','NE_SP_MODIFICAUSUARIO',101,'2-3-0','2-1-0');

/*Table structure for table `tlogmodificacionesusuarios` */

DROP TABLE IF EXISTS `tlogmodificacionesusuarios`;

CREATE TABLE `tlogmodificacionesusuarios` (
  `idlogmodif` bigint(20) NOT NULL AUTO_INCREMENT,
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuario` varchar(50) NOT NULL,
  `usuariomod` varchar(50) NOT NULL,
  `nombresp` varchar(255) NOT NULL,
  `valoresmodif` text,
  PRIMARY KEY (`idlogmodif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tlogmodificacionesusuarios` */

/*Table structure for table `tpuestosempleados` */

DROP TABLE IF EXISTS `tpuestosempleados`;

CREATE TABLE `tpuestosempleados` (
  `idempleado` int(11) NOT NULL,
  `idpuesto` int(11) NOT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `idestatus` int(11) NOT NULL DEFAULT '0',
  `idcategoria` int(11) NOT NULL DEFAULT '0',
  `folionombramiento` varchar(100) NOT NULL DEFAULT '-',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usuarioreg` varchar(50) DEFAULT NULL,
  `usuariomod` varchar(50) DEFAULT NULL,
  `idempleadoauth` int(11) NOT NULL DEFAULT '0',
  `fechaauth` date DEFAULT NULL,
  `folioauth` varchar(100) NOT NULL DEFAULT '-',
  `sueldobase` double(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`idempleado`,`idpuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tpuestosempleados` */

/*Table structure for table `tusuarios` */

DROP TABLE IF EXISTS `tusuarios`;

CREATE TABLE `tusuarios` (
  `idempleado` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(150) NOT NULL,
  `idperfil` int(11) NOT NULL DEFAULT '1',
  `idestatususuario` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fechaultimoacc` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `numintentos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idempleado`),
  UNIQUE KEY `ix_tusuarios_01` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tusuarios` */

insert  into `tusuarios`(`idempleado`,`usuario`,`contrasena`,`idperfil`,`idestatususuario`,`fechareg`,`fechamod`,`fechaultimoacc`,`numintentos`) values (1,'SISTEMAS','*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9',1,1,'2015-12-17 23:14:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(2,'ADMIN','*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9',1,1,'2015-12-17 23:19:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(3,'ADMIN2','*84AAC12F54AB666ECFC2A83C676908C8BBC381B1',2,1,'2015-12-17 23:32:27','2015-12-17 23:56:31','0000-00-00 00:00:00',0);

/* Procedure structure for procedure `NE_SP_AGREGACONTACTOEMPLEADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_AGREGACONTACTOEMPLEADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_AGREGACONTACTOEMPLEADO`(
	IN paIdEmpleado int
	,IN paIdContacto INT
	,in paClave varchar(150)
	,in paUsuarioReg varchar(50)
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlExiste int;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	SET vlNombreSP = 'NE_SP_AGREGACONTACTOEMPLEADO';
	SET vlIdTipoModificacion = 0;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	
	set vlExiste = 0;
	set paRes = 0;
	set paMsg = 'El empleado indicado no existe, verifique sus datos';
	
	SELECT count(*) into vlExiste from templeados where idempleado = paIdEmpleado;
	if vlExiste > 0 then
		set vlExiste = 0;
		set paMsg = 'El tipo de contacto indicado no existe';
		SELECT count(*) into vlExiste from tcatcontactoempleados where idcontacto = paIdContacto;
		
		if vlExiste > 0 then
			set vlExiste = 0;
			SELECT COUNT(*) into vlExiste from tcontactoempleados where idempleado = paIdEmpleado and idcontacto = paIdContacto;
			set vlValoresNuevos = concat(paIdEmpleado,'-',paIdContacto,'-',paClave,'-',paUsuarioReg);
			if vlExiste = 0 then
				SET vlIdTipoModificacion = 206;
				INSERT INTO tcontactoempleados(idempleado, idcontacto, clave, usuarioreg) values(paIdEmpleado, paIdContacto, paClave, paUsuarioReg);
				set paRes = 1;
				set paMsg = 'Datos de contacto del empleado registrado correctamente';
			else
				select concat(idempleado,'-',idcontacto,'-',clave,'-',idestatus) into vlValoresAct 
				from tcontactoempleados 
				where idempleado = paIdEmpleado and idcontacto = paIdContacto;
				
				SET vlIdTipoModificacion = 207;
				update tcontactoempleados set clave = paClave, fechamod = current_timestamp, usuariomod= paUsuarioReg 
				where idempleado = paIdEmpleado and idcontacto = paIdContacto;
				set paRes = 1;
				set paMsg = 'Datos de contacto del empleado actualizados correctamente';
			end if;
			CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_AGREGADOMICILIOEMPLEADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_AGREGADOMICILIOEMPLEADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_AGREGADOMICILIOEMPLEADO`(
	IN paIdEmpleado int
	,in paCalle varchar(150)
	,in paNexterior varchar(10)
	,in paNinterior varchar(10)
	,in paCodPostal varchar(5)
	,in paIdColonia int
	,in paIdMunicipio int
	,in paIdEstado int
	,in paUsuarioReg varchar(50)
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlIdDomicilio int;
	declare vlExiste int;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	SET vlNombreSP = 'NE_SP_AGREGADOMICILIOEMPLEADO';
	SET vlIdTipoModificacion = 204;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	
	set vlIdDomicilio = 1;
	set paRes = 0;
	set paMsg = 'El empleado indicado no existe, verifique sus datos';
	set vlExiste = 0;
	select count(*) into vlExiste from templeados where idempleado = paIdEmpleado;
	if vlExiste > 0 then
		set vlExiste = 0;
		select count(*) into vlExiste from tdomicilioempleados where idempleado = paIdEmpleado;
		
		if vlExiste > 0 then
			update tdomicilioempleados set idestatus = 0 where idempleado = paIdEmpleado;
		end if;
		set vlExiste = vlExiste + 1;
		insert into tdomicilioempleados(idempleado, iddomicilio, calle, nexterior, ninterior, codpostal, idcolonia, idmunicipio, idestado, usuarioreg, idestatus)
		values(paIdEmpleado, vlExiste, paCalle, paNexterior, paNinterior, paCodPostal, paIdColonia, paIdMunicipio, paIdEstado, paUsuarioReg, 1);
		
		set vlValoresNuevos = concat(paIdEmpleado,'-', vlExiste,'-', paCalle,'-', paNexterior,'-', paNinterior,'-', paCodPostal,'-', paIdColonia,'-', paIdMunicipio,'-', paIdEstado,'-', paUsuarioReg,'-','1');
		set paRes = 1;
		set paMSg = 'Datos del domicilio del empleado registrados correctamente';
		
		CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
	
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_AGREGAEMPLEADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_AGREGAEMPLEADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_AGREGAEMPLEADO`(
	IN paNombre varchar(50)
	,in paPaterno varchar(50)
	,in paMaterno varchar(50)
	,in paIdCategoria int
	,in paIdPuesto int
	,in paFechaNac varchar(10)
	,in paFechaAlta varchar(10)
	,in paFechaAltasp varchar(10)
	,in paIdDepartamento int
	,in paIdTipoContrato int
	,in paCurp varchar(50)
	,in paNss varchar(50)
	,in paExtras Text
	,in paUsuarioReg varchar(50)
	,out paRes int
	,out paMsg varchar(200)
	,out paIdEmpleado int
    )
BEGIN
	DECLARE vlExiste int;
	declare vlIdEmpleado int;
	declare vlNombreSP varchar(255);
	declare vlIdTipoModificacion int;
	declare vlValoresAct text;
	declare vlValoresNuevos text;
	set vlExiste = 0;
	set paRes = 0;
	set paIdEmpleado = -1;
	set paMsg = 'La CURP indicada ya se encuentra registrada, verifique sus datos';
	set vlNombreSP = 'NE_SP_AGREGAEMPLEADO';
	set vlIdTipoModificacion = 200;
	set vlValoresAct = '';
	set vlValoresNuevos = '';
	
	select count(*) into vlExiste from templeados where curp = paCurp;
	if vlExiste = 0 then
		set vlExiste = 0;
		set paMsg = 'El NSS indicado ya se encuentra registrado, verifique sus datos';
		select count(*) into vlExiste from templeados where nss = paNss;
		
		if vlExiste = 0 then
			set vlExiste = 0;
			set paMsg = 'Los datos de nombre, apellido paterno, apellido materno y fecha de nacimiento coinciden con los de otro empleado, verifique sus datos';
			select count(*) into vlExiste from templeados where nombres = paNombre and paterno = paPaterno and materno = paMaterno and fechanac = date(paFechaNac);
			
			if vlExiste = 0 then
				set vlIdEmpleado = 0;
				select max(idempleado) + 1 into vlIdEmpleado from templeados;
					
				insert into templeados(idempleado, nombres, paterno, materno, idcategoria, idpuesto, fechanac, fechaalta, fechaaltasp, iddepartamento, idtipocontrato, usuarioreg, curp, nss, extras)
				values(vlIdEmpleado, paNombre, paPaterno, paMaterno, paIdCategoria, paIdPuesto, paFechaNac, paFechaAlta, paFechaAltaSP, paIdDepartamento, paIdTipoContrato, paUsuarioReg, paCurp, paNss, paExtras);
					
				SET paMsg = 'Empleado registrado correctamente';
				SET paRes = 1;
				SET paIdEmpleado = vlIdEmpleado;
				
				set vlValoresNuevos = concat(vlIdEmpleado,'-', paNombre,'-', paPaterno,'-', paMaterno,'-', paIdCategoria,'-', paIdPuesto,'-', paFechaNac
				,'-', paFechaAlta,'-', paFechaAltaSP,'-', paIdDepartamento,'-', paIdTipoContrato,'-', paUsuarioReg,'-', paCurp,'-', paNss,'-', paExtras);
				call NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
			end if;
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_AGREGALOGINICIOSESION` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_AGREGALOGINICIOSESION` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_AGREGALOGINICIOSESION`(IN paUsuario varchar(50)
	,in paIdEmpleado int
	,in paLugar varchar(50)
	,IN paIdResultadoOp INT
    )
BEGIN
	INSERT INTO tlogaccesousuarios(usuario, idempleado, lugaracceso, idresultadoop) VALUES(paUsuario, paIdEmpleado, paLugar, paIdResultadoOp);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_AGREGALOGMODIFICACIONES` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_AGREGALOGMODIFICACIONES` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_AGREGALOGMODIFICACIONES`(
	IN paUsuarioReg varchar(50)
	,in paNombreSp varchar(255)
	,in paIdTipoModificacion int
	,in paValoresAct text
	,in paValoresNuevos text
    )
BEGIN
	insert into tlogmodificaciones(usuarioreg, nombresp, idtipomodificacion, valoresactuales, valoresnuevos) values(
	paUsuarioReg, paNombreSP, paIdTipoModificacion, paValoresAct, paValoresNuevos);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_AGREGALOGMODIFUSER` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_AGREGALOGMODIFUSER` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_AGREGALOGMODIFUSER`(
	in paUsuario varchar(50)
	,in paUsuarioMod varchar(50)
	,in paNombreSP varchar(50)
	,in paValoresModif text
)
BEGIN
	insert into tlogmodificacionesusuarios(usuario, usuariomod, nombresp, valoresmodif) values(paUsuario, paUsuarioMod, paNombreSP, paValoresModif);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_AGREGAUSUARIO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_AGREGAUSUARIO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_AGREGAUSUARIO`(IN paIdEmpleado int
	,in paUsuario varchar(50)
	,in paContrasena varchar(150)
	,in paIdPerfil INT
	,in paUsuarioReg varchar(50)
	,out paRes int
	,out paMsg varchar(100)
    )
BEGIN
	declare vlExiste int;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	SET vlNombreSP = 'NE_SP_AGREGAUSUARIO';
	SET vlIdTipoModificacion = 100;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	set vlExiste = 0;
	set paRes = 0;
	set paMsg = 'El Empleado indicado no existe, verfique sus datos';
	select count(*) into vlExiste from templeados where idempleado = paIdEmpleado;
	if vlExiste > 0 then
		set paMsg = 'El Usuario indicado ya existe, intente con otro';
		set vlExiste = 0;
		select count(*) into vlExiste from tusuarios where usuario = paUsuario;
		if vlExiste = 0 then
			set vlExiste = 0;
			select count(*) into vlExiste from tcatperfiles where paIdPerfil = idperfil;
			set paMsg = 'El perfil indicado no existe, verifique sus datos';
			if vlExiste > 0 then
				set vlValoresNuevos = concat(paidempleado,'-',pausuario,'-',password(pacontrasena),'-',paidperfil,0);
				insert into tusuarios(idempleado, usuario, contrasena, idperfil, numintentos) values (paIdEmpleado, paUsuario, password(paContrasena), paIdPerfil, 0);
				SET paRes = 1;
				set paMsg = 'Usuario Agregado Correctamente!';
				CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
			end if;
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_INICIOSESION` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_INICIOSESION` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_INICIOSESION`(
	IN paUsuario varchar(50)
	,in paContrasena VARCHAR(50)
	,IN paIP VARCHAR(20)
	,OUT paRes INT
	,OUT paMsg VARCHAR(100)
	,OUT paIdEmpleado INT
	,OUT paIdPerfil Int
	,out paIdEstatus int
    )
BEGIN
	DECLARE vlExiste INT;
	declare vlEstatus int;
	declare vlEstatusOk int;
	declare vlEstatusVacaciones int;
	declare vlEstatusBaja int;
	Declare vlEstatusElimina int;
	Declare vlEstatusBloqueo int;
	declare vlNumIntentos int;
	DECLARE vlIdConfiguracion int;
	declare vlNumMaxIntentos double;
	declare vlContrasena varchar(150);
	
	set vlIdConfiguracion = 1;
	SET vlExiste = 0;
	set vlEstatusOk = 1;
	set vlEstatusVacaciones = 2;
	set vlEstatusBaja = 3;
	set vlEstatusElimina = 4;
	set vlEstatusBloqueo = 5;
	set vlNumIntentos = 0;
	set paRes = 0;
	set paMSg = 'EL USUARIO NO EXISTE';
	set vlNumMaxIntentos = 0;
	set vlContrasena = '';
	
	select valormax into vlNumMaxIntentos from tcatconfiguraciones where idconfig = vlIdConfiguracion;
	
	select COUNT(*) INTO vlExiste FROM tusuarios where usuario = paUsuario;
	IF vlExiste > 0 THEN
		SELECT idempleado, idperfil, idestatuusuario, numintentos, contrasena INTO paIdEmpleado, paIdPerfil, paIdEstatus, vlNumIntentos, vlContrasena FROM tusuarios WHERE usuario = paUsuario;
		set vlExiste = 0;
		set paMsg = 'LA CONTRASENA NO ES CORRECTA';
		if vlContrasena = password(paContrasena) then set vlExiste = 1; else set vlExiste = 0; end if;
		if vlExiste > 0 then
			set vlExiste = 0;			
			IF paIdEstatus = vlEstatusOk then
				set paRes = paIdEstatus;
				update tusuarios set numintentos = 1 where usuario = paUsuario;
			end if;
			
			case 
				when paIdEstatus = vlEstatusOk then set paMsg = 'INICIO DE SESION CORRECTO!';
				when paIdEstatus = vlEstatusVacaciones then set paMsg = 'USUARIO DE VACACIONES, NO PUEDE ACCEDER A LA APLICACION';
				when paIdEstatus = vlEstatusBaja then set paMsg = 'EL USUARIO HA SIDO DADO DE BAJA, NO PUEDE ACCEDER A LA APLICACION';
				WHEN paIdEstatus = vlEstatusElimina then set paMsg = 'EL USUARIO HA SIDO ELIMINADO, NO PUEDE ACCEDER A LA APLICACION';
				when paIdEstatus = vlEstatusBloqueo then set paMsg = 'EL USUARIO HA SIDO BLOQUEADO, NO PUEDE ACCEDER A LA APLICACION';
				ELSE set paMsg = 'EL USUARIO TIENE UN ESTATUS INVALIDO, NO PUEDE ACCEDER A LA APLICACION';
			end case;
			
		ELSE
			SET vlNumIntentos = vlNumIntentos + 1;
			UPDATE tusuarios set numintentos = vlNumIntentos where usuario = paUsuario;
			if vlNumIntentos > vlNumMaxIntentos then
				update tusuarios set idestatususuario = 5, fechamod = CURRENT_TIMESTAMP WHERE usuario = paUsuario;
				CALL NE_SP_AGREGALOGMODIFUSER(paUsuario, paUsuario, 'NE_SP_INICIOSESION', CONCAT('idestatususuarioold=',paIdEstatus,' idestatususuarionew=5'));
			end if;
			CALL NE_SP_AGREGALOGINICIOSESION(paUsuario, paIdEmpleado, paIP, 6);
		end if;
		CALL NE_SP_AGREGALOGINICIOSESION(paUsuario, paIdEmpleado, paIP, paIdEstatus);
	end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_MODIFICACONTRASENAUSUARIO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_MODIFICACONTRASENAUSUARIO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_MODIFICACONTRASENAUSUARIO`(
	IN paUsuario varchar(50)
	,in paContrasenaOld varchar(150)
	,in paContrasenaNew varchar(150)
	,in paUsuarioReg varchar(50)
	,in paEsReset int
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlExiste int;
	declare vlEsReset int;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	SET vlNombreSP = 'NE_SP_MODIFICACONTRASENAUSUARIO';
	SET vlIdTipoModificacion = 101;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	set vlEsReset = 1;
	set vlExiste = 0;
	set paRes = 0;
	set paMsg = 'El usuario indicado no existe';
	select count(*) into vlExiste from tusuarios where usuario = paUsuario;
	if vlExiste > 0 then
		set vlExiste = 0;
		if vlEsReset <> paEsReset then
			set paMsg = 'La contrasena actual no coincide con la contrasena con la registrada, verifique sus datos';
			select count(*) into vlExiste from tusuarios where usuario = paUsuario and contrasena = password(paContrasenaOld);
			if vlExiste > 0 then
				SET vlIdTipoModificacion = 102;
				SET vlValoresNuevos = CONCAT(paUsuario,',',PASSWORD(paContrasenaNew),',',paUsuarioReg);
				set vlValoresAct = CONCAT(paUsuario,',',PASSWORD(paContrasenaOld),',',paUsuarioReg);
				UPDATE tusuarios set contrasena = paContrasenaNew, fechamod = current_timestamp where usuario = paUsuario;
				set paRes = 1;
				set paMsg = 'Contrasena del usuario actualizada correctamente';
				CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
			end if;
		else
			SET vlIdTipoModificacion = 103;
			set vlValoresNuevos = CONCAT(paUsuario,',',PASSWORD(paContrasenaNew),',',paUsuarioReg);
			update tusuarios set contrasena = PASSWORD(paContrasenaNew), fechamod = CURRENT_TIMESTAMP WHERE usuario = paUsuario;
			set paRes = 1;
			set paMsg = 'Contrasena del usuario reseteada correctamente';
			CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
		end if;	
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_MODIFICADOMICILIOEMPLEADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_MODIFICADOMICILIOEMPLEADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_MODIFICADOMICILIOEMPLEADO`(
	IN paIdEmpleado int
	,in paIdDomicilio int
	,IN paCalle VARCHAR(150)
	,IN paNexterior VARCHAR(10)
	,IN paNinterior VARCHAR(10)
	,IN paCodPostal VARCHAR(5)
	,IN paIdColonia INT
	,IN paIdMunicipio INT
	,IN paIdEstado INT
	,IN paUsuarioReg VARCHAR(50)
	,OUT paRes INT
	,OUT paMsg VARCHAR(150)
    )
BEGIN
	DECLARE vlIdDomicilio INT;
	DECLARE vlExiste INT;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	SET vlNombreSP = 'NE_SP_MODIFICADOMICILIOEMPLEADO';
	SET vlIdTipoModificacion = 205;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	
	SET vlIdDomicilio = 1;
	SET paRes = 0;
	SET paMsg = 'El empleado indicado no existe, verifique sus datos';
	SET vlExiste = 0;
	SELECT COUNT(*) INTO vlExiste FROM templeados WHERE idempleado = paIdEmpleado;
	IF vlExiste > 0 THEN
		set vlExiste = 0;
		set paMsg = 'El domicilio del empleado indicado no existe, verifique sus datos';
		select count(*) into vlExiste from tdomicilioempleados where idempleado = paIdEmpleado and iddomicilio = paIdDomicilio;
		if vlExiste > 0 then
			select concat(calle,'-',nexterior,'-',ninterior,'-',codpostal,'-',idcolonia,'-',idmunicipio,'-',idestado,'-',usuarioreg) into vlValoresAct
			from tdomicilioempleados where idempleado = paidempleado and iddomicilio = paiddomicilio;
			
			UPDATE tdomicilioempleados set calle = paCalle, nexterior = paNexterior, ninterior = paNinterior, codpostal = paCodPostal, idcolonia = paIdColonia
			,idmunicipio = paIdMunicipio, idestado = paIdEstado, fechamod = current_timestamp, usuariomod = paUsuarioReg 
			where idempleado = paIdEmpleado and iddomicilio = paIdDomicilio;
			
			SET vlValoresNuevos = CONCAT(paIdEmpleado,'-', paIdDomicilio,'-', paCalle,'-', paNexterior,'-', paNinterior,'-', paCodPostal,'-', paIdColonia,'-', paIdMunicipio,'-', paIdEstado,'-', paUsuarioReg,'-','1');
			SET paRes = 1;
			SET paMSg = 'Datos del domicilio del empleado actualizados correctamente';
			
			CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_MODIFICAEMPLEADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_MODIFICAEMPLEADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_MODIFICAEMPLEADO`(
	IN paIdEmpleado int
	,IN paNombre VARCHAR(50)
	,IN paPaterno VARCHAR(50)
	,IN paMaterno VARCHAR(50)
	,IN paFechaNac VARCHAR(10)
	,IN paCurp VARCHAR(50)
	,IN paNss VARCHAR(50)
	,IN paExtras TEXT
	,IN paUsuarioReg VARCHAR(50)
	,OUT paRes INT
	,OUT paMsg VARCHAR(200)
    )
BEGIN
	DECLARE vlExiste INT;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	SET vlExiste = 0;
	SET paRes = 0;
	SET paMsg = 'El empleado indicado no existe, verifique sus datos';
	SET vlNombreSP = 'NE_SP_MODIFICAEMPLEADO';
	SET vlIdTipoModificacion = 201;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	
	select count(*) into vlExiste from templeados where idEmpleado = paIdEmpleado;
	
	if vlExiste = 1 then
		SET paMsg = 'La CURP indicada ya se encuentra registrada para otro empleado, verifique sus datos';
		SELECT COUNT(*) INTO vlExiste FROM templeados WHERE curp = paCurp and idEmpleado <> paIdEmpleado;
		IF vlExiste = 0 THEN
			SET vlExiste = 0;
			SET paMsg = 'El NSS indicado ya se encuentra registrado para otro empleado, verifique sus datos';
			SELECT COUNT(*) INTO vlExiste FROM templeados WHERE nss = paNss and idempleado <> paIdEmpleado;
			
			IF vlExiste = 0 THEN
				SET vlExiste = 0;
				SET paMsg = 'Los datos de nombre, apellido paterno, apellido materno y fecha de nacimiento coinciden con los de otro empleado, verifique sus datos';
				SELECT COUNT(*) INTO vlExiste FROM templeados WHERE nombres = paNombre AND paterno = paPaterno AND materno = paMaterno AND fechanac = DATE(paFechaNac) and idempleado <> paIdEmpleado;
				
				IF vlExiste = 0 THEN
					select concat(idempleado,'-',nombres,'-',paterno,'-',materno,'-',fechanac,'-',curp,'-',nss,'-', extras) into vlValoresAct from templeados where idempleado = paIdEmpleado;
					
					UPDATE templeados set nombres = paNombre, paterno = paPaterno, materno = paMaterno, fechanac = date(paFechaNac), fechamod = current_timestamp, usuariomod = paUsuarioReg,
					curp = paCurp, nss = paNss, extras = paExtras where idempleado = paIdEmpleado;
					
					SET paMsg = 'Empleado modificado correctamente';
					SET paRes = 1;
					SET vlValoresNuevos = CONCAT(paIdEmpleado,'-', paNombre,'-', paPaterno,'-', paMaterno,'-', paFechaNac,'-', paUsuarioReg,'-', paCurp,'-', paNss,'-', paExtras);
					CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
				END IF;
			END IF;
		END IF;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_MODIFICAESTATUSEMPLEADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_MODIFICAESTATUSEMPLEADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_MODIFICAESTATUSEMPLEADO`(
	IN paIdEmpleado int
	,in paEstatus int
	,in paUsuariomod varchar(50)
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlExiste int;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	
	set vlExiste = 0;
	set paRes = 0;
	set paMsg = 'El empleado indicado no existe, verifique sus datos';
	SET vlNombreSP = 'NE_SP_MODIFICAESTATUSEMPLEADO';
	SET vlIdTipoModificacion = 202;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	
	select count(*) into vlExiste from templeados where idempleado = paIdEmpleado;
	if vlExiste > 0 then
		set vlExiste = 0;
		set paMsg = 'El estatus para el empleado indicado no existe, verifique sus datos';
		select count(*) INTO vlExiste from tcatestatusempleados where idestatus = paEstatus;
		if vlExiste > 0 then
			select concat(idempleado,'-',idestatus,'-', ifnull(usuariomod,'-')) into vlValoresAct from templeados where idempleado = paIdEmpleado;
			
			update templeados set idestatus = paEstatus where idempleado = paIdEmpleado;
			set paRes = 1;
			set paMsg = 'Estatus del empleado actualizado';
			
			SET vlValoresNuevos = CONCAT(paIdEmpleado,'-', paEstatus,'-', paUsuarioMod);
			CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuariomod, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
		
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_MODIFICAINFOLABORALEMPLEADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_MODIFICAINFOLABORALEMPLEADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_MODIFICAINFOLABORALEMPLEADO`(
	IN paIdEmpleado int
	,in paIdCategoria int
	,in paIdPuesto int
	,IN paFechaAlta VARCHAR(10)
	,IN paFechaAltaSP varchar(10)
	,in paIdDepartamento int
	,in paIdTipoContrato int
	,in paUsuarioMod varchar(50)
	,OUT paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlExiste int;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	
	set vlExiste = 0;
	set paRes = 0;
	set paMsg = 'El empleado indicado no existe, verifique sus datos';
	SET vlNombreSP = 'NE_SP_MODIFICAINFOLABORALEMPLEADO';
	SET vlIdTipoModificacion = 203;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	
	select count(*) into vlExiste from templeados where idempleado = paIdEmpleado;
	if vlExiste > 0 then
		SELECT CONCAT(idcategoria,'-',idpuesto,'-',fechaalta,'-',fechaaltasp,'-',iddepartamento,'-',idtipocontrato) into vlValoresAct
		from templeados where idempleado = paIdEmpleado;
		set vlValoresNuevos = CONCAT(paidcategoria,'-',paidpuesto,'-',pafechaalta,'-',pafechaaltasp,'-',paiddepartamento,'-',paidtipocontrato);
		
		update templeados set idcategoria = paIdCateogoria, idpuesto = paIdpuesto
		, fechaalta = pafechaalta, fechaaltasp = pafechaaltasp
		, iddepartamento = paiddepartamento, idtipocontrato = paIdtipocontrato
		, fechamod = current_timestamp, usuariomod = pausuariomod
		where idempleado = paIdEmpleado;
		
		set paRes = 1;
		set paMsg = 'Datos laborales del empleado han sido actualizados correctamente';
		call NE_SP_AGREGALOGMODIFICACIONES(paUsuariomod, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NE_SP_MODIFICAUSUARIO` */

/*!50003 DROP PROCEDURE IF EXISTS  `NE_SP_MODIFICAUSUARIO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NE_SP_MODIFICAUSUARIO`(IN paUsuario varchar(50)
	,in paIdPerfil int
	,in paIdEstatusUsuario int
	,in paUsuarioReg varchar(50)
	,out paRes int
	,out paMsg varchar(100)
    )
BEGIN
	declare vlExiste int;
	DECLARE vlNombreSP VARCHAR(255);
	DECLARE vlIdTipoModificacion INT;
	DECLARE vlValoresAct TEXT;
	DECLARE vlValoresNuevos TEXT;
	SET vlNombreSP = 'NE_SP_MODIFICAUSUARIO';
	SET vlIdTipoModificacion = 101;
	SET vlValoresAct = '';
	SET vlValoresNuevos = '';
	set vlExiste = 0;
	set paRes = 0;
	set paMsg = 'El Usuario indicado no existe, verifique sus datos';
	
	SELECT count(*) into vlExiste from tusuarios where usuario = paUsuario;
	
	if vlExiste > 0 then
		set vlExiste = 0;
		set paMsg = 'El Estatus indicado no existe, verifique sus datos';
		select count(*) into vlExiste from tcatestatususuarios where idestatususuario = paIdEstatusUsuario;
		if vlExiste > 0 then 
			set vlExiste = 0;
			set paMsg = 'El Perfil indicado no existe, verifique sus datos';
			SELECT COUNT(*) into vlExiste from tcatperfiles where idperfil = paIdPerfil;
			if vlExiste > 0 then
				select concat(idperfil,'-', idestatususuario,'-', numintentos) into vlValoresAct from tusuarios where usuario = paUsuario;
				set vlValoresNuevos = concat(paIdPerfil,'-',paIdEstatusUsuario,'-','0');
				
				update tusuarios set idPerfil = paIdPerfil, idestatususuario = paIdEstatusUsuario, fechamod = CURRENT_TIMESTAMP, numintentos = 0 
				where usuario = paUsuario;
				set paRes = 1;
				set paMsg = 'Usuario actualizado correctamente';
				
				CALL NE_SP_AGREGALOGMODIFICACIONES(paUsuarioReg, vlNombreSP, vlIdTipoModificacion, vlValoresAct, vlValoresNuevos);
			end if;
		end if;
	end if;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
