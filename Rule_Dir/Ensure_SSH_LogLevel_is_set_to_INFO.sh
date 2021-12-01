  # Ensure SSH LogLevel is set to INFO 
  echo 
  echo \*\*\*\* Ensure\ SSH\ LogLevel\ is\ set\ to\ INFO 
  egrep -q "^(\s*)LogLevel\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)LogLevel\s+\S+(\s*#.*)?\s*$/\1LogLevel INFO\2/" /etc/ssh/sshd_config || echo "LogLevel INFO" >> /etc/ssh/sshd_config 
