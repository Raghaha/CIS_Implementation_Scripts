  # Ensure core dumps are restricted 
  echo 
  echo \*\*\*\* Ensure\ core\ dumps\ are\ restricted 
  egrep -q "^(\s*)\*\s+hard\s+core\s+\S+(\s*#.*)?\s*$" /etc/security/limits.conf && sed -ri "s/^(\s*)\*\s+hard\s+core\s+\S+(\s*#.*)?\s*$/\1* hard core 0\2/" /etc/security/limits.conf || echo "* hard core 0" >> /etc/security/limits.conf 
  egrep -q "^(\s*)fs.suid_dumpable\s*=\s*\S+(\s*#.*)?\s*$" /etc/sysctl.conf && sed -ri "s/^(\s*)fs.suid_dumpable\s*=\s*\S+(\s*#.*)?\s*$/\1fs.suid_dumpable = 0\2/" /etc/sysctl.conf || echo "fs.suid_dumpable = 0" >> /etc/sysctl.conf 
