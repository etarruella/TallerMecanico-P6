USE TallerMecanico;

-- 8. Consulta mejorada para el valor total de reparaciones de un vehículo (incluyendo detalles)
SELECT 
    V.Matricula,
    V.Marca,
    V.Modelo,
    COUNT(R.ID) AS CantidadReparaciones,
    SUM(R.ValorMateriales) AS TotalMateriales,
    SUM(R.HorasReparacion * 50) AS TotalManoObra,
    SUM(R.ImporteTotal) AS TotalReparaciones
FROM 
    Vehiculos V
JOIN 
    Reparaciones R ON V.Matricula = R.VehiculoMatricula
WHERE 
    V.Matricula = '1234ABC'
GROUP BY 
    V.Matricula, V.Marca, V.Modelo;

-- 9. Consulta mejorada para reparaciones pendientes de facturar (con info de cliente)
SELECT 
    R.ID,
    R.VehiculoMatricula,
    V.Marca,
    V.Modelo,
    C.Nombre + ' ' + C.Apellido1 AS Cliente,
    R.Descripcion,
    R.ValorMateriales,
    R.HorasReparacion,
    R.PrecioManoObra,
    R.ImporteTotal,
    R.Fecha AS FechaReparacion
FROM 
    Reparaciones R
JOIN 
    Vehiculos V ON R.VehiculoMatricula = V.Matricula
JOIN 
    Clientes C ON V.ClienteNIF = C.NIF
LEFT JOIN 
    FacturaReparacion FR ON R.ID = FR.ReparacionID
WHERE 
    FR.ReparacionID IS NULL
ORDER BY 
    R.Fecha DESC;

-- 10. Consulta mejorada para vehículos no reparados (con info de cliente)
SELECT 
    V.Matricula,
    V.Marca,
    V.Modelo,
    V.AnoMatriculacion,
    V.Kilometraje,
    C.Nombre + ' ' + C.Apellido1 AS Cliente,
    C.Telefono
FROM 
    Vehiculos V
JOIN 
    Clientes C ON V.ClienteNIF = C.NIF
LEFT JOIN 
    Reparaciones R ON V.Matricula = R.VehiculoMatricula
WHERE 
    R.ID IS NULL
ORDER BY 
    V.Marca, V.Modelo;

-- Query adicional útil: Facturas con detalles completos
SELECT 
    F.Numero AS FacturaNumero,
    F.Fecha AS FechaFactura,
    C.NIF,
    C.Nombre + ' ' + C.Apellido1 AS Cliente,
    V.Matricula,
    V.Marca + ' ' + V.Modelo AS Vehiculo,
    F.Kilometraje,
    F.ImporteSinIVA,
    F.IVA,
    F.ImporteTotal,
    STRING_AGG(R.Descripcion, ', ') AS ReparacionesIncluidas
FROM 
    Facturas F
JOIN 
    Clientes C ON F.ClienteNIF = C.NIF
JOIN 
    Vehiculos V ON F.VehiculoMatricula = V.Matricula
JOIN 
    FacturaReparacion FR ON F.Numero = FR.FacturaNumero
JOIN 
    Reparaciones R ON FR.ReparacionID = R.ID
GROUP BY 
    F.Numero, F.Fecha, C.NIF, C.Nombre, C.Apellido1, V.Matricula, V.Marca, V.Modelo, 
    F.Kilometraje, F.ImporteSinIVA, F.IVA, F.ImporteTotal;