  # Ensure secure ICMP redirects are not accepted 
  echo 
  echo \*\*\*\* Ensure\ secure\ ICMP\ redirects\ are\ not\ accepted 
  egrep -q "^(\s*)net.ipv4.conf.all.secure_redirects\s*=\s*\S+(\s*#.*)?\s*$" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv4.conf.all.secure_redirects\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv4.conf.all.secure_redirects = 1\2/" /etc/sysctl.conf || echo "net.ipv4.conf.all.secure_redirects = 1" >> /etc/sysctl.conf 
  egrep -q "^(\s*)net.ipv4.conf.default.secure_redirects\s*=\s*\S+(\s*#.*)?\s*$" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv4.conf.default.secure_redirects\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv4.conf.default.secure_redirects = 1\2/" /etc/sysctl.conf || echo "net.ipv4.conf.default.secure_redirects = 1" >> /etc/sysctl.conf 
