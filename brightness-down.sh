brlevel=`xrandr --current --verbose | grep Brightness | awk '{print $2}'`
add=0.1
newbrlevel=`echo $brlevel $add | awk '{print $1 - $2}'`
if [ "$newbrlevel" = "-0.1" ] 
then
	newbrlevel=`echo 0.0`
fi
xrandr --output eDP-1 --brightness $newbrlevel
