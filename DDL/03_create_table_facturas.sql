USE TallerMecanico;

CREATE TABLE Facturas (
    Numero INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATE DEFAULT GETDATE(),
    ClienteNIF NVARCHAR(20) NOT NULL,
    VehiculoMatricula NVARCHAR(10) NOT NULL,
    Kilometraje INT NOT NULL,
    ImporteSinIVA DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ClienteNIF) REFERENCES Clientes(NIF),
    FOREIGN KEY (VehiculoMatricula) REFERENCES Vehiculos(Matricula)
);