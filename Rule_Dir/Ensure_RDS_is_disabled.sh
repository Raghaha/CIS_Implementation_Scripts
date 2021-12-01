  # Ensure RDS is disabled 
  echo 
  echo \*\*\*\* Ensure\ RDS\ is\ disabled 
  modprobe -n -v rds | grep "^install /bin/true$" || echo "install rds /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^rds\s" && rmmod rds 
