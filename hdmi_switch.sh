#!/bin/bash
# Script crée par Simbd

#######################################
IN="DVI-I-1"       # écran interne (pc)
EXT="HDMI-1"       # écran externe (sortie hdmi)
#######################################

# prérequis : avoir la présence du répértoire/fichier suivant au départ : ~/.script/hdmi_off 

if [ -f ~/.script/hdmi_off ]
then
  #Activation HDMI
  xrandr --output $IN --off --output $EXT --auto
  pacmd set-card-profile 0 output:hdmi-stereo #audio hdmi activé
  pacmd set-card-profile 1 off   #audio pc désactivé
  mv ~/.script/hdmi_off ~/.script/hdmi_on
else
  #Désactivation HDMI
  xrandr --output $EXT --off --output $IN --auto
  pacmd set-card-profile 0 off
  pacmd set-card-profile 1 output:analog-stereo #audio pc activé (audio hdmi forcément désactivé)
  mv ~/.script/hdmi_on ~/.script/hdmi_off
fi
