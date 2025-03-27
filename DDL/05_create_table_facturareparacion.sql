USE TallerMecanico;

CREATE TABLE FacturaReparacion (
    FacturaNumero INT,
    ReparacionID INT,
    PRIMARY KEY (FacturaNumero, ReparacionID),
    FOREIGN KEY (FacturaNumero) REFERENCES Facturas(Numero),
    FOREIGN KEY (ReparacionID) REFERENCES Reparaciones(ID)
);