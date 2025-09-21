#!/bin/bash

# Obtener el layout actual
CURRENT_LAYOUT=$(setxkbmap -query | grep layout | awk '{print $2}')

# Comparamos y cambiamos al layout opuesto
if [ "$CURRENT_LAYOUT" == "us" ]; then
    setxkbmap latam
else
    setxkbmap us -variant altgr-intl
fi