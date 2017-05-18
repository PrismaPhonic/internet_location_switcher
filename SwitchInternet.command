#!/bin/bash

wirelessLocation=`networksetup -getcurrentlocation`

if [ "$wirelessLocation" = "Downloading" ]; then
  echo 'events' | sudo -S networksetup -switchtolocation "Automatic"

else
  echo 'events' | sudo -S networksetup -switchtolocation "Downloading"
fi
