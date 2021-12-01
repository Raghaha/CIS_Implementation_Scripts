  # Ensure NIS Client is not installed 
  echo 
  echo \*\*\*\* Ensure\ NIS\ Client\ is\ not\ installed 
  rpm -q ypbind && yum -y remove ypbind 
