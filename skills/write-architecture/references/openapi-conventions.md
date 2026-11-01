# Convenciones de OpenAPI

- OpenAPI 3.1. Prefijo `/api/v1`.
- Rutas en inglés, en plural y en kebab-case: `/api/v1/user-accounts`.
- Esquemas reutilizables en `components/schemas`; nombres en PascalCase.
- Cada operación tiene `operationId`, `summary` en el idioma del proyecto y respuestas de error declaradas.
- Un solo formato de error para toda la API, definido en `components/schemas`.
- Cada operación declara su esquema de seguridad o se marca explícitamente como pública.
- Ninguna respuesta incluye datos que el contexto marque como sensibles si no los necesita quien la recibe.
- Los ejemplos usan datos ficticios.
