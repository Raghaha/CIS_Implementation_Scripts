  # Ensure SSH HostbasedAuthentication is disabled 
  echo 
  echo \*\*\*\* Ensure\ SSH\ HostbasedAuthentication\ is\ disabled 
  egrep -q "^(\s*)HostbasedAuthentication\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)HostbasedAuthentication\s+\S+(\s*#.*)?\s*$/\1HostbasedAuthentication no\2/" /etc/ssh/sshd_config || echo "HostbasedAuthentication no" >> /etc/ssh/sshd_config 
