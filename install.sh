#!/usr/bin/env bash

THEMESDIR=/usr/share/themes
CONFIGDIR="$HOME"/.config/gtk-3.0

install_gtk() {
    if [[ `ls ~/.config/gtk-3.0` ]]; then
        echo -e "\e[0;32m+---Backup your GTK Conf---+\e[0m\n"
        mv ~/.config/gtk-3.0  ~/.config/GTK.BAK
        mkdir ~/.config/gtk-3.0

        echo -e "\e[0;32m Copy config for .config\e[0m\n"
        cp -r `pwd`/files/config/*       "$CONFIGDIR"

        echo -e "\e[0;32m Copy .gtkrc-2.0 for HOME\e[0m\n"
        cp -r `pwd`/files/.gtkrc-2.0     "$HOME"

        echo -e "\e[0;32m Copy Themes for /usr/share/themes\e[0m"
        sudo cp -r `pwd`/files/themes/*  "$THEMESDIR"

        echo -e "\n\e[0;32m+---------Finished!--------+\e[0m"
    else
        echo -e "\e[0;32m+---Create GTK---+\e[0m\n"
        mkdir ~/.config/gtk-3.0

        echo -e "\e[0;32m Copy config for .config\e[0m\n"
        cp -r `pwd`/files/config/*       "$CONFIGDIR"

        echo -e "\e[0;32m Copy .gtkrc-2.0 for HOME\e[0m\n"
        cp -r `pwd`/files/.gtkrc-2.0     "$HOME"

        echo -e "\e[0;32m Copy Themes for /usr/share/themes\e[0m"
        sudo cp -r `pwd`/files/themes/*  "$THEMESDIR"

        echo -e "\n\e[0;32m+----Finished!---+\e[0m"
    fi
}
install_gtk
