-- Datos de prueba para la aplicación
-- Se ejecutan automáticamente al iniciar la aplicación
-- Fecha actual: 2/7/2025 - Último mes: Junio 2025

-- Insertar empresas de prueba
INSERT INTO empresas (cuit, razon_social, fecha_adhesion, activa) VALUES
('20-12345678-9', 'Empresa Ejemplo S.A.', '2025-06-15 10:30:00', true),
('30-87654321-0', 'Nueva Empresa S.A.', '2025-06-20 14:15:00', true),
('27-11111111-1', 'Empresa Antigua S.A.', '2025-05-10 09:00:00', true),
('33-22222222-2', 'Empresa Reciente S.A.', '2025-06-25 16:45:00', true),
('23-33333333-3', 'Comercio Mayorista S.A.', '2025-06-10 08:00:00', true),
('24-44444444-4', 'Servicios Financieros S.A.', '2025-06-12 11:20:00', true),
('25-55555555-5', 'Logística Express S.A.', '2025-06-18 16:30:00', true),
('26-66666666-6', 'Tecnología Avanzada S.A.', '2025-06-22 13:45:00', true);

-- Insertar transferencias de prueba (último mes - Junio 2025)
INSERT INTO transferencias (importe, empresa_id, cuenta_debito, cuenta_credito, fecha_transferencia, estado) VALUES
-- Empresa 1 - Múltiples transferencias
(10000.00, 1, '1234567890', '0987654321', '2025-06-28 11:30:00', 'COMPLETADA'),
(25000.50, 1, '1234567890', '1122334455', '2025-06-29 15:45:00', 'COMPLETADA'),
(15000.75, 1, '1234567890', '9988776655', '2025-06-30 09:15:00', 'COMPLETADA'),
(8000.25, 1, '1234567890', '8877665544', '2025-07-01 14:20:00', 'COMPLETADA'),
(12000.00, 1, '1234567890', '7766554433', '2025-07-02 10:00:00', 'COMPLETADA'),

-- Empresa 2 - Transferencias recientes
(5000.75, 2, '2233445566', '9988776655', '2025-06-30 09:15:00', 'COMPLETADA'),
(18000.50, 2, '2233445566', '1122334455', '2025-07-01 16:30:00', 'COMPLETADA'),
(9500.25, 2, '2233445566', '8877665544', '2025-07-03 12:45:00', 'COMPLETADA'),

-- Empresa 3 - Transferencias del último mes
(15000.25, 3, '3344556677', '8877665544', '2025-06-30 14:20:00', 'COMPLETADA'),
(22000.00, 3, '3344556677', '7766554433', '2025-07-02 08:15:00', 'COMPLETADA'),
(11000.75, 3, '3344556677', '6655443322', '2025-07-04 17:30:00', 'COMPLETADA'),

-- Empresa 4 - Transferencias recientes
(7500.00, 4, '4455667788', '7766554433', '2025-07-01 10:00:00', 'COMPLETADA'),
(16000.50, 4, '4455667788', '5544332211', '2025-07-03 13:20:00', 'COMPLETADA'),

-- Empresa 5 - Comercio Mayorista
(30000.00, 5, '5566778899', '4433221100', '2025-06-29 09:00:00', 'COMPLETADA'),
(45000.75, 5, '5566778899', '3322110099', '2025-07-01 15:30:00', 'COMPLETADA'),
(28000.25, 5, '5566778899', '2211009988', '2025-07-04 11:45:00', 'COMPLETADA'),

-- Empresa 6 - Servicios Financieros
(50000.00, 6, '6677889900', '1100998877', '2025-06-30 14:00:00', 'COMPLETADA'),
(75000.50, 6, '6677889900', '0099887766', '2025-07-02 16:15:00', 'COMPLETADA'),
(35000.75, 6, '6677889900', '9988776655', '2025-07-05 10:30:00', 'COMPLETADA'),

-- Empresa 7 - Logística Express
(12000.00, 7, '7788990011', '8877665544', '2025-06-30 08:30:00', 'COMPLETADA'),
(18000.25, 7, '7788990011', '7766554433', '2025-07-03 12:00:00', 'COMPLETADA'),

-- Empresa 8 - Tecnología Avanzada
(25000.00, 8, '8899001122', '6655443322', '2025-07-01 13:45:00', 'COMPLETADA'),
(32000.50, 8, '8899001122', '5544332211', '2025-07-04 15:20:00', 'COMPLETADA'),
(19000.75, 8, '8899001122', '4433221100', '2025-07-06 09:15:00', 'COMPLETADA');

-- Transferencias de meses anteriores (no deberían aparecer en el endpoint)
INSERT INTO transferencias (importe, empresa_id, cuenta_debito, cuenta_credito, fecha_transferencia, estado) VALUES
(5000.00, 1, '1234567890', '1111111111', '2025-05-15 10:00:00', 'COMPLETADA'),
(8000.00, 2, '2233445566', '2222222222', '2025-05-20 14:30:00', 'COMPLETADA'),
(12000.00, 3, '3344556677', '3333333333', '2025-04-25 16:45:00', 'COMPLETADA'); 