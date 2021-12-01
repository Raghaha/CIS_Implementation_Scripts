  # Ensure LDAP client is not installed 
  echo 
  echo \*\*\*\* Ensure\ LDAP\ client\ is\ not\ installed 
  rpm -q openldap-clients && yum -y remove openldap-clients 
