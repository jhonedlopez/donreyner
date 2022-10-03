CREATE TABLE Calidad de mercancia (
  Nombre Empresa VARCHAR NOT NULL AUTO_INCREMENT,
  Proveedor_Nombre Empresa VARCHAR NOT NULL,
  Porcentaje defectuosa DOUBLE NULL,
  PRIMARY KEY(Nombre Empresa, Proveedor_Nombre Empresa)
);

CREATE TABLE Costos (
  Nombre Empresa VARCHAR NOT NULL AUTO_INCREMENT,
  Proveedor_Nombre Empresa VARCHAR NOT NULL,
  Precio COP FLOAT NULL,
  Descuento/unidad FLOAT NULL,
  Total FLOAT NULL,
  Plazo de pago (dias) FLOAT NULL,
  PRIMARY KEY(Nombre Empresa)
);

CREATE TABLE Proveedor (
  Nombre Empresa VARCHAR NOT NULL,
  Codigo Empresa INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(Nombre Empresa)
);

CREATE TABLE Transporte (
  Nombre Empresa VARCHAR NOT NULL AUTO_INCREMENT,
  Proveedor_Nombre Empresa VARCHAR NOT NULL,
  Cantidades INTEGER UNSIGNED NULL,
  Costos de Transporte FLOAT NULL,
  Tiempo de Entrega (dias) FLOAT NULL,
  Frecuencia de Surtido (dias) FLOAT NULL,
  PRIMARY KEY(Nombre Empresa, Proveedor_Nombre Empresa),
  INDEX Transporte_FKIndex1(Proveedor_Nombre Empresa)
);

CREATE TABLE Ubicacion (
  Nombre Empresa VARCHAR NOT NULL AUTO_INCREMENT,
  Proveedor_Nombre Empresa VARCHAR NOT NULL,
  Departamento/Estado VARCHAR NULL,
  Ciudad VARCHAR NULL,
  Distancia (km) DOUBLE NULL,
  Pais VARCHAR NULL,
  PRIMARY KEY(Nombre Empresa, Proveedor_Nombre Empresa)
);


