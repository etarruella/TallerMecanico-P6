USE TallerMecanico;

-- 4. Insertar 4 clientes (corregido formato de tel�fono y campos NOT NULL)
INSERT INTO Clientes VALUES 
('12345678A', 'Juan', 'P�rez', 'G�mez', 'Calle 1, 123', 'Madrid', '28001', '600000000', 'juan@example.com', 'consentimiento_juan.pdf'),
('87654321B', 'Ana', 'L�pez', 'Fern�ndez', 'Avenida 2, 45', 'Barcelona', '08001', '600000001', 'ana@example.com', 'consentimiento_ana.pdf'),
('23456789C', 'Carlos', 'Garc�a', 'Ruiz', 'Plaza 3, 12', 'Valencia', '46001', '600000002', 'carlos@example.com', 'consentimiento_carlos.pdf'),
('98765432D', 'Mar�a', 'S�nchez', 'Mart�nez', 'Calle 4, 78', 'Sevilla', '41001', '600000003', 'maria@example.com', 'consentimiento_maria.pdf');

-- 5. Insertar 4 veh�culos (corregido a�o de matriculaci�n y formato)
INSERT INTO Vehiculos VALUES 
('1234ABC', 'Toyota', 'Corolla', 2015, 80000, 'Gasolina', 'Manual', 120, '12345678A'),
('5678DEF', 'Ford', 'Focus', 2018, 50000, 'Diesel', 'Automatico', 150, '87654321B'),
('9101GHI', 'Tesla', 'Model 3', 2021, 20000, 'Electrico', 'Automatico', 300, '23456789C'),
('1121JKL', 'Honda', 'Civic', 2016, 60000, 'Hibrido', 'Manual', 140, '98765432D');

-- 6. Insertar 4 reparaciones (corregido formato horas decimal)
INSERT INTO Reparaciones (VehiculoMatricula, Descripcion, ValorMateriales, HorasReparacion) VALUES 
('1234ABC', 'Cambio de aceite y filtro', 30.00, 0.50),
('1234ABC', 'Sustituci�n de pastillas y discos de freno', 100.00, 1.00),
('5678DEF', 'Revisi�n general de sistemas', 50.00, 2.00),
('5678DEF', 'Cambio de bater�a principal', 120.00, 1.50);

-- 7. Insertar 2 facturas (corregido para coincidir con reparaciones existentes)
INSERT INTO Facturas (ClienteNIF, VehiculoMatricula, Kilometraje, ImporteSinIVA) VALUES 
('12345678A', '1234ABC', 80500, 130.00),  -- Suma de las dos reparaciones del veh�culo 1234ABC
('87654321B', '5678DEF', 50500, 170.00);  -- Suma de las dos reparaciones del veh�culo 5678DEF

-- 8. Relacionar facturas con reparaciones (corregido para coincidir con IDs correctos)
INSERT INTO FacturaReparacion VALUES 
(1, 1),  -- Factura 1 incluye reparaci�n 1
(1, 2),  -- Factura 1 incluye reparaci�n 2
(2, 3),  -- Factura 2 incluye reparaci�n 3
(2, 4);  -- Factura 2 incluye reparaci�n 4