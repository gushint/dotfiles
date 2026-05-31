#!/bin/bash

options="Shutdown\nReboot\nSuspend\nHibernate\nLock\nLogout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu" \
    -theme-str 'window {width: 25%; border-radius: 10px;}' \
    -theme-str 'listview {lines: 6;}' \
    -theme-str 'element-text {font: "JetBrains Mono Nerd Font 12";}')

case $chosen in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Suspend")
        systemctl suspend
        ;;
    "Hibernate")
        systemctl hibernate
        ;;
    "Lock")
        hyprlock
        ;;
    "Logout")
        hyprctl dispatch exit
        ;;
esac
