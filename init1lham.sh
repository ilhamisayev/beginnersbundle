#!/bin/bash
if (( $EUID != 0 )); then
#root icazesi ucundu yuxaridaki
    echo "try again with the magic word sudo:)"
    exit
fi 
#fi niye qoydum bilmirem amma onsuz islemirdi mentiqsizdi yene de scripti end etmelidi amma ishleyir
PS3='Please enter your choice: '
options=("GNOME LIN PP" "GNOME BG WALL" "GRUB WALL" "EXIT")
select opt in "${options[@]}"
#bunlar da optionlardi stackowerflow sagolsun
do
    case $opt in
        "GNOME LIN PP")
            echo "SCRIPT IS STARTING..."
            cmd=sudo bash 2.sh
            ;;
        "GNOME BG WALL")
            echo "SCRIPT IS STARTING..."
            ;;
        "GRUB WALL")
            echo "SCRIPT IS STARTING..."
            cmd=sudo ruby 1.rb
            ;;
        "EXIT")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
#optionlar ve commandlardi bos bos isler lol
