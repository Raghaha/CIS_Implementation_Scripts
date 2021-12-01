#!/bin/bash 

if [ "$PROFILE" = "Level 1 - Server" ];then
	./CIS_Level_1_Server.sh
elif [ "$PROFILE" = "Level 1 - Server" ];then
	./CIS_Level_1_Server.sh
	./CIS_Level_2_Server.sh
elif [ "$PROFILE" = "Level 1 - Server" ];then
	./CIS_Level_1_Workstation.sh
elif [ "$PROFILE" = "Level 1 - Server" ];then
	./CIS_Level_1_Workstation.sh
	./CIS_Level_2_Workstation.sh
fi