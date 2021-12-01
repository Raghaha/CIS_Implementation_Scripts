  # Ensure SSH warning banner is configured 
  echo 
  echo \*\*\*\* Ensure\ SSH\ warning\ banner\ is\ configured 
  egrep -q "^(\s*)Banner\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)Banner\s+\S+(\s*#.*)?\s*$/\1Banner \/etc\/issue.net\2/" /etc/ssh/sshd_config || echo "Banner /etc/issue.net" >> /etc/ssh/sshd_config 
