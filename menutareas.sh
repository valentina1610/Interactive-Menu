#!/bin/bash

while true; do
  echo -e "\n=== Menú de Tareas ==="
  echo "1. Generar informe del uso del sistema"
  echo "2. Crear un usuario nuevo en el sistema y gestionar sus permisos y directorios
personales."
  echo "3. Eliminar archivos temporales y caché del sistema y navegadores"
  echo "4. Salir"
  read -r -p "Seleccione una opción: " opcion
  
  case $opcion in
    1) ./informe.sh ;;      
    2) ./usuarios.sh ;;     
    3) ./limpieza.sh ;;     
    4) echo "Saliendo..."; break ;; 
    *) echo "Opción no válida. Intente nuevamente." ;;  
  esac
done