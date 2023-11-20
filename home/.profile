#!/bin/sh

# Interactive mode only
case $- in
       	*i*) ;;
    	*) return;;
esac

# Export all vars
set -o allexport

# Defaults
#XAUTHORITY="$HOME/.Xauthority"
PATH="$HOME/.local/bin:/sbin:/usr/sbin:$PATH"
LANG="es_ES.UTF-8"
PAGER="less"                             
EDITOR="vim"
TERM="foot"             
VISUAL="$EDITOR"
BROWSER="firefox" 
READER="zathura"
IMAGEVIEWER="nsxiv"
FILE="nnn"
#XZ_DEFAULTS="-T0"
#APULSE_CAPTURE_DEVICE="plughw:0,0"
#APULSE_PLAYBACK_DEVICE="plughw:0,0"     
#ENV="$HOME/.kshrc"

# NNN env vars
NNN_OPENER="xdg-open"
NNN_FALLBACK_OPENER="xdg-open"           # File opener
NNN_OPTS="deU"		                 # NNN options
NNN_BMS="g:~/Git"                        # Bookmarks
NNN_PLUG="n:nuke;p:preview-tabbed"       # Plugins
NNN_USE_EDITOR=1                         # Use $EDITOR on open text files
NNN_COLORS="7777"                        # Colors for tabs
NNN_TRASH=2                              # Move files to trash
NNN_READER="zathura"                     # Documents reader
NNN_FIFO=/tmp/nnn.fifo                   # Preview pluggin

# XDG_RUNTIME_DIR 
unset XDG_RUNTIME_DIR
XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)

# Autologin en TTY1
[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session sway
