USE TallerMecanico;

CREATE TABLE Vehiculos (
    Matricula NVARCHAR(10) PRIMARY KEY,
    Marca NVARCHAR(50) NOT NULL,
    Modelo NVARCHAR(50) NOT NULL,
    AnoMatriculacion INT NOT NULL,
    Kilometraje INT NOT NULL,
    TipoCombustible NVARCHAR(10) CHECK (TipoCombustible IN ('Gasolina', 'Diesel', 'Hibrido', 'Electrico')) NOT NULL,
    TipoCambio NVARCHAR(10) CHECK (TipoCambio IN ('Manual', 'Automático')) NOT NULL,
    PotenciaMotor INT NOT NULL,
    ClienteNIF NVARCHAR(20) NOT NULL,
    FOREIGN KEY (ClienteNIF) REFERENCES Clientes(NIF)
);
