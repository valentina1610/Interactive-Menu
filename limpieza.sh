#!/bin/bash

echo "Iniciando limpieza de archivos temporales y caché del sistema y navegadores..."

# Limpiar archivos temporales del sistema
echo "Eliminando archivos temporales y cache del sistema..."
sudo rm -rf /tmp/*
sudo rm -rf ~/.cache/*

# Limpiar caché de Google Chrome
if [ -d ~/.cache/google-chrome ]; then
    echo "Eliminando caché de Google Chrome..."
    sudo rm -rf ~/.cache/google-chrome/*
fi

# Limpiar caché de Firefox
if [ -d ~/.cache/mozilla/firefox ]; then
    echo "Eliminando caché de Firefox..."
    sudo rm -rf ~/.cache/mozilla/firefox/*
fi

# Aquí se pueden añadir más navegadores según sea necesario

echo "Limpieza completada. Se ha liberado espacio en disco."