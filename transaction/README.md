# API de Transacciones - Microservicio

Este microservicio implementa una API REST para gestionar empresas y transferencias utilizando arquitectura hexagonal.

## Arquitectura

El proyecto sigue los principios de la arquitectura hexagonal (Clean Architecture):

- **Dominio**: Entidades `Empresa` y `Transferencia`
- **Puertos de Entrada**: Interfaces de servicio (`EmpresaService`)
- **Puertos de Salida**: Repositorios (`EmpresaRepository`, `TransferenciaRepository`)
- **Adaptadores de Entrada**: Controladores REST (`TransactionController`)
- **Adaptadores de Salida**: Implementaciones de repositorios (JPA)

## Endpoints Disponibles

### 1. Obtener empresas con transferencias del último mes
```
GET /api/v1/empresas/con-transferencias-ultimo-mes
```

**Respuesta:**
```json
[
  {
    "id": 1,
    "cuit": "20-12345678-9",
    "razonSocial": "Empresa Ejemplo S.A.",
    "fechaAdhesion": "2024-01-15T10:30:00",
    "activa": true
  }
]
```

### 2. Obtener empresas adheridas el último mes
```
GET /api/v1/empresas/adheridas-ultimo-mes
```

**Respuesta:**
```json
[
  {
    "id": 2,
    "cuit": "30-87654321-0",
    "razonSocial": "Nueva Empresa S.A.",
    "fechaAdhesion": "2024-01-20T14:15:00",
    "activa": true
  }
]
```

### 3. Adherir una nueva empresa
```
POST /api/v1/empresas/adherir
```

**Request Body:**
```json
{
  "cuit": "20-12345678-9",
  "razonSocial": "Empresa Ejemplo S.A."
}
```

**Respuesta:**
```json
{
  "id": 1,
  "cuit": "20-12345678-9",
  "razonSocial": "Empresa Ejemplo S.A.",
  "fechaAdhesion": "2024-01-25T16:45:00",
  "activa": true
}
```

## Configuración

### Base de Datos
El proyecto utiliza PostgreSQL. Configuración en `application.yml`:

```yaml
spring:
  datasource:
    url: jdbc:postgresql://localhost:5432/transaction_db
    username: postgres
    password: postgres
```

### Crear Base de Datos
```sql
CREATE DATABASE transaction_db;
```

## Ejecución

1. **Configurar PostgreSQL** y crear la base de datos
2. **Ejecutar la aplicación:**
   ```bash
   mvn spring-boot:run
   ```
3. **La aplicación estará disponible en:** `http://localhost:8082`

## Validaciones

- **CUIT**: Debe tener formato XX-XXXXXXXX-X
- **Razón Social**: Campo obligatorio
- **Unicidad**: No se pueden crear empresas con CUIT duplicado

## Estructura del Proyecto

```
src/main/java/com/api/transaction/
├── controller/
│   └── TransactionController.java
├── models/
│   ├── entity/
│   │   ├── Empresa.java
│   │   └── Transferencia.java
│   ├── request/
│   │   └── EmpresaRequest.java
│   ├── response/
│   │   └── EmpresaResponse.java
│   ├── mapper/
│   │   └── EmpresaMapper.java
│   └── repository/
│       ├── EmpresaRepository.java
│       └── TransferenciaRepository.java
├── service/
│   ├── EmpresaService.java
│   └── impl/
│       └── EmpresaServiceImpl.java
└── exception/
    └── GlobalExceptionHandler.java
```

## Tecnologías Utilizadas

- **Spring Boot 3.1.2**
- **Spring Data JPA**
- **PostgreSQL**
- **Lombok**
- **ModelMapper**
- **Spring Validation** 