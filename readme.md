# Auto Fuzzing Python Suite

## Descripción

Este proyecto es una suite automatizada en Python para realizar fuzzing web y DNS utilizando herramientas populares como **ffuf**, **wfuzz**, **gobuster** y **dirb**. El menú es interactivo, modular y fácil de mantener, permitiendo seleccionar diccionarios, guardar registros y personalizar la experiencia.

## Arquitectura

El proyecto está dividido en carpetas y módulos siguiendo una arquitectura limpia:

- **fuzzing.py**: Script principal. Lanza el menú principal.
- **presentation/**: Menús e interacción con el usuario.
- **domain/**: Lógica de fuzzing y ejecución de herramientas.
- **infrastructure/**: Utilidades, configuración y entrada de datos.
- **tests/**: Pruebas unitarias.

## Características

- **Menú interactivo** con opciones para cada herramienta.
- **Validación de entradas** y manejo de errores.
- **Reportes de resultados** guardados con timestamp en una carpeta específica.
- **Banners aleatorios** para una experiencia divertida.
- **Logging centralizado** de eventos importantes.
- **Fácil integración de nuevas herramientas** o funcionalidades.

## Instalación y uso

1. Clona o descarga el repositorio.
2. Instala las dependencias:
   ```bash
   pip install colorama
   ```
3. Asegúrate de tener ffuf, wfuzz, gobuster y dirb instalados y en el PATH.
4. Ejecuta el script principal:
   ```bash
   python fuzzing.py
   ```
5. Sigue las instrucciones en pantalla.

## Requisitos

- Python 3.8+
- ffuf, wfuzz, gobuster, dirb instalados y en el PATH
- Diccionarios en la ruta indicada (por defecto: `~/Documentos/SecLists/Discovery/Web-Content/`)

## Ejemplo de uso

1. Ejecuta el script principal:
   ```bash
   python fuzzing.py
   ```
2. Selecciona la opción de fuzzing deseada en el menú.
3. Ingresa los datos solicitados (objetivo, diccionario, etc.).
4. Revisa el reporte generado en la carpeta `~/fuzzing_logs`.

## Pruebas

Para ejecutar los tests unitarios:

```bash
python -m unittest discover tests
```

## Personalización

Puedes agregar nuevas herramientas o modificar los menús editando los archivos modulares. Para cambiar los banners, edita la función `mostrar_banner` en `infrastructure/utilidades.py`.

## Ventajas de la arquitectura limpia

- **Mantenimiento sencillo**
- **Escalabilidad**
- **Reutilización de código**
- **Facilidad para trabajar en equipo**

---

**Autores:** Andres Felipe Galeano Tellez, Daniel Manrique Hernandez, Laura Yulieth Lopez Albino
**Fecha de inicio:** 2025-09-01