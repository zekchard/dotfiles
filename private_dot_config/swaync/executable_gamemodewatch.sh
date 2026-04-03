#!/usr/bin/env sh
if [ "$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')" = 1 ] ; then
echo true
else
echo false
fi
