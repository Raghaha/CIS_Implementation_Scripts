  # Ensure SSH X11 forwarding is disabled 
  echo 
  echo \*\*\*\* Ensure\ SSH\ X11\ forwarding\ is\ disabled 
  egrep -q "^(\s*)X11Forwarding\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)X11Forwarding\s+\S+(\s*#.*)?\s*$/\1X11Forwarding no\2/" /etc/ssh/sshd_config || echo "X11Forwarding no" >> /etc/ssh/sshd_config 
