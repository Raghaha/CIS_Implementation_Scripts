  # Ensure SSH Protocol is set to 2 
  echo 
  echo \*\*\*\* Ensure\ SSH\ Protocol\ is\ set\ to\ 2 
  egrep -q "^(\s*)Protocol\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)Protocol\s+\S+(\s*#.*)?\s*$/\1Protocol 2\2/" /etc/ssh/sshd_config || echo "Protocol 2" >> /etc/ssh/sshd_config 
