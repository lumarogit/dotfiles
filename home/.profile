#!/bin/sh

# Interactive mode only
case $- in
       	*i*) ;;
    	*) return;;
esac

# Export all vars
set -o allexport

# General env vars
XAUTHORITY="$HOME/.Xauthority"
PATH="$HOME/.local/bin:/sbin:/usr/sbin:$PATH"
LANG="es_ES.UTF-8"
PAGER="less"                             
EDITOR="vim"
TERM="rxvt-unicode-256color"             
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
NNN_OPTS="dDeU"		                 # NNN options
NNN_BMS="g:~/Git"                        # Bookmarks
NNN_PLUG="n:nuke;p:preview-tabbed"       # Plugins
NNN_USE_EDITOR=1                         # Use $EDITOR on open text files
NNN_COLORS="7777"                        # Colors for tabs
NNN_TRASH=2                              # Move files to trash
NNN_READER="zathura"                     # Documents reader
NNN_FIFO=/tmp/nnn.fifo                   # Preview pluggin
NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"

# DBUS session active
#[ -z "$DBUS_SESSION_BUS_ADDRESS" ] && eval $(dbus-launch --sh-syntax --exit-with-session)

# XDG_RUNTIME_DIR 
#unset XDG_RUNTIME_DIR
#XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)

# Autologin en TTY1
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec startx
fi
