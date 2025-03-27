USE TallerMecanico;

CREATE TABLE Facturas (
    Numero INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATE DEFAULT GETDATE(),
    ClienteNIF NVARCHAR(20) NOT NULL,
    VehiculoMatricula NVARCHAR(10) NOT NULL,
    Kilometraje INT NOT NULL,
    ImporteSinIVA DECIMAL(10,2) NOT NULL
);

-- ALTERs al final
ALTER TABLE Facturas ADD FOREIGN KEY (ClienteNIF) REFERENCES Clientes(NIF);
ALTER TABLE Facturas ADD FOREIGN KEY (VehiculoMatricula) REFERENCES Vehiculos(Matricula);
ALTER TABLE Facturas ADD IVA AS (ImporteSinIVA * 0.21) PERSISTED;
ALTER TABLE Facturas ADD ImporteTotal AS (ImporteSinIVA + (ImporteSinIVA * 0.21)) PERSISTED;
ALTER TABLE Reparaciones ADD FacturaNumero INT NULL;
ALTER TABLE Reparaciones ADD FOREIGN KEY (FacturaNumero) REFERENCES Facturas(Numero);