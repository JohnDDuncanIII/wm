#!/bin/sh

## Loading the global settings for wmfs
source $HOME/.config/wmfs/global.conf


mem1=$(top -l 1 | awk '/PhysMem/ {print "Used: " $8}')
mem2=$(top -l 1 | awk '/PhysMem/ {print " Free: " $10}')
cpuuser=$(top -l 1| awk '/CPU usage/ {print $3}')
cpusys=$(top -l 1| awk '/CPU usage/ {print $5}')
cpuidle=$(top -l 1| awk '/CPU usage/ {print $7}')
mpd=$(mpc current)
##DATE
#time=$(date +"%I:%M %p")
#dayofweek=$(date +"%A")
#month=$(date +"%B")
#day=$(date +"%d")
#year=$(date +"%Y")
##END DATE
#uptime=$(uptime | awk '{sub(/[0-9]|user\,|users\,|load/, "", $6); sub(/mins,|min,/, "min", $6); sub(/user\,|users\,/, "", $5); sub(",", "min", $5); sub(":", "h ", $5); sub(/[0-9]/, "", $4); sub(/day,/, " day ", $4); sub(/days,/, " days ", $4); sub(/mins,|min,/, "min", $4); sub("hrs,", "h", $4); sub(":", "h ", $3); sub(",", "min", $3); print "Uptime: " $3$4$5$6}')
#airportrate=$(airport -I | awk '/lastTxRate/ {print $2}')
##BATTERY
#asbreg=`ioreg -rc "AppleSmartBattery"`
#maxcap=`echo "${asbreg}" | awk '/MaxCapacity/{print $3}'`;
#curcap=`echo "${asbreg}" | awk '/CurrentCapacity/{print $3}'`;
#prcnt=`echo "scale=2; 100*$curcap/$maxcap" | bc`;

#battery=$(printf "%1.0f%%" ${prcnt};)
##END BATTERY
#hostname=$(scutil --get ComputerName;)
#OSversion=$(sw_vers | awk -F':\t' '{print $2}' | paste -d ' ' - - - ;)
#amountofram=$(sysctl -n hw.memsize | awk '{print $0/1073741824"gb RAM"}';)
#cputype=$(sysctl -n machdep.cpu.brand_string;)
#diskspace=$(df -hl | grep 'disk' | awk '{print $4 " free " "("$2")"}' | sed s/Gi/gb/g)
#res1=$(system_profiler | awk '/Resolution:/ {print $2}')
#res2=$(system_profiler | awk '/Resolution:/ {print $4}')
#gpu=$(system_profiler | awk '/Chipset/ {print $3,$4,$5}')
#altdate=`date +"%A, %B %d %Y %I:%M %p"`

#OLD MPD = #1CA1DB
#OLD DATE = #A9C938

#\\s[1108;11;#BFBFBF;$(date +"%A, %B %d %Y %I:%M %p")]\\
wmfs -s "\\s[283;11;#BFBFBF;Playing: $mpd]\\ "
exit 0 