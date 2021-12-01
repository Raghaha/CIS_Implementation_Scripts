  # Ensure syslog-ng service is enabled 
  echo 
  echo \*\*\*\* Ensure\ syslog-ng\ service\ is\ enabled 
  rpm -q syslog-ng && systemctl enable syslog-ng.service 
