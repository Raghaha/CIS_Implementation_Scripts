  # Ensure prelink is disabled 
  echo 
  echo \*\*\*\* Ensure\ prelink\ is\ disabled 
  rpm -q prelink && yum -y remove prelink 
