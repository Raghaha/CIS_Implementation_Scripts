  # Ensure permissions on /etc/hosts.allow are configured 
  echo 
  echo \*\*\*\* Ensure\ permissions\ on\ /etc/hosts.allow\ are\ configured 
  chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/hosts.allow