# vivado_tcl_tec

Herramientas para ejecutar vivado en tcl

## Requisitos
Para correr estas herramientas se necesita de:
1. Instalar Xilinx Vivado (Las herramientas fueron diseñadas en la versión 2019.1)
2. Si se usa en ambiente Windows:
    a. Instalar GNU Make para windows. Una opción es: https://gnuwin32.sourceforge.net/packages.html

    b. Asegurarse de que los ejecutables de Vivado y Make están en el PATH de windows:

    - En el menú de inicio buscar por:
        - "Variables de entorno" si es en español
        - "Environment variables" si es en inglés
    - En la sección de variables de usuario (panel superior) buscar por `path`

    - Click en `editar` y luego en `nuevo`
    - Insertar la dirección de los binarios de Vivado. Ejemplo:
        - Si vivado está instalado en `c:\xilinx\vivado` y se tiene la versión 2019.1, entonces usar:
        `C:\Xilinx\Vivado\2019.1\bin`
    - Volver a agregar un nuevo campo y agregar la ruta para los ejecutables de windows 64 bits. Ejemplo:
        - Para los misma configuración anterior, se agregaría: `C:\Xilinx\Vivado\2019.1\lib\win64.o`
    
    - Agregar una nueva entrada con la ruta donde se guardó el ejecutable de Make (se descargó en un paso anterior)

    - Dar click en aceptar en las ventanas de manejo de variables.

    c. Probar que los setting funcionan:

    - Abrir power shell o cmd
    - Ejecutar `make -h`. Debe mostrar la ayuda de Make
    - Ejecutar `vivado -h`. Debe mostrar la ayuda de Vivado.