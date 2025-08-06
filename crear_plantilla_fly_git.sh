#!/bin/bash

# CONFIGURA ESTOS DATOS ANTES DE EJECUTAR
GITHUB_USUARIO="pamecoaxaca-gif"
REPO_NOMBRE="n8n-fly.io.template"
GITHUB_EMAIL="pamecoaxaca.telcel@gmail.com"

# 1. CONFIGURA GIT CON TUS DATOS
git config --global user.name "$GITHUB_USUARIO"
git config --global user.email "$GITHUB_EMAIL"

# 2. CREA UN NUEVO REPO LOCAL
git init
git add .
git commit -m "Plantilla inicial de mi app Fly.io"

# 3. CAMBIA RAMA A MAIN
git branch -M main

# 4. CONECTA AL REPO REMOTO (ASEGÚRATE DE CREARLO EN GITHUB PRIMERO)
git remote add origin https://github.com/$GITHUB_USUARIO/$REPO_NOMBRE.git

# 5. SUBE EL PROYECTO
git push -u origin main

echo "✅ Tu proyecto fue subido como plantilla: $REPO_NOMBRE"
"""

# Guardar el script como archivo .sh
filepath_script = "/mnt/data/crear_plantilla_fly_git.sh"
with open(filepath_script, "w") as f:
    f.write(script_plantilla)

filepath_script