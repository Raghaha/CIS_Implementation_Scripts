  # Ensure mounting of jffs2 filesystems is disabled 
  echo 
  echo \*\*\*\* Ensure\ mounting\ of\ jffs2\ filesystems\ is\ disabled 
  modprobe -n -v jffs2 | grep "^install /bin/true$" || echo "install jffs2 /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^jffs2\s" && rmmod jffs2 
