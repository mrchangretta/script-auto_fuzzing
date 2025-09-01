# Auto Fuzzing Bash Suite

## Descripción

Este proyecto es una suite automatizada en Bash para realizar fuzzing web utilizando herramientas populares como **ffuf**, **wfuzz**, **gobuster** y **dirb**. El menú es interactivo, modular y fácil de mantener, permitiendo seleccionar diccionarios, guardar registros y personalizar la experiencia.

## Arquitectura

El proyecto está dividido en varios archivos para facilitar su mantenimiento y escalabilidad:

- **fuzzing.bash**: Script principal. Carga los módulos y lanza el menú principal.
- **utilidades.bash**: Funciones de utilidad, configuración global y banners aleatorios.
- **leer.bash**: Funciones para leer entradas del usuario (objetivos, diccionarios, etc.).
- **menus.bash**: Lógica de menús y submenús.
- **herramientas.bash**: Funciones que ejecutan las herramientas de fuzzing con los parámetros seleccionados.

## Características

- **Menú interactivo** con submenús para cada herramienta.
- **Selección automática de diccionarios** desde un directorio.
- **Registros de resultados** guardados en una carpeta específica.
- **Banners aleatorios** para una experiencia divertida.
- **Fácil integración de nuevas herramientas** o funcionalidades.

## Instalación y uso

1. **Clona o descarga el repositorio.**
2. Da permisos de ejecución al script principal:
   ```bash
   chmod +x fuzzing.bash
   ```
3. Ejecuta el script:
   ```bash
   ./fuzzing.bash
   ```
4. Sigue las instrucciones en pantalla.

## Requisitos

- Bash (Linux)
- ffuf, wfuzz, gobuster, dirb instalados y en el PATH
- Diccionarios en la ruta indicada (por defecto: `~/Documentos/SecLists/Discovery/Web-Content/`)

## Personalización

Puedes agregar nuevas herramientas o modificar los menús editando los archivos modulares. Para cambiar los banners, edita la función `mostrar_banner` en `utilidades.bash`.

## Ventajas de la arquitectura modular

- **Mantenimiento sencillo**
- **Escalabilidad**
- **Reutilización de código**
- **Facilidad para trabajar en equipo**

---

**Autores:** Andres Felipe Galeano Tellez, Daniel Manrique Hernandez, Laura Yulieth Lopez Albino 
**Fecha de inicio:** 2025-09-01