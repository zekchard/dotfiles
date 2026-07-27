#!/usr/bin/env sh
echo $(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
