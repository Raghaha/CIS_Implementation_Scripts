  # Ensure discard services are not enabled 
  echo 
  echo \*\*\*\* Ensure\ discard\ services\ are\ not\ enabled 
  chkconfig discard off 
  echo /etc/inetd.conf and /etc/inetd.d/* unmodified 
