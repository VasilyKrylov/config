#!/usr/bin/bash

#if [[ $(amixer get Capture | grep "Mono: Capture" | awk '{print $5}') == "[off]" ]]
if [[ $(amixer get Capture | grep "Front Left:" | awk '{print $6}') == "[off]" ]] || [[ $(amixer get Capture | grep "Mono: Capture" | awk '{print $5}') == "[off]" ]]
then
  echo "" # Muted Icon (Install Some icon pack like feather, nerd-fonts)
else
  echo "" # Unmuted Icon (Install Some icon pack like feather, nerd-fonts)
fi
