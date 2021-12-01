  # Ensure mounting of hfsplus filesystems is disabled 
  echo 
  echo \*\*\*\* Ensure\ mounting\ of\ hfsplus\ filesystems\ is\ disabled 
  modprobe -n -v hfsplus | grep "^install /bin/true$" || echo "install hfsplus /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^hfsplus\s" && rmmod hfsplus 
