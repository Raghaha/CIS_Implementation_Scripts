#!/bin/bash
if [ "$PROFILE" = "Level 1 - Server" ]; then 
echo \*\*\*\* Executing Level 1 - Server profile remediation 
	while read -r line; do
		if [ -n "$(echo "$line" | grep "TURNON")" ];then
			./Rule_Dir/${line}
		fi
	done < rule_switch.conf
fi
