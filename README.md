# Taller Mecánico - Base de Datos

## Descripción del Proyecto
Este proyecto tiene como objetivo la creación de una base de datos para gestionar la información de las reparaciones realizadas en un taller mecánico. Se almacenarán datos de clientes, vehículos, reparaciones y facturas.

## Objetivos
1. Crear una base de datos.
2. Definir y crear las tablas necesarias con relaciones adecuadas.
3. Insertar datos de prueba.
4. Implementar consultas útiles.
5. Subir el código SQL a un repositorio en GitHub.

## Modelo de Datos

### Clientes
Se almacenará la siguiente información:
- **NIF** (Obligatorio)
- **Nombre** (Obligatorio)
- **Apellidos** (Obligatorio, dos)
- **Dirección** (Obligatorio)
- **Población** (Obligatorio)
- **Código Postal** (Obligatorio)
- **Teléfono** (Obligatorio)
- **Correo Electrónico** (Obligatorio)
- **Datos Adjuntos**: Enlace a un documento PDF con el consentimiento para la reparación (Obligatorio)

### Vehículos
Información almacenada:
- **Matrícula** (Clave primaria)
- **Marca**
- **Modelo**
- **Año de matriculación**
- **Kilometraje**
- **Tipo de combustible** (Gasolina, Diésel, Híbrido, Eléctrico)
- **Tipo de cambio** (Manual o Automático)
- **Potencia del motor**
- **Cliente propietario** (Clave foránea)

### Reparaciones
Cada reparación tendrá:
- **Fecha de reparación** (Por defecto, hoy)
- **Vehículo** (Clave foránea)
- **Descripción de la reparación**
- **Valor total de los materiales**
- **Horas necesarias** (Por defecto 0,5 horas, mínimo 0,25 horas)
- **Precio de la mano de obra** (Horas * 50€)
- **Importe total** (Precio mano de obra + materiales)
- **Factura asociada**

### Facturas
Las facturas incluirán:
- **Número de factura** (Clave primaria)
- **Fecha de emisión**
- **Datos del cliente**
- **Matrícula del vehículo**
- **Kilometraje**
- **Importe sin IVA**
- **IVA (21%)**
- **Importe total**

## Relaciones entre Tablas
- Un cliente puede tener varios vehículos.
- Un vehículo puede tener múltiples reparaciones.
- Una factura puede incluir varias reparaciones.
- Un cliente puede tener múltiples facturas.

## Pasos para la Implementación
1. Crear la base de datos.
2. Crear las tablas siguiendo el orden lógico.
3. Insertar datos de prueba:
   - 4 clientes
   - 4 vehículos
   - 4 reparaciones en dos vehículos
   - 2 facturas para dos reparaciones
4. Implementar consultas:
   - Obtener el valor de todas las reparaciones de un vehículo.
   - Listar reparaciones pendientes de facturar.
   - Mostrar vehículos que no han sido reparados.
5. Implementar un procedimiento almacenado para generar facturas.
6. Subir el código SQL al repositorio de GitHub.

## Evaluación
- Se seguirán los criterios de la rúbrica para la evaluación del ejercicio.
- Se debe garantizar que la ejecución del código SQL no genere errores.
- Si hay un error durante la evaluación, se detendrá la ejecución y se calificará hasta ese punto.

## Entrega
Subir el enlace al repositorio de GitHub con los archivos SQL numerados en orden de ejecución.
