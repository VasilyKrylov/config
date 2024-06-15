#!/bin/sh

exe() { echo "\$ $@" ; "$@" ; }

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#bdae93}"
else
  if [ $(echo info | bluetoothctl | grep '(null)' | wc -l) -eq 1 ]
  then 
    echo ""
  fi
  echo "%{F#2193ff}"
fi
