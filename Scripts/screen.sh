#!/bin/bash

# Obtener información de las pantallas conectadas usando xrandr
pantallas=$(xrandr --query | grep " connected" | awk '{print $1}')

# Verificar si hay más de una pantalla conectada
if [ $(echo "$pantallas" | wc -w) -gt 1 ]; then
  dunstify "Hay una pantalla externa conectada."
  /home/conrado/.screenlayout/./home.sh
else
  dunstify "No se detectó ninguna pantalla externa."
  /home/conrado/.screenlayout/./single.sh
fi

# Restaurar nitrogen
nitrogen --restore