  # Ensure SSH MaxAuthTries is set to 4 or less 
  echo 
  echo \*\*\*\* Ensure\ SSH\ MaxAuthTries\ is\ set\ to\ 4\ or\ less 
  egrep -q "^(\s*)MaxAuthTries\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)MaxAuthTries\s+\S+(\s*#.*)?\s*$/\1MaxAuthTries 4\2/" /etc/ssh/sshd_config || echo "MaxAuthTries 4" >> /etc/ssh/sshd_config 
