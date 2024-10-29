#!/bin/bash
# Generar informe del uso del sistema
echo "Generando informe del sistema..."
{
    echo "=== Informe del Sistema - $(date) ==="

    # Información de la CPU
    echo -e "\n=== Uso de CPU ==="
    top -bn1 | head -10

    # Información de la memoria
    echo -e "\n=== Uso de Memoria ==="
    free -h

    # Información del disco
    echo -e "\n=== Uso de Disco ==="
    df -h
} >> informe_sistema.log

# Finalización
echo "Informe generado en 'informe_sistema.log'."