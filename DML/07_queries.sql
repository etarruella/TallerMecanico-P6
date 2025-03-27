USE TallerMecanico;

-- 8. Consulta para saber el valor de todas las reparaciones de un vehículo
SELECT VehiculoMatricula, SUM(ValorMateriales + (HorasReparacion * 50)) AS TotalReparaciones
FROM Reparaciones
WHERE VehiculoMatricula = '1234ABC'
GROUP BY VehiculoMatricula;

-- 9. Consulta para saber las reparaciones pendientes de facturar
SELECT R.ID, R.VehiculoMatricula, R.Descripcion, R.ValorMateriales, R.HorasReparacion
FROM Reparaciones R
LEFT JOIN FacturaReparacion FR ON R.ID = FR.ReparacionID
WHERE FR.ReparacionID IS NULL;

-- 10. Consulta para saber qué vehículos aún no han sido reparados
SELECT V.Matricula, V.Marca, V.Modelo
FROM Vehiculos V
LEFT JOIN Reparaciones R ON V.Matricula = R.VehiculoMatricula
WHERE R.ID IS NULL;