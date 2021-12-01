  # Ensure tftp server is not enabled 
  echo 
  echo \*\*\*\* Ensure\ tftp\ server\ is\ not\ enabled 
  chkconfig tftp off 
  echo /etc/inetd.conf and /etc/inetd.d/* unmodified 
  systemctl disable tftp.socket.service 
