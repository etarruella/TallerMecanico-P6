USE TallerMecanico;

CREATE TABLE Vehiculos (
    Matricula NVARCHAR(10) PRIMARY KEY,
    Marca NVARCHAR(50) NOT NULL,
    Modelo NVARCHAR(50) NOT NULL,
    AnoMatriculacion INT NOT NULL CHECK (AnoMatriculacion <= YEAR(GETDATE())),
    Kilometraje INT NOT NULL,
    TipoCombustible NVARCHAR(10) CHECK (TipoCombustible IN ('Gasolina', 'Diesel', 'Hibrido', 'Electrico')) NOT NULL,
    TipoCambio NVARCHAR(10) CHECK (TipoCambio IN ('Manual', 'Automatico')) NOT NULL,
    PotenciaMotor INT NOT NULL,
    ClienteNIF NVARCHAR(20) NOT NULL
);

-- ALTERs al final
ALTER TABLE Vehiculos ADD FOREIGN KEY (ClienteNIF) REFERENCES Clientes(NIF);