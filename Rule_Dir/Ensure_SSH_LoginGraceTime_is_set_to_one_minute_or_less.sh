  # Ensure SSH LoginGraceTime is set to one minute or less 
  echo 
  echo \*\*\*\* Ensure\ SSH\ LoginGraceTime\ is\ set\ to\ one\ minute\ or\ less 
  egrep -q "^(\s*)LoginGraceTime\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)LoginGraceTime\s+\S+(\s*#.*)?\s*$/\1LoginGraceTime 60\2/" /etc/ssh/sshd_config || echo "LoginGraceTime 60" >> /etc/ssh/sshd_config 
