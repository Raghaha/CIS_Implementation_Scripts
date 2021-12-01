  # Ensure IPv6 redirects are not accepted 
  echo 
  echo \*\*\*\* Ensure\ IPv6\ redirects\ are\ not\ accepted 
  egrep -q "^(\s*)net.ipv6.conf.all.accept_redirects\s*=\s*\S+(\s*#.*)?\s*$" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv6.conf.all.accept_redirects\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv6.conf.all.accept_redirects = 0\2/" /etc/sysctl.conf || echo "net.ipv6.conf.all.accept_redirects = 0" >> /etc/sysctl.conf 
  egrep -q "^(\s*)net.ipv6.conf.default.accept_redirects\s*=\s*\S+(\s*#.*)?\s*$" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv6.conf.default.accept_redirects\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv6.conf.default.accept_redirects = 0\2/" /etc/sysctl.conf || echo "net.ipv6.conf.default.accept_redirects = 0" >> /etc/sysctl.conf 
