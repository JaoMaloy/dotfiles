#!/bin/sh

rofi_dir=$HOME/.config/rofi
rofi_conf_file=$HOME/.config/rofi/config.rasi
bin_dir=/usr/local/bin

[ -d $rofi_dir ] || mkdir $rofi_dir

if [[ -f $rofi_conf_file || -L $rofi_conf_file ]]; then
    read -p "config.rasi exists, override configuration?(y/n) " answer
    if [ "$answer" == "y" ]; then
        ln -rsf config.rasi $rofi_dir
        ln -rsf themes/ $rofi_dir
    fi
else
    ln -rs config.rasi $rofi_dir
    ln -rs themes/ $rofi_dir
fi

