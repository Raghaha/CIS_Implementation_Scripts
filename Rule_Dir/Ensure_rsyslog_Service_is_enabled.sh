  # Ensure rsyslog Service is enabled 
  echo 
  echo \*\*\*\* Ensure\ rsyslog\ Service\ is\ enabled 
  rpm -q rsyslog && systemctl enable rsyslog.service 
