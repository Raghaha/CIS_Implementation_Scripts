  # Ensure mounting of udf filesystems is disabled 
  echo 
  echo \*\*\*\* Ensure\ mounting\ of\ udf\ filesystems\ is\ disabled 
  modprobe -n -v udf | grep "^install /bin/true$" || echo "install udf /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^udf\s" && rmmod udf 
