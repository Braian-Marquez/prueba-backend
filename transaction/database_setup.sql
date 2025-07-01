-- Script para crear la base de datos de transacciones
-- Ejecutar en PostgreSQL

-- Crear la base de datos
CREATE DATABASE transaction_db;

-- Conectar a la base de datos
\c transaction_db;

-- Las tablas se crearán automáticamente con JPA/Hibernate
-- pero aquí están las definiciones para referencia:

/*
CREATE TABLE empresas (
    id BIGSERIAL PRIMARY KEY,
    cuit VARCHAR(13) UNIQUE NOT NULL,
    razon_social VARCHAR(255) NOT NULL,
    fecha_adhesion TIMESTAMP NOT NULL,
    activa BOOLEAN NOT NULL DEFAULT true
);

CREATE TABLE transferencias (
    id BIGSERIAL PRIMARY KEY,
    importe DECIMAL(15,2) NOT NULL,
    empresa_id BIGINT NOT NULL REFERENCES empresas(id),
    cuenta_debito VARCHAR(50) NOT NULL,
    cuenta_credito VARCHAR(50) NOT NULL,
    fecha_transferencia TIMESTAMP NOT NULL,
    estado VARCHAR(20) NOT NULL DEFAULT 'COMPLETADA'
);

-- Índices para mejorar el rendimiento
CREATE INDEX idx_empresas_cuit ON empresas(cuit);
CREATE INDEX idx_empresas_fecha_adhesion ON empresas(fecha_adhesion);
CREATE INDEX idx_transferencias_empresa_id ON transferencias(empresa_id);
CREATE INDEX idx_transferencias_fecha ON transferencias(fecha_transferencia);
*/ 