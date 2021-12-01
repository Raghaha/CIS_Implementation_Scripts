  # Ensure time synchronization is in use 
  echo 
  echo \*\*\*\* Ensure\ time\ synchronization\ is\ in\ use 
  rpm -q ntp || rpm -q chrony || yum -y install chrony 
