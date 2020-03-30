#!/bin/bash
## Dernière version de l'extension dashtodock depuis le git (redémarrer la session pour que ça soit pris en compte dans Gnome Tweaks
## IMPORTANT => Ne pas lancer le script directement avec sudo

# Pré-requis
sudo apt install -y make gettext git

git clone https://github.com/micheleg/dash-to-dock.git
cd dash-to-dock/
make
make install
cd ..

# Nettoyage
sudo rm -r dash-to-dock
