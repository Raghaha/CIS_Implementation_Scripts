  # Ensure minimum days between password changes is 7 or more 
  echo 
  echo \*\*\*\* Ensure\ minimum\ days\ between\ password\ changes\ is\ 7\ or\ more 
  egrep -q "^(\s*)PASS_MIN_DAYS\s+\S+(\s*#.*)?\s*$" /etc/login.defs && sed -ri "s/^(\s*)PASS_MIN_DAYS\s+\S+(\s*#.*)?\s*$/\PASS_MIN_DAYS 7\2/" /etc/login.defs || echo "PASS_MIN_DAYS 7" >> /etc/login.defs 
  getent passwd | cut -f1 -d ":" | xargs -n1 chage --mindays 7 
