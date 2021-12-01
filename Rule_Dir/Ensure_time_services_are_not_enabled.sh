  # Ensure time services are not enabled 
  echo 
  echo \*\*\*\* Ensure\ time\ services\ are\ not\ enabled 
  chkconfig time off 
  echo /etc/inetd.conf and /etc/inetd.d/* unmodified 
