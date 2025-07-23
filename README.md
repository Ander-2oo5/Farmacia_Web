# 💊 Sistema de Gestión de Farmacia

Este es un sistema integral de gestión para farmacias, diseñado para simplificar y optimizar las operaciones diarias de una farmacia moderna. Está compuesto por un backend robusto en **Spring Boot** (`farmacia-spring`) y un frontend dinámico en **React** (`farmacia-app`), ofreciendo una solución completa y segura para la administración de productos, clientes, ventas, usuarios y más.

---
## 🧑‍💻 Desarrollado por Andersson Jaren Flores Ruiz  
**Universidad:** Universidad Tecnológica del Perú  
**Curso:** Marco de Desarrollo Web
**Año:** 2024

---
## ✨ Características Principales

### 🛍️ Gestión de Productos
- CRUD completo para productos.
- Búsqueda por nombre y categoría.
- Información detallada: nombre, precio, cantidad en stock, fecha de vencimiento, descripción y categoría.
- Organización por categorías para una mejor navegación.
- Control de stock en tiempo real con alertas de bajo inventario.

### 👥 Gestión de Clientes
- Registro y edición de información del cliente (nombre, apellidos, DNI, email, teléfono).
- Búsqueda eficiente por nombre, DNI, u otros criterios.
- Consulta de historial y actividades asociadas.

### 🛒 Ventas y Facturación
- Registro ágil de ventas asociando productos y clientes.
- Cálculo automático de totales, impuestos y descuentos.
- Generación de facturas o recibos simplificados.
- Historial de ventas con reportes.
- Actualización automática del inventario después de cada venta.

### 🧑‍💼 Gestión de Usuarios y Roles
- Administración de cuentas de usuario del personal.
- Asignación de roles y permisos específicos (ADMIN, VENDEDOR, etc.).
- Almacenamiento seguro de credenciales con contraseña encriptada.

### 🔐 Seguridad y Autenticación
- Autenticación mediante JWT (JSON Web Tokens).
- Control de acceso basado en roles.
- Protección de endpoints sensibles con Spring Security.
- Configuración de CORS para comunicación entre frontend y backend.

---

## 💻 Tecnologías Utilizadas

### Backend (`farmacia-spring`)
- **Java** y **Spring Boot**: Lógica de negocio y APIs REST.
- **Spring Security**: Autenticación y autorización.
- **MySQL**: Base de datos relacional.
- **Maven**: Gestión de dependencias y construcción.

### Frontend (`farmacia-app`)
- ⚛️ **React**: Construcción de interfaces de usuario.
- 🔷 **TypeScript**: Tipado estático para mayor robustez.
- ⚡ **Vite**: Empaquetado y desarrollo ultra rápido.
- 🎨 **Chakra UI** y 💅 **Bootstrap**: Componentes y estilos responsivos.
- 📡 **Axios**: Comunicación HTTP con el backend.
- 🧭 **React Router**: Navegación entre páginas.
- 📄 **DataTables**: Visualización avanzada de datos.

---

## ⚙️ Instalación y Ejecución

### 📦 Backend (`farmacia-spring`)

#### Prerrequisitos
- Java JDK 17+
- Apache Maven 3.6+
- MySQL Server 8.0+
- IDE recomendado: IntelliJ IDEA, Eclipse o VS Code

#### Pasos
1. Clona el repositorio:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd farmacia-spring
   ```

2. Configura la base de datos:
   - Crea la base de datos, por ejemplo: `farmacia_db`
   - Edita el archivo `application.properties`:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/farmacia_db
     spring.datasource.username=tu_usuario
     spring.datasource.password=tu_contraseña
     spring.jpa.hibernate.ddl-auto=update
     ```

3. Construye y ejecuta el proyecto:
   ```bash
   mvn clean install
   mvn spring-boot:run
   ```

---

### 💻 Frontend (`farmacia-app`)

#### Pasos
1. Navega a la carpeta del frontend:
   ```bash
   cd farmacia-app
   ```

2. Instala las dependencias:
   ```bash
   npm install
   ```

3. Inicia el servidor de desarrollo:
   ```bash
   npm run dev
   ```

4. Abre el navegador en: [http://localhost:5173](http://localhost:5173)

---

## 📂 Estructura del Proyecto

```
raíz-del-proyecto/
│
├── farmacia-spring/         # Proyecto Backend - Spring Boot
│   ├── src/                # Código fuente Java
│   └── pom.xml             # Configuración de Maven
│
├── farmacia-app/           # Proyecto Frontend - React + Vite
│   ├── src/                # Código fuente TypeScript
│   ├── public/             # Archivos estáticos
│   └── package.json        # Configuración de dependencias
```
