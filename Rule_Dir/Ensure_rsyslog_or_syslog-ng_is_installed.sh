  # Ensure rsyslog or syslog-ng is installed 
  echo 
  echo \*\*\*\* Ensure\ rsyslog\ or\ syslog-ng\ is\ installed 
  rpm -q rsyslog || rpm -q syslog-ng || yum -y install rsyslog 
