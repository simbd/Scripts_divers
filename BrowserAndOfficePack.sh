#!/bin/bash
# Ce script bash permet d'installer sur une base 20.04LTS (Ubuntu 20.04, Linux Mint 20, Kubuntu 20.04 etc...) une multitude de navigateur web différents ainsi que différentes suite bureautique


## code couleur
noir='\e[1;30m' #noir
gris='\e[1;37m' #gris
neutre='\e[0;m' #neutre 
rouge='\e[1;31m' #rouge
bleu='\e[1;34m' #bleu
cyan='\e[1;36m' #cyan
violet='\e[1;35m' #violet
jaune='\e[1;33m' #jaune
vert='\e[1;32m' #vert

echo "==========================================================================================================="
echo "Choix du/des navigateurs"
echo "==========================================================================================================="
echo "[1] Beaker Browser" 
echo "[2] Brave"
echo "[3] Chromium [Paquet SNAP]"
echo "[4] Chromium Beta n+1 [Paquet DEB via un PPA]"
echo "[5] Chromium Dev [Paquet DEB via un PPA]"
echo "[6] Dillo"
echo "[7] Eolie"
echo "[8] Falkon"
echo "[9] Firefox Stable [Paquet DEB dépot officiel]"
echo "[10] Firefox Stable [Paquet SNAP]"
echo "[11] Firefox Stable [Paquet FLATPAK]"
echo "[12] Firefox Beta n+1 [Paquet DEB via un PPA]"
echo "[13] Firefox Developer Edition [Archive depuis Mozilla]"
echo "[14] Firefox Developer Edition [Paquet FLATPAK]"
echo "[15] Firefox ESR [Paquet DEB via un PPA]"
echo "[16] Firefox Nightly n+2 [Paquet DEB via un PPA]"
echo "[17] Gnome Web (Epiphany)"
echo "[18] Google Chrome Stable [Paquet DEB dépot externe]"
echo "[19] Google Chrome Beta [Paquet DEB dépot externe]"
echo "[20] Google Chrome Canary [Paquet DEB dépot externe]"
echo "[21] Lynx"
echo "[22] Midori"
echo "[23] Min"
echo "[24] Opera Stable"
echo "[25] Opera Beta"
echo "[26] PaleMoon"
echo "[27] SRWare Iron"
echo "[28] Tor Browser"
echo "[29] Vivaldi Stable"
echo "[30] Vivaldi Dev"
echo "[31] WaterFox"

echo "==========================================================================================================="
read -p "Répondre par le ou les chiffres correspondants séparés d'un espace (exemple : 9 13 28 29) : " choixNavigateur
clear

echo "==========================================================================================================="
echo "Choix de la/les suite(s) bureautique(s)"
echo "==========================================================================================================="
echo "[1] Calligra Suite (Suite bureautique plutôt pour KDE)" 
echo "[2] FreeOffice (SoftMaker)"
echo "[3] Gnome Office"
echo "[4] LibreOffice 6.4 [Paquet DEB dépot officiel]"
echo "[5] LibreOffice Backporté [Paquet DEB via un PPA]"
echo "[6] LibreOffice [Paquet FLATPAK]"
echo "[7] OnlyOffice"
echo "[8] OpenOffice [Paquet DEB depuis site officiel]"
echo "[9] WPS Office"

echo "==========================================================================================================="
read -p "Répondre par le ou les chiffres correspondants séparés d'un espace (exemple : 1 3 4) : " choixBureautique
clear
