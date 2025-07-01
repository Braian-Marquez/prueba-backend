-- Datos de prueba para la aplicación
-- Se ejecutan automáticamente al iniciar la aplicación

-- Insertar empresas de prueba
INSERT INTO empresas (cuit, razon_social, fecha_adhesion, activa) VALUES
('20-12345678-9', 'Empresa Ejemplo S.A.', '2024-01-15 10:30:00', true),
('30-87654321-0', 'Nueva Empresa S.A.', '2024-01-20 14:15:00', true),
('27-11111111-1', 'Empresa Antigua S.A.', '2023-11-10 09:00:00', true),
('33-22222222-2', 'Empresa Reciente S.A.', '2024-01-25 16:45:00', true);

-- Insertar transferencias de prueba
INSERT INTO transferencias (importe, empresa_id, cuenta_debito, cuenta_credito, fecha_transferencia, estado) VALUES
(10000.00, 1, '1234567890', '0987654321', '2024-01-28 11:30:00', 'COMPLETADA'),
(25000.50, 1, '1234567890', '1122334455', '2024-01-29 15:45:00', 'COMPLETADA'),
(5000.75, 2, '2233445566', '9988776655', '2024-01-30 09:15:00', 'COMPLETADA'),
(15000.25, 3, '3344556677', '8877665544', '2024-01-31 14:20:00', 'COMPLETADA'),
(7500.00, 4, '4455667788', '7766554433', '2024-02-01 10:00:00', 'COMPLETADA'); 