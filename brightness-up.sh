brlevel=`xrandr --current --verbose | grep Brightness | awk '{print $2}'`
add=0.1
newbrlevel=`echo $brlevel $add | awk '{print $1 + $2}'`
if [ "$newbrlevel" = "1.1" ] 
then
	newbrlevel=`echo 1.0`
fi
xrandr --output eDP-1 --brightness $newbrlevel
