#!/bin/bash
#variables
vm=mawa
#codigo
#start
if [ "$1" == "-h" ]; then
echo -e  $0 can use: "\n" start / save / stop 
fi
if [ "$1" == "start" ]; then 
	vboxmanage startvm $vm
fi
#save state
if [ "$1" == "save" ]; then 
	vboxmanage controlvm $vm savestate
fi
# poweroff 
#output del comando mola
if [ "$1" == "stop" ]; then 
	vboxmanage controlvm $vm poweroff
fi
