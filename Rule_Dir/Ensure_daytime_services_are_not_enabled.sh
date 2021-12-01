  # Ensure daytime services are not enabled 
  echo 
  echo \*\*\*\* Ensure\ daytime\ services\ are\ not\ enabled 
  chkconfig daytime off 
  echo /etc/inetd.conf and /etc/inetd.d/* unmodified 
