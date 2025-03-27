USE TallerMecanico;

CREATE TABLE Clientes (
    NIF NVARCHAR(20) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    Apellido1 NVARCHAR(50) NOT NULL,
    Apellido2 NVARCHAR(50) NOT NULL,
    Direccion NVARCHAR(255) NOT NULL,
    Poblacion NVARCHAR(100) NOT NULL,
    CP NVARCHAR(10) NOT NULL,
    Telefono NVARCHAR(15) NOT NULL,
    CorreoElectronico NVARCHAR(100) NOT NULL,
    DatosAdjuntos NVARCHAR(255) NOT NULL
);
