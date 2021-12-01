  # Ensure mounting of hfs filesystems is disabled 
  echo 
  echo \*\*\*\* Ensure\ mounting\ of\ hfs\ filesystems\ is\ disabled 
  modprobe -n -v hfs | grep "^install /bin/true$" || echo "install hfs /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^hfs\s" && rmmod hfs 
