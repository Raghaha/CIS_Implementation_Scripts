  # Ensure at/cron is restricted to authorized users 
  echo 
  echo \*\*\*\* Ensure\ at/cron\ is\ restricted\ to\ authorized\ users 
  rm /etc/cron.deny 
  rm /etc/at.deny 
  touch /etc/cron.allow 
  touch /etc/at.allow 
  chmod g-r-w-x,o-r-w-x /etc/cron.allow 
  chmod g-r-w-x,o-r-w-x /etc/at.allow 