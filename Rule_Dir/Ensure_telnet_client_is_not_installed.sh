  # Ensure telnet client is not installed 
  echo 
  echo \*\*\*\* Ensure\ telnet\ client\ is\ not\ installed 
  rpm -q telnet && yum -y remove telnet 
