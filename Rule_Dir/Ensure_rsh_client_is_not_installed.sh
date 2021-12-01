  # Ensure rsh client is not installed 
  echo 
  echo \*\*\*\* Ensure\ rsh\ client\ is\ not\ installed 
  rpm -q rsh && yum -y remove rsh 
