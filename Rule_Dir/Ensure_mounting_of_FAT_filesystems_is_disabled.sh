  # Ensure mounting of FAT filesystems is disabled 
  echo 
  echo \*\*\*\* Ensure\ mounting\ of\ FAT\ filesystems\ is\ disabled 
  modprobe -n -v vfat | grep "^install /bin/true$" || echo "install vfat /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^vfat\s" && rmmod vfat 
