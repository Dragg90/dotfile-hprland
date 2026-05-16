# Dotfiles Hyprland - Configuracion de keybind personal y script para cambio de layout

Configuración personal de **Hyprland** para CachyOS/Arch Linux, guardada como respaldo y base reutilizable para futuras instalaciones.

Este repositorio contiene la carpeta `hypr/`, que luego se copia a `~/.config/hypr` en una instalación nueva.

## Qué incluye

- Configuración principal de Hyprland.
- Keybinds personalizados y afinados para uso diario.
- Script para alternar layouts.
- Ajustes del layout `scrolling`.
- Keybind para volver flotante la ventana activa.

## Requisitos

Antes de instalar esta configuración, conviene tener:

- Hyprland ya instalado.
- `git` instalado.
- `jq` instalado (se usa en el script de toggle de layout).

En Arch/CachyOS:

```bash
sudo pacman -S git jq
```

## Instalación paso a paso

### 1. Clonar el repositorio

```bash
cd ~
git clone https://github.com/Dragg90/dotfile-hprland.git dots
```

Esto descargará el repositorio en `~/dots`.

### 2. Hacer copia de seguridad de la configuración actual

Si ya existe una configuración previa de Hyprland, es buena idea guardarla antes de reemplazarla.

```bash
cp -r ~/.config/hypr ~/.config/hypr.backup
```

Si `~/.config/hypr` no existe, este paso se puede omitir.

### 3. Crear la carpeta de configuración si no existe

```bash
mkdir -p ~/.config
```

### 4. Copiar la configuración del repositorio

```bash
cp -r ~/dots/hypr ~/.config/hypr
```

Esto dejará la configuración activa en la ruta que Hyprland usa por defecto.

### 5. Recargar Hyprland

```bash
hyprctl reload
```

También se puede cerrar sesión y volver a entrar, pero con `hyprctl reload` normalmente es suficiente.

## Qué hace esta configuración

### Layout toggle

Hay un script para alternar entre:

- `dwindle`
- `scrolling`

El cambio de layout muestra una notificación visual.

### Keybinds importantes

- `SUPER + L`: alterna entre `dwindle` y `scrolling`.
- `SUPER + T`: cambia la ventana activa entre tiled y floating.

Esto es útil para launchers de juegos, ventanas problemáticas o utilidades pequeñas.

## Actualizar el repositorio después de cambios

Si modificas tu configuración y quieres guardar los cambios en GitHub:

```bash
cd ~/dots
rm -rf ./hypr
cp -r ~/.config/hypr ./hypr
git add .
git commit -m "update: hypr config"
git push
```

## Restauración rápida

Si algo sale mal después de instalar o modificar la config:

```bash
rm -rf ~/.config/hypr
cp -r ~/.config/hypr.backup ~/.config/hypr
hyprctl reload
```

## Notas

- Esta configuración está pensada para CachyOS/Arch con Hyprland (tiene dank linux encima).
- Puede requerir paquetes adicionales si en el futuro se añaden barras, launchers o herramientas externas.
- La configuración está pensada como base personal y puede seguir evolucionando.
