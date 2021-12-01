  # Ensure message of the day is configured properly 
  echo 
  echo \*\*\*\* Ensure\ message\ of\ the\ day\ is\ configured\ properly 
  sed -ri 's/(\\v|\\r|\\m|\\s)//g' /etc/motd 
