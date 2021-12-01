  # Ensure permissions on all logfiles are configured 
  echo 
  echo \*\*\*\* Ensure\ permissions\ on\ all\ logfiles\ are\ configured 
  chmod -R g-w-x,o-r-w-x /var/log/.* 
