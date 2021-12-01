  # Ensure password expiration is 90 days or less 
  echo 
  echo \*\*\*\* Ensure\ password\ expiration\ is\ 90\ days\ or\ less 
  egrep -q "^(\s*)PASS_MAX_DAYS\s+\S+(\s*#.*)?\s*$" /etc/login.defs && sed -ri "s/^(\s*)PASS_MAX_DAYS\s+\S+(\s*#.*)?\s*$/\PASS_MAX_DAYS 90\2/" /etc/login.defs || echo "PASS_MAX_DAYS 90" >> /etc/login.defs 
  getent passwd | cut -f1 -d ":" | xargs -n1 chage --maxdays 90 
