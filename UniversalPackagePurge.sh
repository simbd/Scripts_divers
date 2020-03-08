#!/bin/bash
# Purge Snap (aucun snap ne doit être ouvert)
set -eu

LANG=en_US.UTF-8 snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done
    
# Purge flatpak   
flatpak uninstall --unused
