  # Ensure address space layout randomization (ASLR) is enabled 
  echo 
  echo \*\*\*\* Ensure\ address\ space\ layout\ randomization\ \(ASLR\)\ is\ enabled 
  egrep -q "^(\s*)kernel.randomize_va_space\s*=\s*\S+(\s*#.*)?\s*$" /etc/sysctl.conf && sed -ri "s/^(\s*)kernel.randomize_va_space\s*=\s*\S+(\s*#.*)?\s*$/\1kernel.randomize_va_space = 2\2/" /etc/sysctl.conf || echo "kernel.randomize_va_space = 2" >> /etc/sysctl.conf 
