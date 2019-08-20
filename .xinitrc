#(conky | while read LINE; do xsetroot -name "$LINE"; done) &

exec compton &
exec feh --randomize --bg-fill ~/Pictures/background &
exec i3


#exec dwm
#exec qtile
