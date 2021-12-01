  # Ensure permissions on /etc/hosts.deny are 644 
  echo 
  echo \*\*\*\* Ensure\ permissions\ on\ /etc/hosts.deny\ are\ 644 
  chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/hosts.deny 