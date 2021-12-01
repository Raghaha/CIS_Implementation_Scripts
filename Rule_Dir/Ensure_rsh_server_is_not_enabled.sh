  # Ensure rsh server is not enabled 
  echo 
  echo \*\*\*\* Ensure\ rsh\ server\ is\ not\ enabled 
  systemctl disable rsh.socket.service 
  systemctl disable rlogin.socket.service 
  systemctl disable rexec.socket.service 
