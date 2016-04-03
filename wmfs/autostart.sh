#!/bin/sh

#First of all, we have to assure that this script will be run only once
#lock="/tmp/wmfs-config.$$" 
#lockpattern=/tmp/wmfs-config.*

#if [ -f $lockpattern ]; then
#    exit 0
#fi

# Loading the global settings for wmfs
##source $HOME/.config/wmfs/global.conf

# Launching the things that status.sh need
##echo "" > $FICHIER

##if [ -z $(pidof conky) ]; then
  ##  rm $FICHIER
   ## $CONKYCMD > $FICHIER &
##fi

#if [ -z $(pidof xcompmgr) ]; then
#    xcompmgr -CcFf &
#fi

#if [ -z $(pidof mpd) ]; then
#    mpd &
#fi

# Loading a random wallpaper
##$HOME/bin/random-wallpaper -q &

# Launching the "default app's" 
##list="" 

##for i in $(echo $list); do
  ##  if [ -z $(pidof $i) ]; then
        # the app isn't launched yet
    ##    urxvt -name $i -e $i &
    ##fi
##done
