#!/bin/bash
#variables
vm=mawa
input=$1
if [ "$1" == "" ]; then
read -p ">" input
fi
#codigo
#start
if [ "$input" == "-h" ]; then
echo -e  $0 can use: "\n" start / save / stop
fi
if [ "$input" == "start" ]; then
        vboxmanage startvm $vm
fi
#save state
if [ "$input" == "save" ]; then
        vboxmanage controlvm $vm savestate
fi
# poweroff
#output del comando mola
if [ "$input" == "stop" ]; then
        vboxmanage controlvm $vm poweroff
fi
