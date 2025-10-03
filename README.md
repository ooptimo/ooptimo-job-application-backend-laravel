# Prueba técnica — Backend (Laravel)

## Objetivo

Implementar una API REST básica en Laravel 11 enfocada en claridad, calidad y testing. El dominio es neutral; trabajaremos con una pequeña libreta de contactos.

## Requisitos funcionales

### Entidad `Contact`
Campos mínimos:
- `id` (autogenerado)
- `name` (string, obligatorio)
- `email` (string, obligatorio, **único**)
- `phone` (string, opcional)
- `created_at`, `updated_at`

### Endpoints (JSON)
- **POST `/api/contacts`** → crear contacto  
  Validaciones: `name` requerido; `email` requerido, formato válido y **único**.
- **GET `/api/contacts`** → listar contactos (sin paginación obligatoria).
- **GET `/api/contacts/{id}`** → obtener un contacto.
- **PUT `/api/contacts/{id}`** → actualizar un contacto.
- **DELETE `/api/contacts/{id}`** → eliminar un contacto.

Errores de validación → **422 Unprocessable Entity**.

---

## Requisitos técnicos (obligatorios)
- **Laravel 11** + migraciones.
- **Base de datos**: puedes usar **SQLite** por simplicidad o **PostgreSQL** si lo prefieres.
- **Al menos 1 feature test** (PHPUnit) cubriendo creación con datos válidos e inválidos (email duplicado, formato inválido, etc.).
- README breve con instrucciones para instalar y provar.

---

## Entregables
- Haz un fork del repositorio (copia a tu cuenta GitHub).
- Trabaja en una branch nueva dentro de tu fork (feature/nombre-candidato).
- Haz una PR hacia nuestro repo
- Añadir instrucciones y/o aclaraciones en el README.

---

## Instrucciones

```
# 1) Preparar entorno
make setup

# 2) Arrancar el servidor
make serve
# App en http://127.0.0.1:8000

# 3) Executar tests
make test

```

---

## Notas
- Mantén el código simple y legible; prefiere claridad a “más features”.
- Si asumes algo, **descríbelo brevemente** en el README.
