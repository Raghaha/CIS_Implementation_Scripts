  # Ensure mounting of squashfs filesystems is disabled 
  echo 
  echo \*\*\*\* Ensure\ mounting\ of\ squashfs\ filesystems\ is\ disabled 
  modprobe -n -v squashfs | grep "^install /bin/true$" || echo "install squashfs /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^squashfs\s" && rmmod squashfs 
