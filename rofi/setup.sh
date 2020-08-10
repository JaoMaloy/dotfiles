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
        ln -rsf scripts/bitwardenmenu $bin_dir
        ln -rsf scripts/bluetoothmenu $bin_dir
        ln -rsf scripts/calculatormenu $bin_dir
        ln -rsf scripts/networkmenu $bin_dir
        ln -rsf scripts/nmvpnmenu $bin_dir
        ln -rsf scripts/powermenu $bin_dir
        ln -rsf scripts/xrandrmenu $bin_dir
    fi
else
    ln -rs config.rasi $rofi_dir
    ln -rs themes/ $rofi_dir
    ln -rs scripts/bitwardenmenu $bin_dir
    ln -rs scripts/bluetoothmenu $bin_dir
    ln -rs scripts/calculatormenu $bin_dir
    ln -rs scripts/networkmenu $bin_dir
    ln -rs scripts/nmvpnmenu $bin_dir
    ln -rs scripts/powermenu $bin_dir
    ln -rs scripts/xrandrmenu $bin_dir
fi

