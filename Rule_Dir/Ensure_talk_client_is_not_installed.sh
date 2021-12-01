  # Ensure talk client is not installed 
  echo 
  echo \*\*\*\* Ensure\ talk\ client\ is\ not\ installed 
  rpm -q talk && yum -y remove talk 
