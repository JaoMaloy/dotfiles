#!/bin/sh

bspwm_dir=$HOME/.config/bspwm
sxhkd_dir=$HOME/.config/sxhkd
compton_dir=$HOME/.config/compton
polybar_dir=$HOME/.config/polybar

[ -d $nvim_dir ] || mkdir $nvim_dir
[ -d $nvim_lua_dir ] || mkdir $nvim_lua_dir
[ -d $nvim_themes_dir ] || mkdir $nvim_themes_dir

isPackageInstalled() {
  pacman -Qi "$packageName" &> /dev/null
  echo $?
}

if [ $(isPackageInstalled 'compton') ]; then 
    # do things here
    pacman -Syu compton
fi


