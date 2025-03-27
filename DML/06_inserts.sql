USE TallerMecanico;

-- 4. Insertar 4 clientes
INSERT INTO Clientes VALUES 
('12345678A', 'Juan', 'Pérez', 'Gómez', 'Calle 1', 'Madrid', '28001', '600000000', 'juan@example.com', 'consentimiento_juan.pdf'),
('87654321B', 'Ana', 'López', 'Fernández', 'Calle 2', 'Barcelona', '08001', '600000001', 'ana@example.com', 'consentimiento_ana.pdf'),
('23456789C', 'Carlos', 'García', 'Ruiz', 'Calle 3', 'Valencia', '46001', '600000002', 'carlos@example.com', 'consentimiento_carlos.pdf'),
('98765432D', 'María', 'Sánchez', 'Martínez', 'Calle 4', 'Sevilla', '41001', '600000003', 'maria@example.com', 'consentimiento_maria.pdf');

-- 5. Insertar 4 vehículos
INSERT INTO Vehiculos VALUES 
('1234ABC', 'Toyota', 'Corolla', 2015, 80000, 'Gasolina', 'Manual', 120, '12345678A'),
('5678DEF', 'Ford', 'Focus', 2018, 50000, 'Diesel', 'Automático', 150, '87654321B'),
('9101GHI', 'Tesla', 'Model 3', 2021, 20000, 'Electrico', 'Automático', 300, '23456789C'),
('1121JKL', 'Honda', 'Civic', 2016, 60000, 'Hibrido', 'Manual', 140, '98765432D');

-- 6. Insertar 4 reparaciones en dos vehículos
INSERT INTO Reparaciones (VehiculoMatricula, Descripcion, ValorMateriales, HorasReparacion) VALUES 
('1234ABC', 'Cambio de aceite', 30.00, 0.5),
('1234ABC', 'Cambio de frenos', 100.00, 1.0),
('5678DEF', 'Revisión general', 50.00, 2.0),
('5678DEF', 'Cambio de batería', 120.00, 1.5);

-- 7. Insertar 2 facturas para dos reparaciones
INSERT INTO Facturas (ClienteNIF, VehiculoMatricula, Kilometraje, ImporteSinIVA) VALUES 
('12345678A', '1234ABC', 80500, 155.00),
('87654321B', '5678DEF', 50500, 220.00);

INSERT INTO FacturaReparacion VALUES 
(1, 1),
(2, 3);