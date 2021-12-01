  # Ensure TCP Wrappers is installed 
  echo 
  echo \*\*\*\* Ensure\ TCP\ Wrappers\ is\ installed 
  rpm -q tcp_wrappers || yum -y install tcp_wrappers 
  rpm -q tcp_wrappers-libs || yum -y install tcp_wrappers-libs 
