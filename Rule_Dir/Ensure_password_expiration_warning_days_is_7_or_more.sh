  # Ensure password expiration warning days is 7 or more 
  echo 
  echo \*\*\*\* Ensure\ password\ expiration\ warning\ days\ is\ 7\ or\ more 
  egrep -q "^(\s*)PASS_WARN_AGE\s+\S+(\s*#.*)?\s*$" /etc/login.defs && sed -ri "s/^(\s*)PASS_WARN_AGE\s+\S+(\s*#.*)?\s*$/\PASS_WARN_AGE 7\2/" /etc/login.defs || echo "PASS_WARN_AGE 7" >> /etc/login.defs 
  getent passwd | cut -f1 -d ":" | xargs -n1 chage --warndays 7 
