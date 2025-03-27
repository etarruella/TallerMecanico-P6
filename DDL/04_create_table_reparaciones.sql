USE TallerMecanico;

CREATE TABLE Reparaciones (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATE DEFAULT GETDATE(),
    VehiculoMatricula NVARCHAR(10) NOT NULL,
    Descripcion NVARCHAR(MAX) NOT NULL,
    ValorMateriales DECIMAL(10,2) NOT NULL,
    HorasReparacion DECIMAL(3,2) DEFAULT 0.5 CHECK (HorasReparacion >= 0.25),
    FOREIGN KEY (VehiculoMatricula) REFERENCES Vehiculos(Matricula)
);
