#! /bin/bash
if [[ $# < 1 ]];
then
	echo "$0 <bind or unbind>"
	exit
fi

if [[ $1 == "bind" ]];
then
	sudo ndctl create-namespace -m dax -e namespace0.0 -f
#	sudo ndctl create-namespace -m dax -e namespace1.0 -f
#	sudo ndctl create-namespace -m dax -e namespace2.0 -f
#	sudo ndctl create-namespace -m dax -e namespace3.0 -f
#	sudo ndctl create-namespace -m dax -e namespace4.0 -f

	sudo chmod 777 /dev/dax0.0 
elif [[ $1 == "unbind" ]];
then
	sudo ndctl create-namespace -m memory -e namespace0.0 -f
	#sudo ndctl create-namespace -m memory -e namespace1.0 -f
	#sudo ndctl create-namespace -m memory -e namespace2.0 -f
	#sudo ndctl create-namespace -m memory -e namespace3.0 -f
	#sudo ndctl create-namespace -m memory -e namespace4.0 -f
else
	echo "$0 <bind or unbind>"
fi
