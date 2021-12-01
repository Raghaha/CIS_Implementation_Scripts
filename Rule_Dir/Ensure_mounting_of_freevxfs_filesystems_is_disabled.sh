  # Ensure mounting of freevxfs filesystems is disabled 
  echo 
  echo \*\*\*\* Ensure\ mounting\ of\ freevxfs\ filesystems\ is\ disabled 
  modprobe -n -v freevxfs | grep "^install /bin/true$" || echo "install freevxfs /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^freevxfs\s" && rmmod freevxfs 
