USE TallerMecanico;

-- 4. Insertar 4 clientes (corregido formato de teléfono y campos NOT NULL)
INSERT INTO Clientes VALUES 
('12345678A', 'Juan', 'Pérez', 'Gómez', 'Calle 1, 123', 'Madrid', '28001', '600000000', 'juan@example.com', 'consentimiento_juan.pdf'),
('87654321B', 'Ana', 'López', 'Fernández', 'Avenida 2, 45', 'Barcelona', '08001', '600000001', 'ana@example.com', 'consentimiento_ana.pdf'),
('23456789C', 'Carlos', 'García', 'Ruiz', 'Plaza 3, 12', 'Valencia', '46001', '600000002', 'carlos@example.com', 'consentimiento_carlos.pdf'),
('98765432D', 'María', 'Sánchez', 'Martínez', 'Calle 4, 78', 'Sevilla', '41001', '600000003', 'maria@example.com', 'consentimiento_maria.pdf');

-- 5. Insertar 4 vehículos (corregido año de matriculación y formato)
INSERT INTO Vehiculos VALUES 
('1234ABC', 'Toyota', 'Corolla', 2015, 80000, 'Gasolina', 'Manual', 120, '12345678A'),
('5678DEF', 'Ford', 'Focus', 2018, 50000, 'Diesel', 'Automatico', 150, '87654321B'),
('9101GHI', 'Tesla', 'Model 3', 2021, 20000, 'Electrico', 'Automatico', 300, '23456789C'),
('1121JKL', 'Honda', 'Civic', 2016, 60000, 'Hibrido', 'Manual', 140, '98765432D');

-- 6. Insertar 4 reparaciones (corregido formato horas decimal)
INSERT INTO Reparaciones (VehiculoMatricula, Descripcion, ValorMateriales, HorasReparacion) VALUES 
('1234ABC', 'Cambio de aceite y filtro', 30.00, 0.50),
('1234ABC', 'Sustitución de pastillas y discos de freno', 100.00, 1.00),
('5678DEF', 'Revisión general de sistemas', 50.00, 2.00),
('5678DEF', 'Cambio de batería principal', 120.00, 1.50);

-- 7. Insertar 2 facturas (corregido para coincidir con reparaciones existentes)
INSERT INTO Facturas (ClienteNIF, VehiculoMatricula, Kilometraje, ImporteSinIVA) VALUES 
('12345678A', '1234ABC', 80500, 130.00),  -- Suma de las dos reparaciones del vehículo 1234ABC
('87654321B', '5678DEF', 50500, 170.00);  -- Suma de las dos reparaciones del vehículo 5678DEF

-- 8. Relacionar facturas con reparaciones (corregido para coincidir con IDs correctos)
INSERT INTO FacturaReparacion VALUES 
(1, 1),  -- Factura 1 incluye reparación 1
(1, 2),  -- Factura 1 incluye reparación 2
(2, 3),  -- Factura 2 incluye reparación 3
(2, 4);  -- Factura 2 incluye reparación 4