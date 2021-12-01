  # Ensure only approved ciphers are used 
  echo 
  echo \*\*\*\* Ensure\ only\ approved\ ciphers\ are\ used 
  egrep -q "^(\s*)Ciphers\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)Ciphers\s+\S+(\s*#.*)?\s*$/\Ciphers aes256-ctr,aes192-ctr,aes128-ctr\2/" /etc/ssh/sshd_config || echo "Ciphers aes256-ctr,aes192-ctr,aes128-ctr" >> /etc/ssh/sshd_config 
