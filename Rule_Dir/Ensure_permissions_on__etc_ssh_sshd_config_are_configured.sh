  # Ensure permissions on /etc/ssh/sshd_config are configured 
  echo 
  echo \*\*\*\* Ensure\ permissions\ on\ /etc/ssh/sshd_config\ are\ configured 
  chmod g-r-w-x,o-r-w-x /etc/ssh/sshd_config 