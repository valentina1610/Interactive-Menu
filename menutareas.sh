#!/bin/bash

# Definir colores
magenta='\033[1;35m'
cyan='\033[1;36m'
rojo='\033[1;31m'
reset='\033[0m'

while true; do
  echo -e "\n${magenta}=== Menú de Tareas ===${reset}"
  echo -e "${cyan}1.${reset} Generar informe del uso del sistema"
  echo -e "${cyan}2.${reset} Crear un usuario nuevo en el sistema y gestionar sus permisos y directorios personales."
  echo -e "${cyan}3.${reset} Eliminar archivos temporales y caché del sistema y navegadores"
  echo -e "${cyan}4.${reset} Salir"
  read -r -p "Seleccione una opción: " opcion
  
  case $opcion in
    1) ./informe.sh ;;      
    2) ./usuarios.sh ;;     
    3) ./limpieza.sh ;;     
    4) echo -e "${rojo}Saliendo...${reset}"; break ;; 
    *) echo -e "${rojo}Opción no válida. Intente nuevamente.${reset}" ;;  
  esac
done
