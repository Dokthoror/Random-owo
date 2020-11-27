#!/bin/bash
#Author: Dokthoror
#Version: 1.0
#Required: none
#Use: ./random-wallpaper.sh
#Repo: https://github.com/Dokthoror/Random-owo


EYES=('o' 'O' 'è é' 'é è' '°' 'V' 'T' 'u' 'U' 'o O' 'O o' 'w' 'W')  # List of eyes available, there can be one eye or two
MOUTHES=('w' '_' '>' '<' 'ω' 'u' '-' '~')                           # List of mouthes available

eyes_number=${#EYES[@]}         # Number of element in EYES -1
mouthes_number=${#MOUTHES[@]}   # Number of element in MOUTHES -1


selected_eyes=''    # Will contain the eyes
selected_mouth=''   # Will contain the mouth

while [[ $selected_eyes == $selected_mouth ]]   # First loop is true because '' == '' returns true
do
    eyes_num=$((RANDOM % eyes_number))      # Picks random eyes number
    mouth_num=$((RANDOM % mouthes_number))  # Picks random mouth number

    selected_eyes=${EYES[eyes_num]}         # Picks the eyes_num element of EYES
    selected_mouth=${MOUTHES[mouth_num]}    # Picks the mouth_num element of MOUTH
done

if [[ ${#selected_eyes} == 1 ]]                             # Tests if the selected_eyes has to be identical
then
    owo="$selected_eyes$selected_mouth$selected_eyes"       # Puts two identical eyes in owo
else
    owo=$(echo $selected_eyes | tr ' ' "$selected_mouth")   # Take both eyes of selected_eyes and puts mouth in the blank field
fi

echo $owo   # Print the fabulous random owo


exit 0