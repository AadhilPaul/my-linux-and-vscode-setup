#! /bin/sh

killall -q polybar

while pgrep u $UID -x polyar >/dev/null; do sleep 1; done

polybar top &

if [[ $(xarndr -q | grep 'HDMI connected')]]; then
  polybar top &
fi
      
