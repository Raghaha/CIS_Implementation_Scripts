  # Ensure TIPC is disabled 
  echo 
  echo \*\*\*\* Ensure\ TIPC\ is\ disabled 
  modprobe -n -v tipc | grep "^install /bin/true$" || echo "install tipc /bin/true" >> /etc/modprobe.d/CIS.conf 
  lsmod | egrep "^tipc\s" && rmmod tipc 
