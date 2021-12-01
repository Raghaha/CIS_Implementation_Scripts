  # Ensure chargen services are not enabled 
  echo 
  echo \*\*\*\* Ensure\ chargen\ services\ are\ not\ enabled 
  chkconfig chargen off 
  echo /etc/inetd.conf and /etc/inetd.d/* unmodified 
