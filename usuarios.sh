#!/bin/bash

# Función para crear un nuevo usuario
crear_usuario() {
    read -p "Ingrese el nombre del nuevo usuario: " username
    read -sp "Ingrese la contraseña para el nuevo usuario: " password
    echo

    # Crear el usuario y su directorio personal
    sudo useradd -m -s /bin/bash "$username"

    # Establecer la contraseña
    echo "$username:$password" | sudo chpasswd

    # Preguntar por permisos del directorio personal
    echo "Seleccione los permisos para el directorio personal:"
    echo "1. Solo el usuario (700)"
    echo "2. Usuario y grupo (770)"
    echo "3. Todos (777)"
    read -p "Opción: " permiso_opcion

    # Asignar permisos según la opción elegida
    case $permiso_opcion in
        1)
            sudo chmod 700 /home/"$username"
            ;;
        2)
            sudo chmod 770 /home/"$username"
            ;;
        3)
            sudo chmod 777 /home/"$username"
            ;;
        *)
            echo "Opción inválida. Se asignará el permiso 700 por defecto."
            sudo chmod 700 /home/"$username"
            ;;
    esac

    echo "Usuario '$username' creado exitosamente con su directorio personal."
}

# Función para mostrar opciones
mostrar_menu() {
    echo "1. Crear nuevo usuario"
    echo "2. Salir"
}

# Menú principal
while true; do
    mostrar_menu
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            crear_usuario
            ;;
        2)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, seleccione una opción válida."
            ;;
    esac
done