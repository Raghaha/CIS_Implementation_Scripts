  # Ensure chrony is configured 
  echo 
  echo \*\*\*\* Ensure\ chrony\ is\ configured 
  if rpm -q chrony >/dev/null; then 
    egrep -q "^(\s*)OPTIONS\s*=\s*\"(([^\"]+)?-u\s[^[:space:]\"]+([^\"]+)?|([^\"]+))\"(\s*#.*)?\s*$" /etc/sysconfig/chronyd && sed -ri '/^(\s*)OPTIONS\s*=\s*\"([^\"]*)\"(\s*#.*)?\s*$/ {/^(\s*)OPTIONS\s*=\s*\"[^\"]*-u\s+\S+[^\"]*\"(\s*#.*)?\s*$/! s/^(\s*)OPTIONS\s*=\s*\"([^\"]*)\"(\s*#.*)?\s*$/\1OPTIONS=\"\2 -u chrony\"\3/ }' /etc/sysconfig/chronyd && sed -ri "s/^(\s*)OPTIONS\s*=\s*\"([^\"]+\s+)?-u\s[^[:space:]\"]+(\s+[^\"]+)?\"(\s*#.*)?\s*$/\1OPTIONS=\"\2\-u chrony\3\"\4/" /etc/sysconfig/chronyd || echo "OPTIONS=\"-u chrony\"" >> /etc/sysconfig/chronyd 
    echo Ensure chrony is configured - server not configured. 
  fi 
