  # Ensure iptables is installed 
  echo 
  echo \*\*\*\* Ensure\ iptables\ is\ installed 
  rpm -q iptables || yum -y install iptables 
