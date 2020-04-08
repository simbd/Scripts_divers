#!/bin/bash
## cf tuto pour le son => https://lehollandaisvolant.net/?d=2017/06/10/23/37/39-linux-changer-de-sortie-audio-en-un-clic

### pacmd list | grep "active profile"
#active profile: <output:hdmi-stereo>

### pacmd list | grep "active port" | grep "output"
#active port: <hdmi-output-0>

### pacmd list-sinks | grep "name:"
#name: <alsa_output.pci-0000_00_1f.3.hdmi-stereo>

#############
IN="eDP1"  # écran pc portable
EXT="DP1" # écran externe relié en HDMI
#############

# Switch affichage vers écran externe
xrandr --output $IN --off --output $EXT --auto

# Switch carte son vers écran externe
pacmd set-card-profile 0 off
pacmd set-card-profile 0 output:hdmi-stereo
pacmd set-sink-port alsa_output.pci-0000_00_1f.3.hdmi-stereo


## Pour rebasculer HDMI sur Off, il n'y a que l'affichage à faire (le son bascule auto)
# xrandr --output $EXT --off --output $IN --auto


exit
